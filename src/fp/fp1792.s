.intel_syntax noprefix

.section .rodata

.set pbits,1790
.set pbytes,224
.set plimbs,28


.global p
p:
.quad 0xC804F4EFEF04874B,0x770F489806318275,0xEF9BE9B25B7FBF58,0xC64CDE02FB981C9C 
.quad 0x49538CE3F92A3234,0xFB174904B4886812,0x167C7E61F811B172,0x2D6D3E7679D23338 
.quad 0x2EB979BA4CDD4507,0x7509515D63733618,0xABFE136FAF8A4B73,0xE6B556009DBF4FBA 
.quad 0xFB12C3D9632883ED,0xD3414C14613FED0B,0x8C8EDAE6CB982ACB,0x641D9537F06611D4 
.quad 0xE4DD34BB64C6A601,0x4A5AD00F90683AF,0x4ADE1FD26B8A329,0x624DA87AA1EDAB0 
.quad 0x7CF4B6F9E8D13278,0xF6EA9D59D24F0771,0xFDE30371F8CFF315,0x3A90552C4D23796 
.quad 0x73E8EB6EE635D928,0xD1740B70667F6FCB,0x23959D2E410C035D,0x306A3E55228AAD2F 



.global inv_min_p_mod_r
inv_min_p_mod_r:
.quad 0x7434619B0413B59D,0x8B1128FCECC65CE5,0x643AD2A9AC6C4613,0xB01D0135FDE49B4B 
.quad 0x7818EC16443815C7,0xC9D6A565428C5258,0xDF12940C529DCED9,0xE793391C032F3EF1 
.quad 0x57BD0C9F652D080E,0x5FBFD548BE037052,0x5543DB58E7EB901A,0xCA6CCC758C91CA30 
.quad 0x37FC6344A5D11830,0xD8B50A25316AC279,0x83C0EEE4D81641C7,0xEF5FF3310BDB984E 
.quad 0x2FA9CE122327F41D,0x18A1A855C5553364,0x6435985F69E636E7,0x3E8D7157E0AEA38 
.quad 0x82D05BBFE9E26648,0xD2EC763770E633AE,0x6AAAE3D3A7D7FB7E,0xF8CA241F849623D1 
.quad 0x7434DD1C230E069E,0xF9D29E245DF8A13F,0x82FFB2775A02241B,0x3AA31EB810CDEA64 



.global fp_0
fp_0:
.zero pbytes


.global fp_1
fp_1:
.quad 0x17E7375054E95B89,0xACB39507E10873B3,0x51F46F8436814345,0x207FA9F1160770EF 
.quad 0x915E3F8C222D04F8,0x188B92E87955F7A4,0x8F91881627A788C1,0x1CDDC7AF9EE4FFE7 
.quad 0x16609F5C7FADA6DC,0xB6D1692D0EBFF187,0xA4099ED1924C86BE,0x7E7551FCEB43715A 
.quad 0x18A22CC110356C5A,0xDFB9839A19C05EC4,0x4135B97E06072A04,0xB6C15E84E01A6D9 
.quad 0x87ADF857081EC1F9,0xE8C39EFB22DF6D90,0xE89A960E3E64D032,0xE147BB59AD65BA8F 
.quad 0x8F386D1E73EA03A7,0x2D6AED3EE474DAC8,0xA90EEC623F04092,0xEDB2E56227E4EA0D 
.quad 0xBC7366D580F2C237,0xE8BBC6CDFF82D106,0x4E13EE18BAC3EF2A,0xDECC856534A9E14 



