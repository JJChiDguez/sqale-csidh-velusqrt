.intel_syntax noprefix

.section .rodata

.set pbits,1020
.set pbytes,128
.set plimbs,16


.global p
p:
.quad 0xDBE34C5460E36453,0xA1D81EEBBC3D344D,0x514BA72CB8D89FD3,0xC2CAB6A0E287F1BD 
.quad 0x642ACA4D5A313709,0x6B317C5431541F40,0xB97C56D1DE81EDE5,0x978DBEED90A2B58 
.quad 0x7611AD4F90441C80,0xF811D9C419EC8329,0x4D6C594A8AD82D2D,0xF06DE2471CF9386E 
.quad 0x683CF25DB31AD5B,0x216C22BC86F21A08,0xD89DEC879007EBD7,0xECE55ED427012A9 



.global inv_min_p_mod_r
inv_min_p_mod_r:
.quad 0xD2C2C24160038025,0x900965ED4020071F,0x393AC935721044EA,0x9CC0EFF5AA616B6E 
.quad 0xB74D3BE5B4035FB4,0x2107172BBA71FF71,0xE6D7F7FF7198303C,0xA93AB1DD3F816E35 
.quad 0x8440B17A6335F826,0xBC448A790AE4EAD3,0xB4CA0A3ACD608970,0x2071FCF91A8E874D 
.quad 0x9E0EC706ACEBA3B2,0x69A7664077C88133,0xDD4B06020E7D66C,0xE6B14FF7A8473E0A 



.global fp_0
fp_0:
.zero pbytes


.global fp_1
fp_1:
.quad 0x65E7EE6590E6567D,0x40A5F2587FEF86D4,0x99F9E607B99D62F2,0x1089DF50F4F8F26D 
.quad 0x592890DD02BB585A,0xE1B6BE68B969ECB9,0xAEBE3C10395F33C3,0x5EF9652396531F1B 
.quad 0x28D37DB76B7A1B7F,0x86D089FA474B4A3F,0xDBCE120CC7A4FFF2,0x8B3F947137340AC 
.quad 0x913F3E7C71B37CE5,0xC7D1B17B09EC4577,0x9D834AFF6F7956B6,0x44C4B3E968EC2B8 



.global r_squared_mod_p 
r_squared_mod_p :
.quad 0xD6B8F146EC5055AF,0x68AC5D7707CCB03A,0x1322C9B9837DCA17,0x4F2940830C1D2B35 
.quad 0x8C1A56E5BF96471A,0x6CDDE00636C4F801,0x9365EC4FA327C9AC,0xA0056A67C1DE0E82 
.quad 0x8AA6FA7E6811FAA8,0x9AAD9631BB760403,0x156B34C683839B9D,0xA5AE047480992B2C 
.quad 0xC124D930289048B5,0x4F8A8344BBE56288,0xE1A2EB1D838B8237,0x57162F911CA93A3 



.global p_minus_2
p_minus_2:
.quad 0xDBE34C5460E36451,0xA1D81EEBBC3D344D,0x514BA72CB8D89FD3,0xC2CAB6A0E287F1BD 
.quad 0x642ACA4D5A313709,0x6B317C5431541F40,0xB97C56D1DE81EDE5,0x978DBEED90A2B58 
.quad 0x7611AD4F90441C80,0xF811D9C419EC8329,0x4D6C594A8AD82D2D,0xF06DE2471CF9386E 
.quad 0x683CF25DB31AD5B,0x216C22BC86F21A08,0xD89DEC879007EBD7,0xECE55ED427012A9 



.global p_minus_1_halves
p_minus_1_halves:
.quad 0xEDF1A62A3071B229,0xD0EC0F75DE1E9A26,0xA8A5D3965C6C4FE9,0xE1655B507143F8DE 
.quad 0x32156526AD189B84,0xB598BE2A18AA0FA0,0x5CBE2B68EF40F6F2,0x4BC6DF76C8515AC 
.quad 0xBB08D6A7C8220E40,0xFC08ECE20CF64194,0x26B62CA5456C1696,0xF836F1238E7C9C37 
.quad 0x341E792ED98D6AD,0x90B6115E43790D04,0xEC4EF643C803F5EB,0x7672AF6A1380954 



