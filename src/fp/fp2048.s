.intel_syntax noprefix

.section .rodata

.set pbits,2047
.set pbytes,256
.set plimbs,32


.global p
p:
.quad 0x7790D615EA034943,0xDC703F0CD8C4D918,0x95A98036C813C788,0xE111B0D22AB8ECAA 
.quad 0x6478407D7A9A56EE,0xA7BEC86FABAF787F,0x44454E851CF305AB,0x44084E1A73C76CB2 
.quad 0x2842BBE4DBACC65E,0x58E89497EF35BBB9,0x9796620B3AD8A5D4,0x5377D53E856CC9A3 
.quad 0x7C4CB419996F45E7,0x88C691B2D452A8AC,0xDA1783672767ABB,0x9844E5C09BAF59EC 
.quad 0xE33586D1208A1017,0x7D84F102B5FDE2EA,0x30D2EDFE50198C64,0x95AC8A9F3CE2B0C 
.quad 0x93E73ABD17E3AA46,0xC680497933375253,0x6557EBE96D91AEDD,0x4DD6024BF2F8FEAB 
.quad 0xB8523D6A302ABF28,0x33A8779A1EC8B8C2,0x584EB12932F72ABB,0xDBD1FC2133770253 
.quad 0xDDFFDCF1AEE53F12,0x4D8854E8B3E19C53,0x97FEFC90E8196ED9,0x438EFCAB10254C64 



.global inv_min_p_mod_r
inv_min_p_mod_r:
.quad 0x22249689C54C7495,0x12E68AB8926D57AF,0xAE1F8AA08A4EFA32,0x9FCC4A7ADD2E27AE 
.quad 0x9DC1942281D8DB30,0xC4D0D473FC9A4A0C,0x124F760435F4E046,0xE9757F48CF64B455 
.quad 0xD63AF540EBA311F3,0xC46C7B215C7816F6,0xA7672896D270482C,0x472B8F61E52386A3 
.quad 0x6589721FBDF2090C,0xA7C68D69076BEA33,0x83766D1C5B2EDDE2,0xB035DCD0CFDE11A4 
.quad 0x1A9293C21018AFC1,0xF73A64165C54F7DD,0x618D4BC803C30169,0xDD1F02A356A5181F 
.quad 0x3B0ACFD375FFDD55,0xDD88BF55CEC18E49,0xCE673E29784AAC0,0xEB15F68867AAEAE0 
.quad 0x40336E3235BDD360,0x2F574C8B9F17DC7F,0xA47CB2A5205E57FE,0xAB59C3A1E120E654 
.quad 0x883C4F69026FACB5,0x23C7186C4FA48288,0xD9899B0E54A75B7D,0x229F4728B353606F 



.global fp_0
fp_0:
.zero pbytes


.global fp_1
fp_1:
.quad 0x994D7DBE41F62437,0x6AAF42D975B174B6,0x3F037F5BA7C4A965,0x5CCAED897FD53A00 
.quad 0xD2973E879030FB33,0x8C3A6B0FCF19681,0x33301470A926EEFD,0x33E715B0A4A9B9E9 
.quad 0x8737CC516CF9ACE5,0xF5464238325ECCD4,0x393CD9DE4F760E82,0x59880446FB9A315 
.quad 0x8B19E3B333B22E4A,0x65AC4AE7830805FA,0xD71B975CA89C8FCD,0x37314EBE2CF1F23B 
.quad 0x565F6B8C9E61CFB9,0x87712CF7DE06573F,0x6D8736050FB35AD2,0xE3EFA60224957EDB 
.quad 0x444A4FC8B855012D,0xAC7F2394665A0905,0xCFF83C43B74AF366,0x167DF91C271503FD 
.quad 0xD70947C16F7FC287,0x65069931A3A5D5B7,0xF713EC84671A7FCE,0x6C8A0B9C659AF905 
.quad 0x6600692AF35042C7,0x17670145E45B2B04,0x38030A4D47B3B374,0x355309FECF901AD2 