.global r_squared_mod_p 
r_squared_mod_p :
.quad 0xB1234DDCDF15E6D9,0x845E73DC9C88AE0F,0xE67EAE09453FC264,0x3C15B856FDB5291C 
.quad 0xF73BE97E0F4085F9,0xDCE2A8EAB0552329,0x64512183B3610BC4,0xD9CDEE36BAF24900 
.quad 0x8A9640F4AD4F07A4,0xEB442EF8505CB842,0x7D4B9742E2A6DE1E,0xE39FDD8B7ABC284D 
.quad 0x65C55FCF286FEE22,0xD395EB135C1C0E71,0x5E6B8F98019572DC,0x762F326BCB82800A 
.quad 0xBBB0557904BE085F,0x943D10AB0FFB26CC,0x22AA230403638DB5,0xE5F0D594FE9B41CC 
.quad 0x170E0C9E58A10F35,0x5879EEF4FCBF374,0xEC66A5F3E7CE30A3,0x5ACC38689EC9481F 
.quad 0x78E6DAAB5CC5A9A9,0x6C6191B3160437E5,0xB1D5B60C2E5EA7B,0x4AA8B339A2BD0EA 



.global p_minus_2
p_minus_2:
.quad 0xC804F4EFEF048749,0x770F489806318275,0xEF9BE9B25B7FBF58,0xC64CDE02FB981C9C 
.quad 0x49538CE3F92A3234,0xFB174904B4886812,0x167C7E61F811B172,0x2D6D3E7679D23338 
.quad 0x2EB979BA4CDD4507,0x7509515D63733618,0xABFE136FAF8A4B73,0xE6B556009DBF4FBA 
.quad 0xFB12C3D9632883ED,0xD3414C14613FED0B,0x8C8EDAE6CB982ACB,0x641D9537F06611D4 
.quad 0xE4DD34BB64C6A601,0x4A5AD00F90683AF,0x4ADE1FD26B8A329,0x624DA87AA1EDAB0 
.quad 0x7CF4B6F9E8D13278,0xF6EA9D59D24F0771,0xFDE30371F8CFF315,0x3A90552C4D23796 
.quad 0x73E8EB6EE635D928,0xD1740B70667F6FCB,0x23959D2E410C035D,0x306A3E55228AAD2F 



.global p_minus_1_halves
p_minus_1_halves:
.quad 0xE4027A77F78243A5,0x3B87A44C0318C13A,0x77CDF4D92DBFDFAC,0x63266F017DCC0E4E 
.quad 0x24A9C671FC95191A,0x7D8BA4825A443409,0xB3E3F30FC08D8B9,0x96B69F3B3CE9199C 
.quad 0x175CBCDD266EA283,0xBA84A8AEB1B99B0C,0x55FF09B7D7C525B9,0xF35AAB004EDFA7DD 
.quad 0xFD8961ECB19441F6,0xE9A0A60A309FF685,0x46476D7365CC1565,0xB20ECA9BF83308EA 
.quad 0xF26E9A5DB2635300,0x8252D6807C8341D7,0x256F0FE935C5194,0x3126D43D50F6D58 
.quad 0xBE7A5B7CF468993C,0xFB754EACE92783B8,0x7EF181B8FC67F98A,0x1D482A962691BCB 
.quad 0xB9F475B7731AEC94,0xE8BA05B8333FB7E5,0x91CACE97208601AE,0x18351F2A91455697 