.global p_minus_3_quarters
p_minus_3_quarters:
.quad 0x76F8D3151838D914,0xE87607BAEF0F4D13,0x5452E9CB2E3627F4,0x70B2ADA838A1FC6F 
.quad 0x190AB293568C4DC2,0x5ACC5F150C5507D0,0x2E5F15B477A07B79,0x25E36FBB6428AD6 
.quad 0x5D846B53E4110720,0x7E047671067B20CA,0x935B1652A2B60B4B,0xFC1B7891C73E4E1B 
.quad 0x1A0F3C976CC6B56,0xC85B08AF21BC8682,0x76277B21E401FAF5,0x3B3957B509C04AA 



.section .data

.global fpadd
fpadd:
     .quad 0

.global fpsqr
fpsqr:
     .quad 0

.global fpmul
fpmul:
     .quad 0

.section .text

.p2align 4,,15

.global init_counters
init_counters:
      movq fpadd, 0
      movq fpsqr, 0
      movq fpmul, 0
      ret

.global fp_copy
fp_copy:
    cld
    mov rcx, plimbs
    rep movsq
    ret

.global fp_cswap
fp_cswap:
    movzx rax, dl
    neg rax
    .set k, 0
    .rept plimbs
        mov rcx, [rdi + 8*k]
mov rdx, [rsi + 8*k]
        mov r8, rcx
        xor r8, rdx
        and r8, rax

        xor rcx, r8
        xor rdx, r8

        mov [rdi + 8*k], rcx
        mov [rsi + 8*k], rdx

        .set k, k+1
    .endr
    ret


.reduce_once:
    push rbp
    mov rbp, rdi

    mov rdi, [rbp +  0]
    sub rdi, [rip + p +  0]
    mov rsi, [rbp +  8]
    sbb rsi, [rip + p +  8]
    mov rdx, [rbp +  16]
    sbb rdx, [rip + p +  16]
    mov rcx, [rbp +  24]
    sbb rcx, [rip + p +  24]
    mov r8, [rbp +  32]
    sbb r8, [rip + p +  32]
    mov r9, [rbp +  40]
    sbb r9, [rip + p +  40]
    mov r10, [rbp +  48]
    sbb r10, [rip + p +  48]
    mov r11, [rbp +  56]
    sbb r11, [rip + p +  56]

    mov rdi, [rbp +  64]
    sbb rdi, [rip + p +  64]
    mov rsi, [rbp +  72]
    sbb rsi, [rip + p +  72]
    mov rdx, [rbp +  80]
    sbb rdx, [rip + p +  80]
    mov rcx, [rbp +  88]
    sbb rcx, [rip + p +  88]
    mov r8, [rbp +  96]
    sbb r8, [rip + p +  96]
    mov r9, [rbp +  104]
    sbb r9, [rip + p +  104]
    mov r10, [rbp +  112]
    sbb r10, [rip + p +  112]
    mov r11, [rbp +  120]
    sbb r11, [rip + p +  120]


    setnc al
    movzx rax, al
    neg rax

.macro cswap2, r, m
    xor \r, \m
    and \r, rax
    xor \m, \r