.global r_squared_mod_p 
r_squared_mod_p :
.quad 0x6E940162ECB00F8C,0x24C744036302B024,0xC892A6CE3F16637B,0x37733CCC6AC611B0 
.quad 0xE5361A2CFB50BCF7,0xE06F5B5F3F269A1F,0x67D1D25E92181152,0xAB5A12BD6902FCFC 
.quad 0x82C060EA7DAAEBD0,0x22029CF3781C2B9E,0xCFDF6FB51053D83,0xD0AF69954CE04FB3 
.quad 0x15A5254E7EF0C6D,0x834839D5541A461A,0x6768D972DE4E269A,0x71A06DCB2A0A7A7F 
.quad 0xE11B7D51A8EF22F,0x9D655DCDEB3D4934,0x28DFAB822C934EA8,0x60A2BA69A0862D99 
.quad 0xF1286B89B68EE540,0xB16C9AE335599258,0x4A30CB66A64BE15F,0xD021EE65D62B98CE 
.quad 0xAE101149F5E60533,0x2AD923E56BEE4DC3,0x5CCB61E26B6F93B5,0xA4EE09D81CC595AF 
.quad 0xDC3497D89520CA1F,0x2AB20FE509190878,0xCB8FAB09772C236E,0x2DC5652F8085F6A5 



.global p_minus_2
p_minus_2:
.quad 0x7790D615EA034941,0xDC703F0CD8C4D918,0x95A98036C813C788,0xE111B0D22AB8ECAA 
.quad 0x6478407D7A9A56EE,0xA7BEC86FABAF787F,0x44454E851CF305AB,0x44084E1A73C76CB2 
.quad 0x2842BBE4DBACC65E,0x58E89497EF35BBB9,0x9796620B3AD8A5D4,0x5377D53E856CC9A3 
.quad 0x7C4CB419996F45E7,0x88C691B2D452A8AC,0xDA1783672767ABB,0x9844E5C09BAF59EC 
.quad 0xE33586D1208A1017,0x7D84F102B5FDE2EA,0x30D2EDFE50198C64,0x95AC8A9F3CE2B0C 
.quad 0x93E73ABD17E3AA46,0xC680497933375253,0x6557EBE96D91AEDD,0x4DD6024BF2F8FEAB 
.quad 0xB8523D6A302ABF28,0x33A8779A1EC8B8C2,0x584EB12932F72ABB,0xDBD1FC2133770253 
.quad 0xDDFFDCF1AEE53F12,0x4D8854E8B3E19C53,0x97FEFC90E8196ED9,0x438EFCAB10254C64 



.global p_minus_1_halves
p_minus_1_halves:
.quad 0x3BC86B0AF501A4A1,0x6E381F866C626C8C,0x4AD4C01B6409E3C4,0x7088D869155C7655 
.quad 0xB23C203EBD4D2B77,0xD3DF6437D5D7BC3F,0x2222A7428E7982D5,0x2204270D39E3B659 
.quad 0x94215DF26DD6632F,0x2C744A4BF79ADDDC,0xCBCB31059D6C52EA,0xA9BBEA9F42B664D1 
.quad 0x3E265A0CCCB7A2F3,0xC46348D96A295456,0x6D0BC1B393B3D5D,0xCC2272E04DD7ACF6 
.quad 0x719AC3689045080B,0x3EC278815AFEF175,0x186976FF280CC632,0x4AD6454F9E71586 
.quad 0xC9F39D5E8BF1D523,0xE34024BC999BA929,0xB2ABF5F4B6C8D76E,0x26EB0125F97C7F55 
.quad 0x5C291EB518155F94,0x99D43BCD0F645C61,0xAC275894997B955D,0x6DE8FE1099BB8129 
.quad 0xEEFFEE78D7729F89,0xA6C42A7459F0CE29,0x4BFF7E48740CB76C,0x21C77E558812A632 



.global p_minus_3_quarters
p_minus_3_quarters:
.quad 0x1DE435857A80D250,0x371C0FC336313646,0xA56A600DB204F1E2,0xB8446C348AAE3B2A 
.quad 0xD91E101F5EA695BB,0xE9EFB21BEAEBDE1F,0x911153A1473CC16A,0x910213869CF1DB2C 
.quad 0x4A10AEF936EB3197,0x163A2525FBCD6EEE,0xE5E59882CEB62975,0xD4DDF54FA15B3268 
.quad 0x1F132D06665BD179,0xE231A46CB514AA2B,0x3685E0D9C9D9EAE,0xE611397026EBD67B 
.quad 0xB8CD61B448228405,0x1F613C40AD7F78BA,0xC34BB7F94066319,0x8256B22A7CF38AC3 
.quad 0xE4F9CEAF45F8EA91,0x71A0125E4CCDD494,0xD955FAFA5B646BB7,0x13758092FCBE3FAA 
.quad 0xAE148F5A8C0AAFCA,0xCCEA1DE687B22E30,0xD613AC4A4CBDCAAE,0xB6F47F084CDDC094 
.quad 0xF77FF73C6BB94FC4,0x5362153A2CF86714,0x25FFBF243A065BB6,0x10E3BF2AC4095319 



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
    mov r8, [rbp +  224]
    sbb r8, [rip + p +  224]
    mov r9, [rbp +  232]
    sbb r9, [rip + p +  232]
    mov r10, [rbp +  240]
    sbb r10, [rip + p +  240]
    mov r11, [rbp +  248]
    sbb r11, [rip + p +  248]


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
    cswap2 r8, [rbp +  224]
    cswap2 r9, [rbp +  232]
    cswap2 r10, [rbp +  240]
    cswap2 r11, [rbp +  248]

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

  sub rsp, 272
  mov [rsp+ 264],rdi
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
  mov [rsp+232],rax
  mov [rsp+240],rax
  mov [rsp+248],rax
  mov [rsp+256],rax