.global p_minus_3_quarters
p_minus_3_quarters:
.quad 0x72013D3BFBC121D2,0x1DC3D226018C609D,0x3BE6FA6C96DFEFD6,0x31933780BEE60727 
.quad 0x9254E338FE4A8C8D,0xBEC5D2412D221A04,0x59F1F987E046C5C,0xCB5B4F9D9E748CCE 
.quad 0xBAE5E6E93375141,0xDD42545758DCCD86,0xAAFF84DBEBE292DC,0x79AD5580276FD3EE 
.quad 0xFEC4B0F658CA20FB,0xF4D05305184FFB42,0x2323B6B9B2E60AB2,0x5907654DFC198475 
.quad 0xF9374D2ED931A980,0x41296B403E41A0EB,0x12B787F49AE28CA,0x18936A1EA87B6AC 
.quad 0x5F3D2DBE7A344C9E,0x7DBAA7567493C1DC,0xBF78C0DC7E33FCC5,0xEA4154B1348DE5 
.quad 0xDCFA3ADBB98D764A,0x745D02DC199FDBF2,0xC8E5674B904300D7,0xC1A8F9548A2AB4B 



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

    mov rdi, [rbp +  128]
    sbb rdi, [rip + p +  128]
    mov rsi, [rbp +  136]
    sbb rsi, [rip + p +  136]
    mov rdx, [rbp +  144]
    sbb rdx, [rip + p +  144]
    mov rcx, [rbp +  152]
    sbb rcx, [rip + p +  152]
    mov r8, [rbp +  160]
    sbb r8, [rip + p +  160]
    mov r9, [rbp +  168]
    sbb r9, [rip + p +  168]
    mov r10, [rbp +  176]
    sbb r10, [rip + p +  176]
    mov r11, [rbp +  184]
    sbb r11, [rip + p +  184]

    mov rdi, [rbp +  192]
    sbb rdi, [rip + p +  192]
    mov rsi, [rbp +  200]
    sbb rsi, [rip + p +  200]
    mov rdx, [rbp +  208]
    sbb rdx, [rip + p +  208]
    mov rcx, [rbp +  216]
    sbb rcx, [rip + p +  216]

    setnc al
    movzx rax, al
    neg rax

.macro cswap2, r, m
    xor \r, \m
    and \r, rax
    xor \m, \r
.endm


    cswap2 rdi, [rbp +  192]
    cswap2 rsi, [rbp +  200]
    cswap2 rdx, [rbp +  208]
    cswap2 rcx, [rbp +  216]

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

    mov rdi, [rbp +  128]
    sbb rdi, [rip + p +  128]
    mov rsi, [rbp +  136]
    sbb rsi, [rip + p +  136]
    mov rdx, [rbp +  144]
    sbb rdx, [rip + p +  144]
    mov rcx, [rbp +  152]
    sbb rcx, [rip + p +  152]
    mov r8, [rbp +  160]
    sbb r8, [rip + p +  160]
    mov r9, [rbp +  168]
    sbb r9, [rip + p +  168]
    mov r10, [rbp +  176]
    sbb r10, [rip + p +  176]
    mov r11, [rbp +  184]
    sbb r11, [rip + p +  184]

    cswap2 rdi, [rbp +  128]
    cswap2 rsi, [rbp +  136]
    cswap2 rdx, [rbp +  144]
    cswap2 rcx, [rbp +  152]
    cswap2 r8, [rbp +  160]
    cswap2 r9, [rbp +  168]
    cswap2 r10, [rbp +  176]
    cswap2 r11, [rbp +  184]

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

  sub rsp, 240
  mov [rsp+ 232],rdi
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
  mov [rsp+136],rax
  mov [rsp+144],rax
  mov [rsp+152],rax
  mov [rsp+160],rax
  mov [rsp+168],rax
  mov [rsp+176],rax
  mov [rsp+184],rax
  mov [rsp+192],rax
  mov [rsp+200],rax
  mov [rsp+208],rax
  mov [rsp+216],rax
  mov [rsp+224],rax