.endm


    cswap2 rdi, [rbp +  64]
    cswap2 rsi, [rbp +  72]
    cswap2 rdx, [rbp +  80]
    cswap2 rcx, [rbp +  88]
    cswap2 r8, [rbp +  96]
    cswap2 r9, [rbp +  104]
    cswap2 r10, [rbp +  112]
    cswap2 r11, [rbp +  120]

    mov rdi, [rbp +  0]
    sub   rdi, [rip + p +  0]
    mov rsi, [rbp +  8]
    sbb rsi, [rip + p +  8]
    mov rdx, [rbp +  16]
    sbb rdx, [rip + p +  16]
    mov rcx, [rbp +  24]
    sbb rcx, [rip + p +  24]
    mov r8, [rbp +  32]
    sbb r8, [rip + p +  32]
    mov r9, [rbp +  40]
    sbb r9, [rip + p +  40]
    mov r10, [rbp +  48]
    sbb r10, [rip + p +  48]
    mov r11, [rbp +  56]
    sbb r11, [rip + p +  56]

    cswap2 rdi, [rbp +  0]
    cswap2 rsi, [rbp +  8]
    cswap2 rdx, [rbp +  16]
    cswap2 rcx, [rbp +  24]
    cswap2 r8, [rbp +  32]
    cswap2 r9, [rbp +  40]
    cswap2 r10, [rbp +  48]
    cswap2 r11, [rbp +  56]
    pop rbp
    ret


.global fp_add2
fp_add2:
  mov rdx, rdi

.global fp_add
fp_add:
  push rdi
  call uintbig_add
  pop rdi

  incq fpadd

  jmp .reduce_once

.global fp_sub2
fp_sub2:
  mov rdx, rdi
  xchg rsi, rdx

.global fp_sub
fp_sub:
  push rdi
  call uintbig_sub
  pop rdi


  incq fpadd  /* increasing number of additions performed */

  neg rax

  sub rsp, pbytes

  mov rcx, [rip + p +  0]
  and rcx, rax
  mov [rsp + 0],rcx
  .set k, 1
  .rept plimbs-1
      mov rcx, [rip + p + 8*k]
      and rcx, rax
      mov [rsp + 8*k], rcx
      .set k, k+1
  .endr

  mov rcx, [rsp +  0]
  add rcx, [rdi +  0]
  mov [rdi +  0], rcx
  .set k, 1
  .rept plimbs-1
      mov rcx, [rsp + 8*k]
      adc rcx, [rdi + 8*k]
      mov [rdi + 8*k], rcx
      .set k, k+1
  .endr

  add rsp, pbytes
  ret


/* Montgomery arithmetic */

.global fp_enc
fp_enc:
    lea rdx, [rip + r_squared_mod_p]
    jmp fp_mul

.global fp_dec
fp_dec:
    lea rdx, [rip + uintbig_1]
    jmp fp_mul



.global fp_mul2
fp_mul2:
  mov rdx, rdi
.global fp_mul
fp_mul:
  push rbp
  push rbx

  incq fpmul  /* increasing number of multiplications performed */

  sub rsp, 144
  mov [rsp+ 136],rdi
  mov rdi,rsi
  mov rsi,rdx


  xor rax,rax
  mov [rsp+0],rax
  mov [rsp+8],rax
  mov [rsp+16],rax
  mov [rsp+24],rax
  mov [rsp+32],rax
  mov [rsp+40],rax
  mov [rsp+48],rax
  mov [rsp+56],rax
  mov [rsp+64],rax
  mov [rsp+72],rax
  mov [rsp+80],rax
  mov [rsp+88],rax
  mov [rsp+96],rax
  mov [rsp+104],rax
  mov [rsp+112],rax
  mov [rsp+120],rax
  mov [rsp+128],rax