.macro MULSTEP, k, I0,I1,I2,I3,I4,I5,I6,I7,I8,I9,I10,I11,I12,I13,I14,I15,I16,I17,I18,I19,I20,I21,I22,I23,I24,I25,I26,I27,I28,I29,I30,I31,I32

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
    mulx rbx, rax, [rip + p +  224]
    adcx r11, rcx
   adox r11, rax
    mov [rsp+\I28],r11

    mov r11,[rsp+\I29]
    mulx rcx, rax, [rip + p +  232]
    adcx r11, rbx
   adox r11, rax
    mov [rsp+\I29],r11

    mov r11,[rsp+\I30]
    mulx rbx, rax, [rip + p +  240]
    adcx r11, rcx
   adox r11, rax
    mov [rsp+\I30],r11

    mov r11,[rsp+\I31]
    mulx rcx, rax, [rip + p +  248]
    adcx r11, rbx
   adox r11, rax
    mov [rsp+\I31],r11


    mov r11,[rsp+\I32]
    mov rax, 0
    adcx r11, rcx
    adox r11, rax
    mov [rsp+\I32],r11

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
    mulx rbx, rax, [rsi +  224]
    adcx r11, rcx
    adox r11, rax
    mov [rsp+\I28],r11

    mov r11,[rsp+\I29]
    mulx rcx, rax, [rsi +  232]
    adcx r11, rbx
    adox r11, rax
    mov [rsp+\I29],r11

    mov r11,[rsp+\I30]
    mulx rbx, rax, [rsi +  240]
    adcx r11, rcx
    adox r11, rax
    mov [rsp+\I30],r11

    mov r11,[rsp+\I31]
    mulx rcx, rax, [rsi +  248]
    adcx r11, rbx
    adox r11, rax
    mov [rsp+\I31],r11

    mov r11,[rsp+\I32]
    mov rax, 0
    adcx r11, rcx
    adox r11, rax
    mov [rsp+\I32],r11

.endm