.macro MULSTEP, k,I0,I1,I2,I3,I4,I5,I6,I7,I8,I9,I10,I11,I12,I13,I14,I15,I16,I17,I18,I19,I20,I21,I22,I23,I24,I25,I26,I27,I28

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
    mulx rbx, rax, [rip + p +  128]
    adcx r11, rcx
   adox r11, rax
    mov [rsp+\I16],r11

    mov r11,[rsp+\I17]
    mulx rcx, rax, [rip + p +  136]
    adcx r11, rbx
   adox r11, rax
    mov [rsp+\I17],r11

    mov r11,[rsp+\I18]
    mulx rbx, rax, [rip + p +  144]
    adcx r11, rcx
   adox r11, rax
    mov [rsp+\I18],r11

    mov r11,[rsp+\I19]
    mulx rcx, rax, [rip + p +  152]
    adcx r11, rbx
   adox r11, rax
    mov [rsp+\I19],r11

    mov r11,[rsp+\I20]
    mulx rbx, rax, [rip + p +  160]
    adcx r11, rcx
   adox r11, rax
    mov [rsp+\I20],r11

    mov r11,[rsp+\I21]
    mulx rcx, rax, [rip + p +  168]
    adcx r11, rbx
   adox r11, rax
    mov [rsp+\I21],r11

    mov r11,[rsp+\I22]
    mulx rbx, rax, [rip + p +  176]
    adcx r11, rcx
   adox r11, rax
    mov [rsp+\I22],r11

    mov r11,[rsp+\I23]
    mulx rcx, rax, [rip + p +  184]
    adcx r11, rbx
   adox r11, rax
    mov [rsp+\I23],r11

    mov r11,[rsp+\I24]
    mulx rbx, rax, [rip + p +  192]
    adcx r11, rcx
   adox r11, rax
    mov [rsp+\I24],r11

    mov r11,[rsp+\I25]
    mulx rcx, rax, [rip + p +  200]
    adcx r11, rbx
   adox r11, rax
    mov [rsp+\I25],r11

    mov r11,[rsp+\I26]
    mulx rbx, rax, [rip + p +  208]
    adcx r11, rcx
   adox r11, rax
    mov [rsp+\I26],r11

    mov r11,[rsp+\I27]
    mulx rcx, rax, [rip + p +  216]
    adcx r11, rbx
   adox r11, rax
    mov [rsp+\I27],r11


    mov r11,[rsp+\I28]
    mov rax, 0
    adcx r11, rcx
    adox r11, rax
    mov [rsp+\I28],r11

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
    mulx rbx, rax, [rsi +  128]
    adcx r11, rcx
    adox r11, rax
    mov [rsp+\I16],r11

    mov r11,[rsp+\I17]
    mulx rcx, rax, [rsi +  136]
    adcx r11, rbx
    adox r11, rax
    mov [rsp+\I17],r11

    mov r11,[rsp+\I18]
    mulx rbx, rax, [rsi +  144]
    adcx r11, rcx
    adox r11, rax
    mov [rsp+\I18],r11

    mov r11,[rsp+\I19]
    mulx rcx, rax, [rsi +  152]
    adcx r11, rbx
    adox r11, rax
    mov [rsp+\I19],r11

    mov r11,[rsp+\I20]
    mulx rbx, rax, [rsi +  160]
    adcx r11, rcx
    adox r11, rax
    mov [rsp+\I20],r11

    mov r11,[rsp+\I21]
    mulx rcx, rax, [rsi +  168]
    adcx r11, rbx
    adox r11, rax
    mov [rsp+\I21],r11

    mov r11,[rsp+\I22]
    mulx rbx, rax, [rsi +  176]
    adcx r11, rcx
    adox r11, rax
    mov [rsp+\I22],r11

    mov r11,[rsp+\I23]
    mulx rcx, rax, [rsi +  184]
    adcx r11, rbx
    adox r11, rax
    mov [rsp+\I23],r11

    mov r11,[rsp+\I24]
    mulx rbx, rax, [rsi +  192]
    adcx r11, rcx
    adox r11, rax
    mov [rsp+\I24],r11

    mov r11,[rsp+\I25]
    mulx rcx, rax, [rsi +  200]
    adcx r11, rbx
    adox r11, rax
    mov [rsp+\I25],r11

    mov r11,[rsp+\I26]
    mulx rbx, rax, [rsi +  208]
    adcx r11, rcx
    adox r11, rax
    mov [rsp+\I26],r11

    mov r11,[rsp+\I27]
    mulx rcx, rax, [rsi +  216]
    adcx r11, rbx
    adox r11, rax
    mov [rsp+\I27],r11

    mov r11,[rsp+\I28]
    mov rax, 0
    adcx r11, rcx
    adox r11, rax
    mov [rsp+\I28],r11

.endm