.macro MULSTEP, k,I0,I1,I2,I3,I4,I5,I6,I7,I8,I9,I10,I11,I12,I13,I14,I15,I16

    mov r11,[rsp+\I0]
    mov rdx, [rsi +  0]
    mulx rcx, rdx, [rdi + 8*\k]
    add rdx, r11
    mulx rcx, rdx, [rip + inv_min_p_mod_r]

    xor rax, rax /* clear flags */


    mulx rbx, rax, [rip + p +  0]
    adox r11, rax
    mov [rsp+\I0], r11

    mov r11,[rsp+\I1]
    mulx rcx, rax, [rip + p +  8]
    adcx r11, rbx
   adox r11, rax
    mov [rsp+\I1],r11

    mov r11,[rsp+\I2]
    mulx rbx, rax, [rip + p +  16]
    adcx r11, rcx
   adox r11, rax
    mov [rsp+\I2],r11

    mov r11,[rsp+\I3]
    mulx rcx, rax, [rip + p +  24]
    adcx r11, rbx
   adox r11, rax
    mov [rsp+\I3],r11

    mov r11,[rsp+\I4]
    mulx rbx, rax, [rip + p +  32]
    adcx r11, rcx
   adox r11, rax
    mov [rsp+\I4],r11

    mov r11,[rsp+\I5]
    mulx rcx, rax, [rip + p +  40]
    adcx r11, rbx
   adox r11, rax
    mov [rsp+\I5],r11

    mov r11,[rsp+\I6]
    mulx rbx, rax, [rip + p +  48]
    adcx r11, rcx
   adox r11, rax
    mov [rsp+\I6],r11

    mov r11,[rsp+\I7]
    mulx rcx, rax, [rip + p +  56]
    adcx r11, rbx
   adox r11, rax
    mov [rsp+\I7],r11

    mov r11,[rsp+\I8]
    mulx rbx, rax, [rip + p +  64]
    adcx r11, rcx
   adox r11, rax
    mov [rsp+\I8],r11

    mov r11,[rsp+\I9]
    mulx rcx, rax, [rip + p +  72]
    adcx r11, rbx
   adox r11, rax
    mov [rsp+\I9],r11

    mov r11,[rsp+\I10]
    mulx rbx, rax, [rip + p +  80]
    adcx r11, rcx
   adox r11, rax
    mov [rsp+\I10],r11

    mov r11,[rsp+\I11]
    mulx rcx, rax, [rip + p +  88]
    adcx r11, rbx
   adox r11, rax
    mov [rsp+\I11],r11

    mov r11,[rsp+\I12]
    mulx rbx, rax, [rip + p +  96]
    adcx r11, rcx
   adox r11, rax
    mov [rsp+\I12],r11

    mov r11,[rsp+\I13]
    mulx rcx, rax, [rip + p +  104]
    adcx r11, rbx
   adox r11, rax
    mov [rsp+\I13],r11

    mov r11,[rsp+\I14]
    mulx rbx, rax, [rip + p +  112]
    adcx r11, rcx
   adox r11, rax
    mov [rsp+\I14],r11

    mov r11,[rsp+\I15]
    mulx rcx, rax, [rip + p +  120]
    adcx r11, rbx
   adox r11, rax
    mov [rsp+\I15],r11


    mov r11,[rsp+\I16]
    mov rax, 0
    adcx r11, rcx
    adox r11, rax
    mov [rsp+\I16],r11

    mov rdx, [rdi + 8*\k]

    xor rax, rax /* clear flags */

    mov r11,[rsp+\I0]
    mulx rbx, rax, [rsi +  0]
    adox r11, rax
    mov [rsp+\I0],r11

    mov r11,[rsp+\I1]
    mulx rcx, rax, [rsi +  8]
    adcx r11, rbx
    adox r11, rax
    mov [rsp+\I1],r11

    mov r11,[rsp+\I2]
    mulx rbx, rax, [rsi +  16]
    adcx r11, rcx
    adox r11, rax
    mov [rsp+\I2],r11

    mov r11,[rsp+\I3]
    mulx rcx, rax, [rsi +  24]
    adcx r11, rbx
    adox r11, rax
    mov [rsp+\I3],r11

    mov r11,[rsp+\I4]
    mulx rbx, rax, [rsi +  32]
    adcx r11, rcx
    adox r11, rax
    mov [rsp+\I4],r11

    mov r11,[rsp+\I5]
    mulx rcx, rax, [rsi +  40]
    adcx r11, rbx
    adox r11, rax
    mov [rsp+\I5],r11

    mov r11,[rsp+\I6]
    mulx rbx, rax, [rsi +  48]
    adcx r11, rcx
    adox r11, rax
    mov [rsp+\I6],r11

    mov r11,[rsp+\I7]
    mulx rcx, rax, [rsi +  56]
    adcx r11, rbx
    adox r11, rax
    mov [rsp+\I7],r11

    mov r11,[rsp+\I8]
    mulx rbx, rax, [rsi +  64]
    adcx r11, rcx
    adox r11, rax
    mov [rsp+\I8],r11

    mov r11,[rsp+\I9]
    mulx rcx, rax, [rsi +  72]
    adcx r11, rbx
    adox r11, rax
    mov [rsp+\I9],r11

    mov r11,[rsp+\I10]
    mulx rbx, rax, [rsi +  80]
    adcx r11, rcx
    adox r11, rax
    mov [rsp+\I10],r11

    mov r11,[rsp+\I11]
    mulx rcx, rax, [rsi +  88]
    adcx r11, rbx
    adox r11, rax
    mov [rsp+\I11],r11

    mov r11,[rsp+\I12]
    mulx rbx, rax, [rsi +  96]
    adcx r11, rcx
    adox r11, rax
    mov [rsp+\I12],r11

    mov r11,[rsp+\I13]
    mulx rcx, rax, [rsi +  104]
    adcx r11, rbx
    adox r11, rax
    mov [rsp+\I13],r11

    mov r11,[rsp+\I14]
    mulx rbx, rax, [rsi +  112]
    adcx r11, rcx
    adox r11, rax
    mov [rsp+\I14],r11

    mov r11,[rsp+\I15]
    mulx rcx, rax, [rsi +  120]
    adcx r11, rbx
    adox r11, rax
    mov [rsp+\I15],r11

    mov r11,[rsp+\I16]
    mov rax, 0
    adcx r11, rcx
    adox r11, rax
    mov [rsp+\I16],r11