MULSTEP 0,8,16,24,32,40,48,56,64,72,80,88,96,104,112,120,128,136,144,152,160,168,176,184,192,200,208,216,224,232,240,248,256,0
MULSTEP 1,16,24,32,40,48,56,64,72,80,88,96,104,112,120,128,136,144,152,160,168,176,184,192,200,208,216,224,232,240,248,256,0,8
MULSTEP 2,24,32,40,48,56,64,72,80,88,96,104,112,120,128,136,144,152,160,168,176,184,192,200,208,216,224,232,240,248,256,0,8,16
MULSTEP 3,32,40,48,56,64,72,80,88,96,104,112,120,128,136,144,152,160,168,176,184,192,200,208,216,224,232,240,248,256,0,8,16,24
MULSTEP 4,40,48,56,64,72,80,88,96,104,112,120,128,136,144,152,160,168,176,184,192,200,208,216,224,232,240,248,256,0,8,16,24,32
MULSTEP 5,48,56,64,72,80,88,96,104,112,120,128,136,144,152,160,168,176,184,192,200,208,216,224,232,240,248,256,0,8,16,24,32,40
MULSTEP 6,56,64,72,80,88,96,104,112,120,128,136,144,152,160,168,176,184,192,200,208,216,224,232,240,248,256,0,8,16,24,32,40,48
MULSTEP 7,64,72,80,88,96,104,112,120,128,136,144,152,160,168,176,184,192,200,208,216,224,232,240,248,256,0,8,16,24,32,40,48,56
MULSTEP 8,72,80,88,96,104,112,120,128,136,144,152,160,168,176,184,192,200,208,216,224,232,240,248,256,0,8,16,24,32,40,48,56,64
MULSTEP 9,80,88,96,104,112,120,128,136,144,152,160,168,176,184,192,200,208,216,224,232,240,248,256,0,8,16,24,32,40,48,56,64,72
MULSTEP 10,88,96,104,112,120,128,136,144,152,160,168,176,184,192,200,208,216,224,232,240,248,256,0,8,16,24,32,40,48,56,64,72,80
MULSTEP 11,96,104,112,120,128,136,144,152,160,168,176,184,192,200,208,216,224,232,240,248,256,0,8,16,24,32,40,48,56,64,72,80,88
MULSTEP 12,104,112,120,128,136,144,152,160,168,176,184,192,200,208,216,224,232,240,248,256,0,8,16,24,32,40,48,56,64,72,80,88,96
MULSTEP 13,112,120,128,136,144,152,160,168,176,184,192,200,208,216,224,232,240,248,256,0,8,16,24,32,40,48,56,64,72,80,88,96,104
MULSTEP 14,120,128,136,144,152,160,168,176,184,192,200,208,216,224,232,240,248,256,0,8,16,24,32,40,48,56,64,72,80,88,96,104,112
MULSTEP 15,128,136,144,152,160,168,176,184,192,200,208,216,224,232,240,248,256,0,8,16,24,32,40,48,56,64,72,80,88,96,104,112,120
MULSTEP 16,136,144,152,160,168,176,184,192,200,208,216,224,232,240,248,256,0,8,16,24,32,40,48,56,64,72,80,88,96,104,112,120,128
MULSTEP 17,144,152,160,168,176,184,192,200,208,216,224,232,240,248,256,0,8,16,24,32,40,48,56,64,72,80,88,96,104,112,120,128,136
MULSTEP 18,152,160,168,176,184,192,200,208,216,224,232,240,248,256,0,8,16,24,32,40,48,56,64,72,80,88,96,104,112,120,128,136,144
MULSTEP 19,160,168,176,184,192,200,208,216,224,232,240,248,256,0,8,16,24,32,40,48,56,64,72,80,88,96,104,112,120,128,136,144,152
MULSTEP 20,168,176,184,192,200,208,216,224,232,240,248,256,0,8,16,24,32,40,48,56,64,72,80,88,96,104,112,120,128,136,144,152,160
MULSTEP 21,176,184,192,200,208,216,224,232,240,248,256,0,8,16,24,32,40,48,56,64,72,80,88,96,104,112,120,128,136,144,152,160,168
MULSTEP 22,184,192,200,208,216,224,232,240,248,256,0,8,16,24,32,40,48,56,64,72,80,88,96,104,112,120,128,136,144,152,160,168,176
MULSTEP 23,192,200,208,216,224,232,240,248,256,0,8,16,24,32,40,48,56,64,72,80,88,96,104,112,120,128,136,144,152,160,168,176,184
MULSTEP 24,200,208,216,224,232,240,248,256,0,8,16,24,32,40,48,56,64,72,80,88,96,104,112,120,128,136,144,152,160,168,176,184,192
MULSTEP 25,208,216,224,232,240,248,256,0,8,16,24,32,40,48,56,64,72,80,88,96,104,112,120,128,136,144,152,160,168,176,184,192,200
MULSTEP 26,216,224,232,240,248,256,0,8,16,24,32,40,48,56,64,72,80,88,96,104,112,120,128,136,144,152,160,168,176,184,192,200,208
MULSTEP 27,224,232,240,248,256,0,8,16,24,32,40,48,56,64,72,80,88,96,104,112,120,128,136,144,152,160,168,176,184,192,200,208,216
MULSTEP 28,232,240,248,256,0,8,16,24,32,40,48,56,64,72,80,88,96,104,112,120,128,136,144,152,160,168,176,184,192,200,208,216,224
MULSTEP 29,240,248,256,0,8,16,24,32,40,48,56,64,72,80,88,96,104,112,120,128,136,144,152,160,168,176,184,192,200,208,216,224,232
MULSTEP 30,248,256,0,8,16,24,32,40,48,56,64,72,80,88,96,104,112,120,128,136,144,152,160,168,176,184,192,200,208,216,224,232,240
MULSTEP 31,256,0,8,16,24,32,40,48,56,64,72,80,88,96,104,112,120,128,136,144,152,160,168,176,184,192,200,208,216,224,232,240,248


    mov rdi,[rsp+264]

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
    mov r11,[rsp+224]
    mov [rdi+224],r11
    mov r11,[rsp+232]
    mov [rdi+232],r11
    mov r11,[rsp+240]
    mov [rdi+240],r11
    mov r11,[rsp+248]
    mov [rdi+248],r11
    add rsp,272

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
    POWSTEP 28
    POWSTEP 29
    POWSTEP 30
    POWSTEP 31
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