MULSTEP 0, 8, 16, 24, 32, 40, 48, 56, 64, 72, 80, 88, 96, 104, 112, 120, 128, 136, 144, 152, 160, 168, 176, 184, 192, 200, 208, 216, 224, 0
MULSTEP 1, 16, 24, 32, 40, 48, 56, 64, 72, 80, 88, 96, 104, 112, 120, 128, 136, 144, 152, 160, 168, 176, 184, 192, 200, 208, 216, 224, 0, 8
MULSTEP 2, 24, 32, 40, 48, 56, 64, 72, 80, 88, 96, 104, 112, 120, 128, 136, 144, 152, 160, 168, 176, 184, 192, 200, 208, 216, 224, 0, 8, 16
MULSTEP 3, 32, 40, 48, 56, 64, 72, 80, 88, 96, 104, 112, 120, 128, 136, 144, 152, 160, 168, 176, 184, 192, 200, 208, 216, 224, 0, 8, 16, 24
MULSTEP 4, 40, 48, 56, 64, 72, 80, 88, 96, 104, 112, 120, 128, 136, 144, 152, 160, 168, 176, 184, 192, 200, 208, 216, 224, 0, 8, 16, 24, 32
MULSTEP 5, 48, 56, 64, 72, 80, 88, 96, 104, 112, 120, 128, 136, 144, 152, 160, 168, 176, 184, 192, 200, 208, 216, 224, 0, 8, 16, 24, 32, 40
MULSTEP 6, 56, 64, 72, 80, 88, 96, 104, 112, 120, 128, 136, 144, 152, 160, 168, 176, 184, 192, 200, 208, 216, 224, 0, 8, 16, 24, 32, 40, 48
MULSTEP 7, 64, 72, 80, 88, 96, 104, 112, 120, 128, 136, 144, 152, 160, 168, 176, 184, 192, 200, 208, 216, 224, 0, 8, 16, 24, 32, 40, 48, 56
MULSTEP 8, 72, 80, 88, 96, 104, 112, 120, 128, 136, 144, 152, 160, 168, 176, 184, 192, 200, 208, 216, 224, 0, 8, 16, 24, 32, 40, 48, 56, 64
MULSTEP 9, 80, 88, 96, 104, 112, 120, 128, 136, 144, 152, 160, 168, 176, 184, 192, 200, 208, 216, 224, 0, 8, 16, 24, 32, 40, 48, 56, 64, 72
MULSTEP 10, 88, 96, 104, 112, 120, 128, 136, 144, 152, 160, 168, 176, 184, 192, 200, 208, 216, 224, 0, 8, 16, 24, 32, 40, 48, 56, 64, 72, 80
MULSTEP 11, 96, 104, 112, 120, 128, 136, 144, 152, 160, 168, 176, 184, 192, 200, 208, 216, 224, 0, 8, 16, 24, 32, 40, 48, 56, 64, 72, 80, 88
MULSTEP 12, 104, 112, 120, 128, 136, 144, 152, 160, 168, 176, 184, 192, 200, 208, 216, 224, 0, 8, 16, 24, 32, 40, 48, 56, 64, 72, 80, 88, 96
MULSTEP 13, 112, 120, 128, 136, 144, 152, 160, 168, 176, 184, 192, 200, 208, 216, 224, 0, 8, 16, 24, 32, 40, 48, 56, 64, 72, 80, 88, 96, 104
MULSTEP 14, 120, 128, 136, 144, 152, 160, 168, 176, 184, 192, 200, 208, 216, 224, 0, 8, 16, 24, 32, 40, 48, 56, 64, 72, 80, 88, 96, 104, 112
MULSTEP 15, 128, 136, 144, 152, 160, 168, 176, 184, 192, 200, 208, 216, 224, 0, 8, 16, 24, 32, 40, 48, 56, 64, 72, 80, 88, 96, 104, 112, 120
MULSTEP 16, 136, 144, 152, 160, 168, 176, 184, 192, 200, 208, 216, 224, 0, 8, 16, 24, 32, 40, 48, 56, 64, 72, 80, 88, 96, 104, 112, 120, 128
MULSTEP 17, 144, 152, 160, 168, 176, 184, 192, 200, 208, 216, 224, 0, 8, 16, 24, 32, 40, 48, 56, 64, 72, 80, 88, 96, 104, 112, 120, 128, 136
MULSTEP 18, 152, 160, 168, 176, 184, 192, 200, 208, 216, 224, 0, 8, 16, 24, 32, 40, 48, 56, 64, 72, 80, 88, 96, 104, 112, 120, 128, 136, 144
MULSTEP 19, 160, 168, 176, 184, 192, 200, 208, 216, 224, 0, 8, 16, 24, 32, 40, 48, 56, 64, 72, 80, 88, 96, 104, 112, 120, 128, 136, 144, 152
MULSTEP 20, 168, 176, 184, 192, 200, 208, 216, 224, 0, 8, 16, 24, 32, 40, 48, 56, 64, 72, 80, 88, 96, 104, 112, 120, 128, 136, 144, 152, 160
MULSTEP 21, 176, 184, 192, 200, 208, 216, 224, 0, 8, 16, 24, 32, 40, 48, 56, 64, 72, 80, 88, 96, 104, 112, 120, 128, 136, 144, 152, 160, 168
MULSTEP 22, 184, 192, 200, 208, 216, 224, 0, 8, 16, 24, 32, 40, 48, 56, 64, 72, 80, 88, 96, 104, 112, 120, 128, 136, 144, 152, 160, 168, 176
MULSTEP 23, 192, 200, 208, 216, 224, 0, 8, 16, 24, 32, 40, 48, 56, 64, 72, 80, 88, 96, 104, 112, 120, 128, 136, 144, 152, 160, 168, 176, 184
MULSTEP 24, 200, 208, 216, 224, 0, 8, 16, 24, 32, 40, 48, 56, 64, 72, 80, 88, 96, 104, 112, 120, 128, 136, 144, 152, 160, 168, 176, 184, 192
MULSTEP 25, 208, 216, 224, 0, 8, 16, 24, 32, 40, 48, 56, 64, 72, 80, 88, 96, 104, 112, 120, 128, 136, 144, 152, 160, 168, 176, 184, 192, 200
MULSTEP 26, 216, 224, 0, 8, 16, 24, 32, 40, 48, 56, 64, 72, 80, 88, 96, 104, 112, 120, 128, 136, 144, 152, 160, 168, 176, 184, 192, 200, 208
MULSTEP 27, 224, 0, 8, 16, 24, 32, 40, 48, 56, 64, 72, 80, 88, 96, 104, 112, 120, 128, 136, 144, 152, 160, 168, 176, 184, 192, 200, 208, 216


    mov rdi,[rsp+232]

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
    mov r11,[rsp+128]
    mov [rdi+128],r11
    mov r11,[rsp+136]
    mov [rdi+136],r11
    mov r11,[rsp+144]
    mov [rdi+144],r11
    mov r11,[rsp+152]
    mov [rdi+152],r11
    mov r11,[rsp+160]
    mov [rdi+160],r11
    mov r11,[rsp+168]
    mov [rdi+168],r11
    mov r11,[rsp+176]
    mov [rdi+176],r11
    mov r11,[rsp+184]
    mov [rdi+184],r11
    mov r11,[rsp+192]
    mov [rdi+192],r11
    mov r11,[rsp+200]
    mov [rdi+200],r11
    mov r11,[rsp+208]
    mov [rdi+208],r11
    mov r11,[rsp+216]
    mov [rdi+216],r11
    add rsp,240

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
    POWSTEP 16
    POWSTEP 17
    POWSTEP 18
    POWSTEP 19
    POWSTEP 20
    POWSTEP 21
    POWSTEP 22
    POWSTEP 23
    POWSTEP 24
    POWSTEP 25
    POWSTEP 26
    POWSTEP 27
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