.endm

MULSTEP 0, 8, 16, 24, 32, 40, 48, 56, 64, 72, 80, 88, 96, 104, 112, 120, 128, 0
MULSTEP 1, 16, 24, 32, 40, 48, 56, 64, 72, 80, 88, 96, 104, 112, 120, 128, 0, 8
MULSTEP 2, 24, 32, 40, 48, 56, 64, 72, 80, 88, 96, 104, 112, 120, 128, 0, 8, 16
MULSTEP 3, 32, 40, 48, 56, 64, 72, 80, 88, 96, 104, 112, 120, 128, 0, 8, 16, 24
MULSTEP 4, 40, 48, 56, 64, 72, 80, 88, 96, 104, 112, 120, 128, 0, 8, 16, 24, 32
MULSTEP 5, 48, 56, 64, 72, 80, 88, 96, 104, 112, 120, 128, 0, 8, 16, 24, 32, 40
MULSTEP 6, 56, 64, 72, 80, 88, 96, 104, 112, 120, 128, 0, 8, 16, 24, 32, 40, 48
MULSTEP 7, 64, 72, 80, 88, 96, 104, 112, 120, 128, 0, 8, 16, 24, 32, 40, 48, 56
MULSTEP 8, 72, 80, 88, 96, 104, 112, 120, 128, 0, 8, 16, 24, 32, 40, 48, 56, 64
MULSTEP 9, 80, 88, 96, 104, 112, 120, 128, 0, 8, 16, 24, 32, 40, 48, 56, 64, 72
MULSTEP 10, 88, 96, 104, 112, 120, 128, 0, 8, 16, 24, 32, 40, 48, 56, 64, 72, 80
MULSTEP 11, 96, 104, 112, 120, 128, 0, 8, 16, 24, 32, 40, 48, 56, 64, 72, 80, 88
MULSTEP 12, 104, 112, 120, 128, 0, 8, 16, 24, 32, 40, 48, 56, 64, 72, 80, 88, 96
MULSTEP 13, 112, 120, 128, 0, 8, 16, 24, 32, 40, 48, 56, 64, 72, 80, 88, 96, 104
MULSTEP 14, 120, 128, 0, 8, 16, 24, 32, 40, 48, 56, 64, 72, 80, 88, 96, 104, 112
MULSTEP 15, 128, 0, 8, 16, 24, 32, 40, 48, 56, 64, 72, 80, 88, 96, 104, 112, 120


    mov rdi,[rsp+136]

    mov r11,[rsp+0]
    mov [rdi+0],r11
    mov r11,[rsp+8]
    mov [rdi+8],r11
    mov r11,[rsp+16]
    mov [rdi+16],r11
    mov r11,[rsp+24]
    mov [rdi+24],r11
    mov r11,[rsp+32]
    mov [rdi+32],r11
    mov r11,[rsp+40]
    mov [rdi+40],r11
    mov r11,[rsp+48]
    mov [rdi+48],r11
    mov r11,[rsp+56]
    mov [rdi+56],r11
    mov r11,[rsp+64]
    mov [rdi+64],r11
    mov r11,[rsp+72]
    mov [rdi+72],r11
    mov r11,[rsp+80]
    mov [rdi+80],r11
    mov r11,[rsp+88]
    mov [rdi+88],r11
    mov r11,[rsp+96]
    mov [rdi+96],r11
    mov r11,[rsp+104]
    mov [rdi+104],r11
    mov r11,[rsp+112]
    mov [rdi+112],r11
    mov r11,[rsp+120]
    mov [rdi+120],r11
    add rsp,144

    pop rbx
    pop rbp

    jmp .reduce_once


.global fp_sq1
fp_sq1:
    mov rsi, rdi
.global fp_sqr
fp_sqr:
    mov rdx, rsi

    decq fpmul
    incq fpsqr

    jmp fp_mul

.global fp_pow
fp_pow:
    push rbx
    mov rbx, rsi
    push r12
    push r13
    push rdi
    sub rsp, pbytes

    mov rsi, rdi
    mov rdi, rsp
    call fp_copy

    mov rdi, [rsp + pbytes]
    lea rsi, [rip + fp_1]
    call fp_copy

.macro POWSTEP, k
        mov r13, [rbx + 8*\k]
        xor r12, r12

        0:
        test r13, 1
        jz 1f

        mov rdi, [rsp + pbytes]
        mov rsi, rsp
        call fp_mul2

        1:
        mov rdi, rsp
        call fp_sq1

        shr r13

                inc r12
                test r12, 64
        jz 0b
.endm

    POWSTEP 0
    POWSTEP 1
    POWSTEP 2
    POWSTEP 3
    POWSTEP 4
    POWSTEP 5
    POWSTEP 6
    POWSTEP 7
    POWSTEP 8
    POWSTEP 9
    POWSTEP 10
    POWSTEP 11
    POWSTEP 12
    POWSTEP 13
    POWSTEP 14
    POWSTEP 15
    add rsp, pbytes+8
    pop r13
    pop r12
    pop rbx
    ret



.global fp_inv
fp_inv:
    lea rsi, [rip + p_minus_2]
    jmp fp_pow


.global fp_issquare
fp_issquare:
    push rdi
    lea rsi, [rip + p_minus_1_halves]
    call fp_pow
    pop rdi

    xor rax, rax
    .set k, 0
    .rept plimbs
        mov rsi, [rdi + 8*k]
        xor rsi, [rip + fp_1 + 8*k]
        or rax, rsi
         .set k, k+1
    .endr
    test rax, rax
    setz al
    movzx rax, al
    ret


.global fp_random
fp_random:

    push rdi
    mov rsi, pbytes
    call randombytes
    pop rdi
    mov rax, 1
    shl rax, (pbits % 64)
    dec rax
    and [rdi + pbytes-8], rax

    .set k, plimbs-1
    .rept plimbs
        mov rax, [rip + p + 8*k]
        cmp [rdi + 8*k], rax
        jge fp_random
        jl 0f
        .set k, k-1
    .endr
    0:
    ret
