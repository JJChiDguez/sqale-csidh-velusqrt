.intel_syntax noprefix

.section .rodata

.set pbits,4095
.set pbytes,512
.set plimbs,64


.global p
p:
.quad 0xD1FCF47604E79BCB,0xD369B93E277B867F,0xB893B4DADA515DAB,0xD4A09051509BF0EC 
.quad 0x46535D892DB5C5F6,0xEA561D56AF87D01,0xEE6235F05176385C,0x4D59D8DEC8B88D8A 
.quad 0x1D32B79F32E14CD6,0xD786E8EDD70F9D4F,0xCF8DC03746E8A12D,0xFB2F371E06C9D3AA 
.quad 0x68D30CA59CE3425C,0x973DC84CFF577C5B,0xCCE8116D756C8905,0xB061D95CAFC1292B 
.quad 0x6B02F4FD9D35FD9E,0x10C1665D7FB1B9C7,0xE2C9D7F2E2DBDA4B,0x3F9D2D3E15ED1B60 
.quad 0x938F4FDC64215E5B,0xBD9A5671A61D5E08,0x9760DB220C5F584B,0x442AE0D0EB23485C 
.quad 0x9E324EE60EC15289,0x262D87B73F4A55FD,0x68E6C44B4D5D26C6,0xB19C8D8A6BFE007C 
.quad 0xD527B24495B02AC1,0x19D841ED1C3B26FC,0xD28976E599D8F92E,0x6855D97BA9DB63D9 
.quad 0xDBF7269D993760ED,0xC37A2496D6A0643A,0x2ABEADC289712A45,0x30A8AD864CE7CFEA 
.quad 0x18B06DAC453EE685,0xB848542F632F95EF,0xA825D48E93D16A3,0x2BA4A0C4C2765F31 
.quad 0xFB7E8F8314D44451,0x77E88B3F5AADC520,0x757B7B0EA38391F5,0xCBA7B9B3710891E6 
.quad 0xDEF1AD022E6ECAB6,0x985A6B47BE6E7821,0xC3249D4EEA4683A8,0x84530ADB4A502D6E 
.quad 0xFB7997BE77856D92,0xF9D051A0FB768F71,0xDAC14812B370ACF,0xC4BCEFE6A5B78310 
.quad 0x661F279E970400FF,0xB61117429E0FAD42,0x511586409A8B182F,0x43640CDA1CD63586 
.quad 0xF3924E59A2AFFCB0,0x9C117DD6D5390FB,0x53BDAD5DB6E3F210,0x9B3908337C3FCE94 
.quad 0x90F049B459104597,0x26650A3BB26C86B6,0xC447D91852630BDD,0x5E7717415B4CA2B9 



.global inv_min_p_mod_r
inv_min_p_mod_r:
.quad 0x1800D7F0D672CE1D,0x5C1DA02B771500CA,0xEC9309E3525D782,0xB440DA58E1FFA38C 
.quad 0x43CE14894E14187,0x837EB4DD402E3899,0xAFA8CC102AB4E17,0x3C02E6FC6886FDB5 
.quad 0xDB628136E93FCD0F,0x10A628A99FC552EE,0xBAC49825AA571D9F,0x6D9A2EE2D393DF02 
.quad 0x63EE9D345602E374,0x76DB017F7862C0B8,0x4DD2FAE70D5CD406,0x7C8E743E1F09C03F 
.quad 0x3AC7DE0D0D8AA2E2,0x373C40D9073A7246,0xA9A2856E3D334874,0x4C317CDE5E3C05D1 
.quad 0xB06698F8A525FA44,0xBE808D2F188C4DBD,0xC076E53FA15EA974,0xAFACFE0DB738A7A6 
.quad 0x754D51BF19F4CAC,0x64FA68BACCF8BBC4,0x432A633CFE24FD6D,0x274AA6A1139E6A1 
.quad 0x9CC9C77B7DC1EA91,0x7053157FD3A17FF9,0xA63B8105456790C8,0x897F812FC2B1851B 
.quad 0xE38BE7C1A3AB0D1D,0x1343B32780E5C7E2,0x8BFE177A2DAD574F,0x6AD4BF01F2952883 
.quad 0x16D9C0D75DF641F1,0xE20ACC3E7750BCC5,0x6393E4241DA9D352,0xA0B21B9B2F2FE5D8 
.quad 0x28F8D9997CCFC897,0xA29A368A1B2DF3D6,0xC69AC3D80864FE22,0x6DA24EBC3BE7A183 
.quad 0xCB15F697EFF0EF7C,0x160F57D7E2B35C2B,0x7E83CD3775D6B566,0x9D9F24B8FB36DA63 
.quad 0x1FFCB6391D2ED244,0x97ED8DC0C46709E9,0xF7D17D62F510468B,0x570EAEF7B8AC012D 
.quad 0xBDFAC946525E1BCD,0x8D7902BEEE92CC5B,0xA1CA3332674B5D75,0x5F9A75A5A6AEF1C8 
.quad 0xC17818DAB1064581,0x81D393EA29DB2237,0xE18013F8057402B5,0xD712B395475857CA 
.quad 0x243BE7761F67438D,0xC4F4FBF515A8A882,0x1F5DFD70BB9775A3,0x5F5EB02383BEA2D2 



.global fp_0
fp_0:
.zero pbytes


.global fp_1
fp_1:
.quad 0x5C061713F630C86A,0x592C8D83B108F300,0x8ED8964A4B5D44A8,0x56BEDF5D5EC81E26 
.quad 0x735944EDA4947412,0xE2B53C552A0F05FD,0x233B941F5D138F47,0x654C4E426E8EE4EA 
.quad 0xC59A90C19A3D6653,0x50F22E2451E0C561,0x60E47F91722EBDA4,0x9A191C3F26C58AA 
.quad 0x2E59E6B4C6397B46,0xD1846F6601510749,0x662FDD251526EDF4,0x9F3C4D46A07DADA8 
.quad 0x29FA1604C59404C2,0xDE7D3345009C8C71,0x3A6C501A3A484B69,0x80C5A583D425C93E 
.quad 0xD8E1604737BD4349,0x84CB531CB3C543EE,0xD13E49BBE7414F68,0x77AA3E5E29B96F46 
.quad 0xC39B6233E27D5AED,0xB3A4F091816B5404,0x2E3277696545B273,0x9CC6E4EB2803FF07 
.quad 0x55B09B76D49FAA7C,0xCC4F7C25C789B206,0x5AED1234CC4E0DA3,0x2F544D08AC49384C 
.quad 0x4811B2C4CD913E25,0x790BB6D252BF378A,0xAA82A47AED1DAB74,0x9EAEA4F36630602B 
.quad 0xCE9F24A7758232F5,0x8F6F57A139A0D421,0xEAFB456E2D85D2B8,0xA8B6BE767B13419D 
.quad 0x902E0F9D657775D,0x102EE9814AA475BE,0x150909E2B8F8DC15,0x68B08C991DEEDC33 
.quad 0x421CA5FBA3226A92,0xCF4B297083230FBC,0x79B6C5622B72F8AE,0xF759EA496B5FA522 
.quad 0x90CD08310F524DA,0xC5F5CBE0912E11C,0xE4A7D6FDA991EA60,0x76862032B490F9DF 
.quad 0x33C1B0C2D1F7FE00,0x93DDD17AC3E0A57B,0x5DD4F37ECAE9CFA0,0x7937E64BC65394F3 
.quad 0x18DB634CBAA0069F,0xEC7DD0452558DE08,0x5884A54492381BDF,0xC98DEF99078062D7 
.quad 0xDE1F6C974DDF74D0,0xB335EB889B26F292,0x77704DCF5B39E845,0x4311D17D4966BA8C 



.global r_squared_mod_p 
r_squared_mod_p :
.quad 0x9913AED3A647B091,0xB2C21FD58AD1FE19,0x6A949F027E1A80CD,0xFBA450D7D1183942 
.quad 0xBE9E31EAEF736E88,0x7C25A97807E683C9,0xAC25E8511B80EEB2,0x668C496837BF7E71 
.quad 0x65DFD2F49BD221CC,0xFF85C6EB7E39CEA3,0xD4DE401241CAA6E2,0x319A48A0EC980752 
.quad 0x65B5FC9A7D7C0992,0x1FBD0983CE504961,0x44F2DE8BB5CEA44,0x9C4733F17EE78A61 
.quad 0x33FF4C1A1003AB84,0x2D80CF3B726FB2B1,0xFA3B91AB03682DD1,0x8168D9B3413C5C66 
.quad 0x4955664824D4AB1,0xE7997D1FF50114E2,0x5CE488899FD471C4,0xC4E29C65881B4E4E 
.quad 0xB5FCF4E50F99E51F,0x62C3BE30C3229EB0,0x9355533FA8354D50,0xB469D6D4B8DEF3F 
.quad 0xCBCA35B80459E607,0xA93CBD0F7C5CC631,0x77DF4D96F300D8C7,0x8EF33761C8F4F3E5 
.quad 0x257C6075B5D33C97,0x13DBC66F749AE88B,0x659D67E0A1B805C2,0x24A930B8380B999C 
.quad 0xA20106AD6E19B664,0xE99AAE2588D46FFC,0x2D78AE0B052F03B4,0xFE808C242D2D23E9 
.quad 0xE96A8B8279F6BD96,0x9612B27D1E88FF3D,0xBA8B831890468C82,0xA1DC00337AB79575 
.quad 0x9549E2BBA3AAF81F,0x3BE59D8F0DFAB79E,0xEB8C138F93DC9272,0xB01B99534EE9F8A6 
.quad 0xBCF35F334FFF92EC,0xA1E09BFD1B01BE2D,0xAAA0EB10C056AD81,0x7EC7A77048EA9504 
.quad 0xC5B3B0CAECAB5F07,0x96B0209F03452CE5,0xF2F96DDF560A461A,0x613FF755C57F0BC6 
.quad 0x3598C5D91C9EB987,0xCEF1ADB35D90AE46,0xD3276C239FFEE158,0x8CB95452FE59624E 
.quad 0x2DF92A75418D0E3,0x239E884DA3353B9A,0x7ED3AE88DFF470A8,0x25B704707DFE0248 



.global p_minus_2
p_minus_2:
.quad 0xD1FCF47604E79BC9,0xD369B93E277B867F,0xB893B4DADA515DAB,0xD4A09051509BF0EC 
.quad 0x46535D892DB5C5F6,0xEA561D56AF87D01,0xEE6235F05176385C,0x4D59D8DEC8B88D8A 
.quad 0x1D32B79F32E14CD6,0xD786E8EDD70F9D4F,0xCF8DC03746E8A12D,0xFB2F371E06C9D3AA 
.quad 0x68D30CA59CE3425C,0x973DC84CFF577C5B,0xCCE8116D756C8905,0xB061D95CAFC1292B 
.quad 0x6B02F4FD9D35FD9E,0x10C1665D7FB1B9C7,0xE2C9D7F2E2DBDA4B,0x3F9D2D3E15ED1B60 
.quad 0x938F4FDC64215E5B,0xBD9A5671A61D5E08,0x9760DB220C5F584B,0x442AE0D0EB23485C 
.quad 0x9E324EE60EC15289,0x262D87B73F4A55FD,0x68E6C44B4D5D26C6,0xB19C8D8A6BFE007C 
.quad 0xD527B24495B02AC1,0x19D841ED1C3B26FC,0xD28976E599D8F92E,0x6855D97BA9DB63D9 
.quad 0xDBF7269D993760ED,0xC37A2496D6A0643A,0x2ABEADC289712A45,0x30A8AD864CE7CFEA 
.quad 0x18B06DAC453EE685,0xB848542F632F95EF,0xA825D48E93D16A3,0x2BA4A0C4C2765F31 
.quad 0xFB7E8F8314D44451,0x77E88B3F5AADC520,0x757B7B0EA38391F5,0xCBA7B9B3710891E6 
.quad 0xDEF1AD022E6ECAB6,0x985A6B47BE6E7821,0xC3249D4EEA4683A8,0x84530ADB4A502D6E 
.quad 0xFB7997BE77856D92,0xF9D051A0FB768F71,0xDAC14812B370ACF,0xC4BCEFE6A5B78310 
.quad 0x661F279E970400FF,0xB61117429E0FAD42,0x511586409A8B182F,0x43640CDA1CD63586 
.quad 0xF3924E59A2AFFCB0,0x9C117DD6D5390FB,0x53BDAD5DB6E3F210,0x9B3908337C3FCE94 
.quad 0x90F049B459104597,0x26650A3BB26C86B6,0xC447D91852630BDD,0x5E7717415B4CA2B9 



.global p_minus_1_halves
p_minus_1_halves:
.quad 0xE8FE7A3B0273CDE5,0xE9B4DC9F13BDC33F,0x5C49DA6D6D28AED5,0x6A504828A84DF876 
.quad 0xA329AEC496DAE2FB,0x752B0EAB57C3E80,0x77311AF828BB1C2E,0x26ACEC6F645C46C5 
.quad 0x8E995BCF9970A66B,0xEBC37476EB87CEA7,0x67C6E01BA3745096,0x7D979B8F0364E9D5 
.quad 0xB4698652CE71A12E,0xCB9EE4267FABBE2D,0xE67408B6BAB64482,0x5830ECAE57E09495 
.quad 0xB5817A7ECE9AFECF,0x8860B32EBFD8DCE3,0x7164EBF9716DED25,0x9FCE969F0AF68DB0 
.quad 0x49C7A7EE3210AF2D,0xDECD2B38D30EAF04,0x4BB06D91062FAC25,0xA21570687591A42E 
.quad 0xCF1927730760A944,0x1316C3DB9FA52AFE,0x34736225A6AE9363,0xD8CE46C535FF003E 
.quad 0x6A93D9224AD81560,0xCEC20F68E1D937E,0xE944BB72CCEC7C97,0xB42AECBDD4EDB1EC 
.quad 0x6DFB934ECC9BB076,0xE1BD124B6B50321D,0x155F56E144B89522,0x985456C32673E7F5 
.quad 0x8C5836D6229F7342,0xDC242A17B197CAF7,0x85412EA4749E8B51,0x95D25062613B2F98 
.quad 0x7DBF47C18A6A2228,0xBBF4459FAD56E290,0x3ABDBD8751C1C8FA,0x65D3DCD9B88448F3 
.quad 0xEF78D6811737655B,0x4C2D35A3DF373C10,0x61924EA7752341D4,0x4229856DA52816B7 
.quad 0xFDBCCBDF3BC2B6C9,0xFCE828D07DBB47B8,0x6D60A40959B8567,0xE25E77F352DBC188 
.quad 0x330F93CF4B82007F,0xDB088BA14F07D6A1,0x288AC3204D458C17,0x21B2066D0E6B1AC3 
.quad 0xF9C9272CD157FE58,0x4E08BEEB6A9C87D,0x29DED6AEDB71F908,0xCD9C8419BE1FE74A 
.quad 0x487824DA2C8822CB,0x9332851DD936435B,0xE223EC8C293185EE,0x2F3B8BA0ADA6515C 



.global p_minus_3_quarters
p_minus_3_quarters:
.quad 0xF47F3D1D8139E6F2,0xF4DA6E4F89DEE19F,0x2E24ED36B694576A,0xB52824145426FC3B 
.quad 0x5194D7624B6D717D,0x3A958755ABE1F40,0xBB988D7C145D8E17,0x93567637B22E2362 
.quad 0xC74CADE7CCB85335,0x75E1BA3B75C3E753,0xB3E3700DD1BA284B,0x3ECBCDC781B274EA 
.quad 0xDA34C3296738D097,0x65CF72133FD5DF16,0xF33A045B5D5B2241,0xAC1876572BF04A4A 
.quad 0xDAC0BD3F674D7F67,0xC43059975FEC6E71,0x38B275FCB8B6F692,0xCFE74B4F857B46D8 
.quad 0x24E3D3F719085796,0xEF66959C69875782,0x25D836C88317D612,0x510AB8343AC8D217 
.quad 0x678C93B983B054A2,0x898B61EDCFD2957F,0x1A39B112D35749B1,0x6C6723629AFF801F 
.quad 0x3549EC91256C0AB0,0x8676107B470EC9BF,0x74A25DB966763E4B,0x5A15765EEA76D8F6 
.quad 0xB6FDC9A7664DD83B,0x70DE8925B5A8190E,0x8AAFAB70A25C4A91,0x4C2A2B619339F3FA 
.quad 0xC62C1B6B114FB9A1,0xEE12150BD8CBE57B,0x42A097523A4F45A8,0x4AE92831309D97CC 
.quad 0x3EDFA3E0C5351114,0x5DFA22CFD6AB7148,0x9D5EDEC3A8E0E47D,0xB2E9EE6CDC422479 
.quad 0x77BC6B408B9BB2AD,0x26169AD1EF9B9E08,0xB0C92753BA91A0EA,0xA114C2B6D2940B5B 
.quad 0x7EDE65EF9DE15B64,0xFE7414683EDDA3DC,0x36B05204ACDC2B3,0xF12F3BF9A96DE0C4 
.quad 0x9987C9E7A5C1003F,0xED8445D0A783EB50,0x9445619026A2C60B,0x10D9033687358D61 
.quad 0xFCE4939668ABFF2C,0x27045F75B54E43E,0x14EF6B576DB8FC84,0xE6CE420CDF0FF3A5 
.quad 0xA43C126D16441165,0x4999428EEC9B21AD,0x7111F6461498C2F7,0x179DC5D056D328AE 



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

    mov rdi, [rbp +  256]
    sbb rdi, [rip + p +  256]
    mov rsi, [rbp +  264]
    sbb rsi, [rip + p +  264]
    mov rdx, [rbp +  272]
    sbb rdx, [rip + p +  272]
    mov rcx, [rbp +  280]
    sbb rcx, [rip + p +  280]
    mov r8, [rbp +  288]
    sbb r8, [rip + p +  288]
    mov r9, [rbp +  296]
    sbb r9, [rip + p +  296]
    mov r10, [rbp +  304]
    sbb r10, [rip + p +  304]
    mov r11, [rbp +  312]
    sbb r11, [rip + p +  312]

    mov rdi, [rbp +  320]
    sbb rdi, [rip + p +  320]
    mov rsi, [rbp +  328]
    sbb rsi, [rip + p +  328]
    mov rdx, [rbp +  336]
    sbb rdx, [rip + p +  336]
    mov rcx, [rbp +  344]
    sbb rcx, [rip + p +  344]
    mov r8, [rbp +  352]
    sbb r8, [rip + p +  352]
    mov r9, [rbp +  360]
    sbb r9, [rip + p +  360]
    mov r10, [rbp +  368]
    sbb r10, [rip + p +  368]
    mov r11, [rbp +  376]
    sbb r11, [rip + p +  376]

    mov rdi, [rbp +  384]
    sbb rdi, [rip + p +  384]
    mov rsi, [rbp +  392]
    sbb rsi, [rip + p +  392]
    mov rdx, [rbp +  400]
    sbb rdx, [rip + p +  400]
    mov rcx, [rbp +  408]
    sbb rcx, [rip + p +  408]
    mov r8, [rbp +  416]
    sbb r8, [rip + p +  416]
    mov r9, [rbp +  424]
    sbb r9, [rip + p +  424]
    mov r10, [rbp +  432]
    sbb r10, [rip + p +  432]
    mov r11, [rbp +  440]
    sbb r11, [rip + p +  440]

    mov rdi, [rbp +  448]
    sbb rdi, [rip + p +  448]
    mov rsi, [rbp +  456]
    sbb rsi, [rip + p +  456]
    mov rdx, [rbp +  464]
    sbb rdx, [rip + p +  464]
    mov rcx, [rbp +  472]
    sbb rcx, [rip + p +  472]
    mov r8, [rbp +  480]
    sbb r8, [rip + p +  480]
    mov r9, [rbp +  488]
    sbb r9, [rip + p +  488]
    mov r10, [rbp +  496]
    sbb r10, [rip + p +  496]
    mov r11, [rbp +  504]
    sbb r11, [rip + p +  504]


    setnc al
    movzx rax, al
    neg rax

.macro cswap2, r, m
    xor \r, \m
    and \r, rax
    xor \m, \r
.endm


    cswap2 rdi, [rbp +  448]
    cswap2 rsi, [rbp +  456]
    cswap2 rdx, [rbp +  464]
    cswap2 rcx, [rbp +  472]
    cswap2 r8, [rbp +  480]
    cswap2 r9, [rbp +  488]
    cswap2 r10, [rbp +  496]
    cswap2 r11, [rbp +  504]

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

    mov rdi, [rbp +  256]
    sbb rdi, [rip + p +  256]
    mov rsi, [rbp +  264]
    sbb rsi, [rip + p +  264]
    mov rdx, [rbp +  272]
    sbb rdx, [rip + p +  272]
    mov rcx, [rbp +  280]
    sbb rcx, [rip + p +  280]
    mov r8, [rbp +  288]
    sbb r8, [rip + p +  288]
    mov r9, [rbp +  296]
    sbb r9, [rip + p +  296]
    mov r10, [rbp +  304]
    sbb r10, [rip + p +  304]
    mov r11, [rbp +  312]
    sbb r11, [rip + p +  312]

    mov rdi, [rbp +  320]
    sbb rdi, [rip + p +  320]
    mov rsi, [rbp +  328]
    sbb rsi, [rip + p +  328]
    mov rdx, [rbp +  336]
    sbb rdx, [rip + p +  336]
    mov rcx, [rbp +  344]
    sbb rcx, [rip + p +  344]
    mov r8, [rbp +  352]
    sbb r8, [rip + p +  352]
    mov r9, [rbp +  360]
    sbb r9, [rip + p +  360]
    mov r10, [rbp +  368]
    sbb r10, [rip + p +  368]
    mov r11, [rbp +  376]
    sbb r11, [rip + p +  376]

    mov rdi, [rbp +  384]
    sbb rdi, [rip + p +  384]
    mov rsi, [rbp +  392]
    sbb rsi, [rip + p +  392]
    mov rdx, [rbp +  400]
    sbb rdx, [rip + p +  400]
    mov rcx, [rbp +  408]
    sbb rcx, [rip + p +  408]
    mov r8, [rbp +  416]
    sbb r8, [rip + p +  416]
    mov r9, [rbp +  424]
    sbb r9, [rip + p +  424]
    mov r10, [rbp +  432]
    sbb r10, [rip + p +  432]
    mov r11, [rbp +  440]
    sbb r11, [rip + p +  440]

    cswap2 rdi, [rbp +  384]
    cswap2 rsi, [rbp +  392]
    cswap2 rdx, [rbp +  400]
    cswap2 rcx, [rbp +  408]
    cswap2 r8, [rbp +  416]
    cswap2 r9, [rbp +  424]
    cswap2 r10, [rbp +  432]
    cswap2 r11, [rbp +  440]

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

    mov rdi, [rbp +  256]
    sbb rdi, [rip + p +  256]
    mov rsi, [rbp +  264]
    sbb rsi, [rip + p +  264]
    mov rdx, [rbp +  272]
    sbb rdx, [rip + p +  272]
    mov rcx, [rbp +  280]
    sbb rcx, [rip + p +  280]
    mov r8, [rbp +  288]
    sbb r8, [rip + p +  288]
    mov r9, [rbp +  296]
    sbb r9, [rip + p +  296]
    mov r10, [rbp +  304]
    sbb r10, [rip + p +  304]
    mov r11, [rbp +  312]
    sbb r11, [rip + p +  312]

    mov rdi, [rbp +  320]
    sbb rdi, [rip + p +  320]
    mov rsi, [rbp +  328]
    sbb rsi, [rip + p +  328]
    mov rdx, [rbp +  336]
    sbb rdx, [rip + p +  336]
    mov rcx, [rbp +  344]
    sbb rcx, [rip + p +  344]
    mov r8, [rbp +  352]
    sbb r8, [rip + p +  352]
    mov r9, [rbp +  360]
    sbb r9, [rip + p +  360]
    mov r10, [rbp +  368]
    sbb r10, [rip + p +  368]
    mov r11, [rbp +  376]
    sbb r11, [rip + p +  376]

    cswap2 rdi, [rbp +  320]
    cswap2 rsi, [rbp +  328]
    cswap2 rdx, [rbp +  336]
    cswap2 rcx, [rbp +  344]
    cswap2 r8, [rbp +  352]
    cswap2 r9, [rbp +  360]
    cswap2 r10, [rbp +  368]
    cswap2 r11, [rbp +  376]

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

    mov rdi, [rbp +  256]
    sbb rdi, [rip + p +  256]
    mov rsi, [rbp +  264]
    sbb rsi, [rip + p +  264]
    mov rdx, [rbp +  272]
    sbb rdx, [rip + p +  272]
    mov rcx, [rbp +  280]
    sbb rcx, [rip + p +  280]
    mov r8, [rbp +  288]
    sbb r8, [rip + p +  288]
    mov r9, [rbp +  296]
    sbb r9, [rip + p +  296]
    mov r10, [rbp +  304]
    sbb r10, [rip + p +  304]
    mov r11, [rbp +  312]
    sbb r11, [rip + p +  312]

    cswap2 rdi, [rbp +  256]
    cswap2 rsi, [rbp +  264]
    cswap2 rdx, [rbp +  272]
    cswap2 rcx, [rbp +  280]
    cswap2 r8, [rbp +  288]
    cswap2 r9, [rbp +  296]
    cswap2 r10, [rbp +  304]
    cswap2 r11, [rbp +  312]

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

  sub rsp, 528
  mov [rsp+ 520],rdi
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
  mov [rsp+264],rax
  mov [rsp+272],rax
  mov [rsp+280],rax
  mov [rsp+288],rax
  mov [rsp+296],rax
  mov [rsp+304],rax
  mov [rsp+312],rax
  mov [rsp+320],rax
  mov [rsp+328],rax
  mov [rsp+336],rax
  mov [rsp+344],rax
  mov [rsp+352],rax
  mov [rsp+360],rax
  mov [rsp+368],rax
  mov [rsp+376],rax
  mov [rsp+384],rax
  mov [rsp+392],rax
  mov [rsp+400],rax
  mov [rsp+408],rax
  mov [rsp+416],rax
  mov [rsp+424],rax
  mov [rsp+432],rax
  mov [rsp+440],rax
  mov [rsp+448],rax
  mov [rsp+456],rax
  mov [rsp+464],rax
  mov [rsp+472],rax
  mov [rsp+480],rax
  mov [rsp+488],rax
  mov [rsp+496],rax
  mov [rsp+504],rax
  mov [rsp+512],rax


.macro MULSTEP, k,I0,I1,I2,I3,I4,I5,I6,I7,I8,I9,I10,I11,I12,I13,I14,I15,I16,I17,I18,I19,I20,I21,I22,I23,I24,I25,I26,I27,I28,I29,I30,I31,I32,I33,I34,I35,I36,I37,I38,I39,I40,I41,I42,I43,I44,I45,I46,I47,I48,I49,I50,I51,I52,I53,I54,I55,I56,I57,I58,I59,I60,I61,I62,I63,I64

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
    mulx rbx, rax, [rip + p +  256]
    adcx r11, rcx
   adox r11, rax
    mov [rsp+\I32],r11

    mov r11,[rsp+\I33]
    mulx rcx, rax, [rip + p +  264]
    adcx r11, rbx
   adox r11, rax
    mov [rsp+\I33],r11

    mov r11,[rsp+\I34]
    mulx rbx, rax, [rip + p +  272]
    adcx r11, rcx
   adox r11, rax
    mov [rsp+\I34],r11

    mov r11,[rsp+\I35]
    mulx rcx, rax, [rip + p +  280]
    adcx r11, rbx
   adox r11, rax
    mov [rsp+\I35],r11

    mov r11,[rsp+\I36]
    mulx rbx, rax, [rip + p +  288]
    adcx r11, rcx
   adox r11, rax
    mov [rsp+\I36],r11

    mov r11,[rsp+\I37]
    mulx rcx, rax, [rip + p +  296]
    adcx r11, rbx
   adox r11, rax
    mov [rsp+\I37],r11

    mov r11,[rsp+\I38]
    mulx rbx, rax, [rip + p +  304]
    adcx r11, rcx
   adox r11, rax
    mov [rsp+\I38],r11

    mov r11,[rsp+\I39]
    mulx rcx, rax, [rip + p +  312]
    adcx r11, rbx
   adox r11, rax
    mov [rsp+\I39],r11

    mov r11,[rsp+\I40]
    mulx rbx, rax, [rip + p +  320]
    adcx r11, rcx
   adox r11, rax
    mov [rsp+\I40],r11

    mov r11,[rsp+\I41]
    mulx rcx, rax, [rip + p +  328]
    adcx r11, rbx
   adox r11, rax
    mov [rsp+\I41],r11

    mov r11,[rsp+\I42]
    mulx rbx, rax, [rip + p +  336]
    adcx r11, rcx
   adox r11, rax
    mov [rsp+\I42],r11

    mov r11,[rsp+\I43]
    mulx rcx, rax, [rip + p +  344]
    adcx r11, rbx
   adox r11, rax
    mov [rsp+\I43],r11

    mov r11,[rsp+\I44]
    mulx rbx, rax, [rip + p +  352]
    adcx r11, rcx
   adox r11, rax
    mov [rsp+\I44],r11

    mov r11,[rsp+\I45]
    mulx rcx, rax, [rip + p +  360]
    adcx r11, rbx
   adox r11, rax
    mov [rsp+\I45],r11

    mov r11,[rsp+\I46]
    mulx rbx, rax, [rip + p +  368]
    adcx r11, rcx
   adox r11, rax
    mov [rsp+\I46],r11

    mov r11,[rsp+\I47]
    mulx rcx, rax, [rip + p +  376]
    adcx r11, rbx
   adox r11, rax
    mov [rsp+\I47],r11

    mov r11,[rsp+\I48]
    mulx rbx, rax, [rip + p +  384]
    adcx r11, rcx
   adox r11, rax
    mov [rsp+\I48],r11

    mov r11,[rsp+\I49]
    mulx rcx, rax, [rip + p +  392]
    adcx r11, rbx
   adox r11, rax
    mov [rsp+\I49],r11

    mov r11,[rsp+\I50]
    mulx rbx, rax, [rip + p +  400]
    adcx r11, rcx
   adox r11, rax
    mov [rsp+\I50],r11

    mov r11,[rsp+\I51]
    mulx rcx, rax, [rip + p +  408]
    adcx r11, rbx
   adox r11, rax
    mov [rsp+\I51],r11

    mov r11,[rsp+\I52]
    mulx rbx, rax, [rip + p +  416]
    adcx r11, rcx
   adox r11, rax
    mov [rsp+\I52],r11

    mov r11,[rsp+\I53]
    mulx rcx, rax, [rip + p +  424]
    adcx r11, rbx
   adox r11, rax
    mov [rsp+\I53],r11

    mov r11,[rsp+\I54]
    mulx rbx, rax, [rip + p +  432]
    adcx r11, rcx
   adox r11, rax
    mov [rsp+\I54],r11

    mov r11,[rsp+\I55]
    mulx rcx, rax, [rip + p +  440]
    adcx r11, rbx
   adox r11, rax
    mov [rsp+\I55],r11

    mov r11,[rsp+\I56]
    mulx rbx, rax, [rip + p +  448]
    adcx r11, rcx
   adox r11, rax
    mov [rsp+\I56],r11

    mov r11,[rsp+\I57]
    mulx rcx, rax, [rip + p +  456]
    adcx r11, rbx
   adox r11, rax
    mov [rsp+\I57],r11

    mov r11,[rsp+\I58]
    mulx rbx, rax, [rip + p +  464]
    adcx r11, rcx
   adox r11, rax
    mov [rsp+\I58],r11

    mov r11,[rsp+\I59]
    mulx rcx, rax, [rip + p +  472]
    adcx r11, rbx
   adox r11, rax
    mov [rsp+\I59],r11

    mov r11,[rsp+\I60]
    mulx rbx, rax, [rip + p +  480]
    adcx r11, rcx
   adox r11, rax
    mov [rsp+\I60],r11

    mov r11,[rsp+\I61]
    mulx rcx, rax, [rip + p +  488]
    adcx r11, rbx
   adox r11, rax
    mov [rsp+\I61],r11

    mov r11,[rsp+\I62]
    mulx rbx, rax, [rip + p +  496]
    adcx r11, rcx
   adox r11, rax
    mov [rsp+\I62],r11

    mov r11,[rsp+\I63]
    mulx rcx, rax, [rip + p +  504]
    adcx r11, rbx
   adox r11, rax
    mov [rsp+\I63],r11


    mov r11,[rsp+\I64]
    mov rax, 0
    adcx r11, rcx
    adox r11, rax
    mov [rsp+\I64],r11

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
    mulx rbx, rax, [rsi +  256]
    adcx r11, rcx
    adox r11, rax
    mov [rsp+\I32],r11

    mov r11,[rsp+\I33]
    mulx rcx, rax, [rsi +  264]
    adcx r11, rbx
    adox r11, rax
    mov [rsp+\I33],r11

    mov r11,[rsp+\I34]
    mulx rbx, rax, [rsi +  272]
    adcx r11, rcx
    adox r11, rax
    mov [rsp+\I34],r11

    mov r11,[rsp+\I35]
    mulx rcx, rax, [rsi +  280]
    adcx r11, rbx
    adox r11, rax
    mov [rsp+\I35],r11

    mov r11,[rsp+\I36]
    mulx rbx, rax, [rsi +  288]
    adcx r11, rcx
    adox r11, rax
    mov [rsp+\I36],r11

    mov r11,[rsp+\I37]
    mulx rcx, rax, [rsi +  296]
    adcx r11, rbx
    adox r11, rax
    mov [rsp+\I37],r11

    mov r11,[rsp+\I38]
    mulx rbx, rax, [rsi +  304]
    adcx r11, rcx
    adox r11, rax
    mov [rsp+\I38],r11

    mov r11,[rsp+\I39]
    mulx rcx, rax, [rsi +  312]
    adcx r11, rbx
    adox r11, rax
    mov [rsp+\I39],r11

    mov r11,[rsp+\I40]
    mulx rbx, rax, [rsi +  320]
    adcx r11, rcx
    adox r11, rax
    mov [rsp+\I40],r11

    mov r11,[rsp+\I41]
    mulx rcx, rax, [rsi +  328]
    adcx r11, rbx
    adox r11, rax
    mov [rsp+\I41],r11

    mov r11,[rsp+\I42]
    mulx rbx, rax, [rsi +  336]
    adcx r11, rcx
    adox r11, rax
    mov [rsp+\I42],r11

    mov r11,[rsp+\I43]
    mulx rcx, rax, [rsi +  344]
    adcx r11, rbx
    adox r11, rax
    mov [rsp+\I43],r11

    mov r11,[rsp+\I44]
    mulx rbx, rax, [rsi +  352]
    adcx r11, rcx
    adox r11, rax
    mov [rsp+\I44],r11

    mov r11,[rsp+\I45]
    mulx rcx, rax, [rsi +  360]
    adcx r11, rbx
    adox r11, rax
    mov [rsp+\I45],r11

    mov r11,[rsp+\I46]
    mulx rbx, rax, [rsi +  368]
    adcx r11, rcx
    adox r11, rax
    mov [rsp+\I46],r11

    mov r11,[rsp+\I47]
    mulx rcx, rax, [rsi +  376]
    adcx r11, rbx
    adox r11, rax
    mov [rsp+\I47],r11

    mov r11,[rsp+\I48]
    mulx rbx, rax, [rsi +  384]
    adcx r11, rcx
    adox r11, rax
    mov [rsp+\I48],r11

    mov r11,[rsp+\I49]
    mulx rcx, rax, [rsi +  392]
    adcx r11, rbx
    adox r11, rax
    mov [rsp+\I49],r11

    mov r11,[rsp+\I50]
    mulx rbx, rax, [rsi +  400]
    adcx r11, rcx
    adox r11, rax
    mov [rsp+\I50],r11

    mov r11,[rsp+\I51]
    mulx rcx, rax, [rsi +  408]
    adcx r11, rbx
    adox r11, rax
    mov [rsp+\I51],r11

    mov r11,[rsp+\I52]
    mulx rbx, rax, [rsi +  416]
    adcx r11, rcx
    adox r11, rax
    mov [rsp+\I52],r11

    mov r11,[rsp+\I53]
    mulx rcx, rax, [rsi +  424]
    adcx r11, rbx
    adox r11, rax
    mov [rsp+\I53],r11

    mov r11,[rsp+\I54]
    mulx rbx, rax, [rsi +  432]
    adcx r11, rcx
    adox r11, rax
    mov [rsp+\I54],r11

    mov r11,[rsp+\I55]
    mulx rcx, rax, [rsi +  440]
    adcx r11, rbx
    adox r11, rax
    mov [rsp+\I55],r11

    mov r11,[rsp+\I56]
    mulx rbx, rax, [rsi +  448]
    adcx r11, rcx
    adox r11, rax
    mov [rsp+\I56],r11

    mov r11,[rsp+\I57]
    mulx rcx, rax, [rsi +  456]
    adcx r11, rbx
    adox r11, rax
    mov [rsp+\I57],r11

    mov r11,[rsp+\I58]
    mulx rbx, rax, [rsi +  464]
    adcx r11, rcx
    adox r11, rax
    mov [rsp+\I58],r11

    mov r11,[rsp+\I59]
    mulx rcx, rax, [rsi +  472]
    adcx r11, rbx
    adox r11, rax
    mov [rsp+\I59],r11

    mov r11,[rsp+\I60]
    mulx rbx, rax, [rsi +  480]
    adcx r11, rcx
    adox r11, rax
    mov [rsp+\I60],r11

    mov r11,[rsp+\I61]
    mulx rcx, rax, [rsi +  488]
    adcx r11, rbx
    adox r11, rax
    mov [rsp+\I61],r11

    mov r11,[rsp+\I62]
    mulx rbx, rax, [rsi +  496]
    adcx r11, rcx
    adox r11, rax
    mov [rsp+\I62],r11

    mov r11,[rsp+\I63]
    mulx rcx, rax, [rsi +  504]
    adcx r11, rbx
    adox r11, rax
    mov [rsp+\I63],r11

    mov r11,[rsp+\I64]
    mov rax, 0
    adcx r11, rcx
    adox r11, rax
    mov [rsp+\I64],r11

.endm

MULSTEP 0, 8, 16, 24, 32, 40, 48, 56, 64, 72, 80, 88, 96, 104, 112, 120, 128, 136, 144, 152, 160, 168, 176, 184, 192, 200, 208, 216, 224, 232, 240, 248, 256, 264, 272, 280, 288, 296, 304, 312, 320, 328, 336, 344, 352, 360, 368, 376, 384, 392, 400, 408, 416, 424, 432, 440, 448, 456, 464, 472, 480, 488, 496, 504, 512, 0
MULSTEP 1, 16, 24, 32, 40, 48, 56, 64, 72, 80, 88, 96, 104, 112, 120, 128, 136, 144, 152, 160, 168, 176, 184, 192, 200, 208, 216, 224, 232, 240, 248, 256, 264, 272, 280, 288, 296, 304, 312, 320, 328, 336, 344, 352, 360, 368, 376, 384, 392, 400, 408, 416, 424, 432, 440, 448, 456, 464, 472, 480, 488, 496, 504, 512, 0, 8
MULSTEP 2, 24, 32, 40, 48, 56, 64, 72, 80, 88, 96, 104, 112, 120, 128, 136, 144, 152, 160, 168, 176, 184, 192, 200, 208, 216, 224, 232, 240, 248, 256, 264, 272, 280, 288, 296, 304, 312, 320, 328, 336, 344, 352, 360, 368, 376, 384, 392, 400, 408, 416, 424, 432, 440, 448, 456, 464, 472, 480, 488, 496, 504, 512, 0, 8, 16
MULSTEP 3, 32, 40, 48, 56, 64, 72, 80, 88, 96, 104, 112, 120, 128, 136, 144, 152, 160, 168, 176, 184, 192, 200, 208, 216, 224, 232, 240, 248, 256, 264, 272, 280, 288, 296, 304, 312, 320, 328, 336, 344, 352, 360, 368, 376, 384, 392, 400, 408, 416, 424, 432, 440, 448, 456, 464, 472, 480, 488, 496, 504, 512, 0, 8, 16, 24
MULSTEP 4, 40, 48, 56, 64, 72, 80, 88, 96, 104, 112, 120, 128, 136, 144, 152, 160, 168, 176, 184, 192, 200, 208, 216, 224, 232, 240, 248, 256, 264, 272, 280, 288, 296, 304, 312, 320, 328, 336, 344, 352, 360, 368, 376, 384, 392, 400, 408, 416, 424, 432, 440, 448, 456, 464, 472, 480, 488, 496, 504, 512, 0, 8, 16, 24, 32
MULSTEP 5, 48, 56, 64, 72, 80, 88, 96, 104, 112, 120, 128, 136, 144, 152, 160, 168, 176, 184, 192, 200, 208, 216, 224, 232, 240, 248, 256, 264, 272, 280, 288, 296, 304, 312, 320, 328, 336, 344, 352, 360, 368, 376, 384, 392, 400, 408, 416, 424, 432, 440, 448, 456, 464, 472, 480, 488, 496, 504, 512, 0, 8, 16, 24, 32, 40
MULSTEP 6, 56, 64, 72, 80, 88, 96, 104, 112, 120, 128, 136, 144, 152, 160, 168, 176, 184, 192, 200, 208, 216, 224, 232, 240, 248, 256, 264, 272, 280, 288, 296, 304, 312, 320, 328, 336, 344, 352, 360, 368, 376, 384, 392, 400, 408, 416, 424, 432, 440, 448, 456, 464, 472, 480, 488, 496, 504, 512, 0, 8, 16, 24, 32, 40, 48
MULSTEP 7, 64, 72, 80, 88, 96, 104, 112, 120, 128, 136, 144, 152, 160, 168, 176, 184, 192, 200, 208, 216, 224, 232, 240, 248, 256, 264, 272, 280, 288, 296, 304, 312, 320, 328, 336, 344, 352, 360, 368, 376, 384, 392, 400, 408, 416, 424, 432, 440, 448, 456, 464, 472, 480, 488, 496, 504, 512, 0, 8, 16, 24, 32, 40, 48, 56
MULSTEP 8, 72, 80, 88, 96, 104, 112, 120, 128, 136, 144, 152, 160, 168, 176, 184, 192, 200, 208, 216, 224, 232, 240, 248, 256, 264, 272, 280, 288, 296, 304, 312, 320, 328, 336, 344, 352, 360, 368, 376, 384, 392, 400, 408, 416, 424, 432, 440, 448, 456, 464, 472, 480, 488, 496, 504, 512, 0, 8, 16, 24, 32, 40, 48, 56, 64
MULSTEP 9, 80, 88, 96, 104, 112, 120, 128, 136, 144, 152, 160, 168, 176, 184, 192, 200, 208, 216, 224, 232, 240, 248, 256, 264, 272, 280, 288, 296, 304, 312, 320, 328, 336, 344, 352, 360, 368, 376, 384, 392, 400, 408, 416, 424, 432, 440, 448, 456, 464, 472, 480, 488, 496, 504, 512, 0, 8, 16, 24, 32, 40, 48, 56, 64, 72
MULSTEP 10, 88, 96, 104, 112, 120, 128, 136, 144, 152, 160, 168, 176, 184, 192, 200, 208, 216, 224, 232, 240, 248, 256, 264, 272, 280, 288, 296, 304, 312, 320, 328, 336, 344, 352, 360, 368, 376, 384, 392, 400, 408, 416, 424, 432, 440, 448, 456, 464, 472, 480, 488, 496, 504, 512, 0, 8, 16, 24, 32, 40, 48, 56, 64, 72, 80
MULSTEP 11, 96, 104, 112, 120, 128, 136, 144, 152, 160, 168, 176, 184, 192, 200, 208, 216, 224, 232, 240, 248, 256, 264, 272, 280, 288, 296, 304, 312, 320, 328, 336, 344, 352, 360, 368, 376, 384, 392, 400, 408, 416, 424, 432, 440, 448, 456, 464, 472, 480, 488, 496, 504, 512, 0, 8, 16, 24, 32, 40, 48, 56, 64, 72, 80, 88
MULSTEP 12, 104, 112, 120, 128, 136, 144, 152, 160, 168, 176, 184, 192, 200, 208, 216, 224, 232, 240, 248, 256, 264, 272, 280, 288, 296, 304, 312, 320, 328, 336, 344, 352, 360, 368, 376, 384, 392, 400, 408, 416, 424, 432, 440, 448, 456, 464, 472, 480, 488, 496, 504, 512, 0, 8, 16, 24, 32, 40, 48, 56, 64, 72, 80, 88, 96
MULSTEP 13, 112, 120, 128, 136, 144, 152, 160, 168, 176, 184, 192, 200, 208, 216, 224, 232, 240, 248, 256, 264, 272, 280, 288, 296, 304, 312, 320, 328, 336, 344, 352, 360, 368, 376, 384, 392, 400, 408, 416, 424, 432, 440, 448, 456, 464, 472, 480, 488, 496, 504, 512, 0, 8, 16, 24, 32, 40, 48, 56, 64, 72, 80, 88, 96, 104
MULSTEP 14, 120, 128, 136, 144, 152, 160, 168, 176, 184, 192, 200, 208, 216, 224, 232, 240, 248, 256, 264, 272, 280, 288, 296, 304, 312, 320, 328, 336, 344, 352, 360, 368, 376, 384, 392, 400, 408, 416, 424, 432, 440, 448, 456, 464, 472, 480, 488, 496, 504, 512, 0, 8, 16, 24, 32, 40, 48, 56, 64, 72, 80, 88, 96, 104, 112
MULSTEP 15, 128, 136, 144, 152, 160, 168, 176, 184, 192, 200, 208, 216, 224, 232, 240, 248, 256, 264, 272, 280, 288, 296, 304, 312, 320, 328, 336, 344, 352, 360, 368, 376, 384, 392, 400, 408, 416, 424, 432, 440, 448, 456, 464, 472, 480, 488, 496, 504, 512, 0, 8, 16, 24, 32, 40, 48, 56, 64, 72, 80, 88, 96, 104, 112, 120
MULSTEP 16, 136, 144, 152, 160, 168, 176, 184, 192, 200, 208, 216, 224, 232, 240, 248, 256, 264, 272, 280, 288, 296, 304, 312, 320, 328, 336, 344, 352, 360, 368, 376, 384, 392, 400, 408, 416, 424, 432, 440, 448, 456, 464, 472, 480, 488, 496, 504, 512, 0, 8, 16, 24, 32, 40, 48, 56, 64, 72, 80, 88, 96, 104, 112, 120, 128
MULSTEP 17, 144, 152, 160, 168, 176, 184, 192, 200, 208, 216, 224, 232, 240, 248, 256, 264, 272, 280, 288, 296, 304, 312, 320, 328, 336, 344, 352, 360, 368, 376, 384, 392, 400, 408, 416, 424, 432, 440, 448, 456, 464, 472, 480, 488, 496, 504, 512, 0, 8, 16, 24, 32, 40, 48, 56, 64, 72, 80, 88, 96, 104, 112, 120, 128, 136
MULSTEP 18, 152, 160, 168, 176, 184, 192, 200, 208, 216, 224, 232, 240, 248, 256, 264, 272, 280, 288, 296, 304, 312, 320, 328, 336, 344, 352, 360, 368, 376, 384, 392, 400, 408, 416, 424, 432, 440, 448, 456, 464, 472, 480, 488, 496, 504, 512, 0, 8, 16, 24, 32, 40, 48, 56, 64, 72, 80, 88, 96, 104, 112, 120, 128, 136, 144
MULSTEP 19, 160, 168, 176, 184, 192, 200, 208, 216, 224, 232, 240, 248, 256, 264, 272, 280, 288, 296, 304, 312, 320, 328, 336, 344, 352, 360, 368, 376, 384, 392, 400, 408, 416, 424, 432, 440, 448, 456, 464, 472, 480, 488, 496, 504, 512, 0, 8, 16, 24, 32, 40, 48, 56, 64, 72, 80, 88, 96, 104, 112, 120, 128, 136, 144, 152
MULSTEP 20, 168, 176, 184, 192, 200, 208, 216, 224, 232, 240, 248, 256, 264, 272, 280, 288, 296, 304, 312, 320, 328, 336, 344, 352, 360, 368, 376, 384, 392, 400, 408, 416, 424, 432, 440, 448, 456, 464, 472, 480, 488, 496, 504, 512, 0, 8, 16, 24, 32, 40, 48, 56, 64, 72, 80, 88, 96, 104, 112, 120, 128, 136, 144, 152, 160
MULSTEP 21, 176, 184, 192, 200, 208, 216, 224, 232, 240, 248, 256, 264, 272, 280, 288, 296, 304, 312, 320, 328, 336, 344, 352, 360, 368, 376, 384, 392, 400, 408, 416, 424, 432, 440, 448, 456, 464, 472, 480, 488, 496, 504, 512, 0, 8, 16, 24, 32, 40, 48, 56, 64, 72, 80, 88, 96, 104, 112, 120, 128, 136, 144, 152, 160, 168
MULSTEP 22, 184, 192, 200, 208, 216, 224, 232, 240, 248, 256, 264, 272, 280, 288, 296, 304, 312, 320, 328, 336, 344, 352, 360, 368, 376, 384, 392, 400, 408, 416, 424, 432, 440, 448, 456, 464, 472, 480, 488, 496, 504, 512, 0, 8, 16, 24, 32, 40, 48, 56, 64, 72, 80, 88, 96, 104, 112, 120, 128, 136, 144, 152, 160, 168, 176
MULSTEP 23, 192, 200, 208, 216, 224, 232, 240, 248, 256, 264, 272, 280, 288, 296, 304, 312, 320, 328, 336, 344, 352, 360, 368, 376, 384, 392, 400, 408, 416, 424, 432, 440, 448, 456, 464, 472, 480, 488, 496, 504, 512, 0, 8, 16, 24, 32, 40, 48, 56, 64, 72, 80, 88, 96, 104, 112, 120, 128, 136, 144, 152, 160, 168, 176, 184
MULSTEP 24, 200, 208, 216, 224, 232, 240, 248, 256, 264, 272, 280, 288, 296, 304, 312, 320, 328, 336, 344, 352, 360, 368, 376, 384, 392, 400, 408, 416, 424, 432, 440, 448, 456, 464, 472, 480, 488, 496, 504, 512, 0, 8, 16, 24, 32, 40, 48, 56, 64, 72, 80, 88, 96, 104, 112, 120, 128, 136, 144, 152, 160, 168, 176, 184, 192
MULSTEP 25, 208, 216, 224, 232, 240, 248, 256, 264, 272, 280, 288, 296, 304, 312, 320, 328, 336, 344, 352, 360, 368, 376, 384, 392, 400, 408, 416, 424, 432, 440, 448, 456, 464, 472, 480, 488, 496, 504, 512, 0, 8, 16, 24, 32, 40, 48, 56, 64, 72, 80, 88, 96, 104, 112, 120, 128, 136, 144, 152, 160, 168, 176, 184, 192, 200
MULSTEP 26, 216, 224, 232, 240, 248, 256, 264, 272, 280, 288, 296, 304, 312, 320, 328, 336, 344, 352, 360, 368, 376, 384, 392, 400, 408, 416, 424, 432, 440, 448, 456, 464, 472, 480, 488, 496, 504, 512, 0, 8, 16, 24, 32, 40, 48, 56, 64, 72, 80, 88, 96, 104, 112, 120, 128, 136, 144, 152, 160, 168, 176, 184, 192, 200, 208
MULSTEP 27, 224, 232, 240, 248, 256, 264, 272, 280, 288, 296, 304, 312, 320, 328, 336, 344, 352, 360, 368, 376, 384, 392, 400, 408, 416, 424, 432, 440, 448, 456, 464, 472, 480, 488, 496, 504, 512, 0, 8, 16, 24, 32, 40, 48, 56, 64, 72, 80, 88, 96, 104, 112, 120, 128, 136, 144, 152, 160, 168, 176, 184, 192, 200, 208, 216
MULSTEP 28, 232, 240, 248, 256, 264, 272, 280, 288, 296, 304, 312, 320, 328, 336, 344, 352, 360, 368, 376, 384, 392, 400, 408, 416, 424, 432, 440, 448, 456, 464, 472, 480, 488, 496, 504, 512, 0, 8, 16, 24, 32, 40, 48, 56, 64, 72, 80, 88, 96, 104, 112, 120, 128, 136, 144, 152, 160, 168, 176, 184, 192, 200, 208, 216, 224
MULSTEP 29, 240, 248, 256, 264, 272, 280, 288, 296, 304, 312, 320, 328, 336, 344, 352, 360, 368, 376, 384, 392, 400, 408, 416, 424, 432, 440, 448, 456, 464, 472, 480, 488, 496, 504, 512, 0, 8, 16, 24, 32, 40, 48, 56, 64, 72, 80, 88, 96, 104, 112, 120, 128, 136, 144, 152, 160, 168, 176, 184, 192, 200, 208, 216, 224, 232
MULSTEP 30, 248, 256, 264, 272, 280, 288, 296, 304, 312, 320, 328, 336, 344, 352, 360, 368, 376, 384, 392, 400, 408, 416, 424, 432, 440, 448, 456, 464, 472, 480, 488, 496, 504, 512, 0, 8, 16, 24, 32, 40, 48, 56, 64, 72, 80, 88, 96, 104, 112, 120, 128, 136, 144, 152, 160, 168, 176, 184, 192, 200, 208, 216, 224, 232, 240
MULSTEP 31, 256, 264, 272, 280, 288, 296, 304, 312, 320, 328, 336, 344, 352, 360, 368, 376, 384, 392, 400, 408, 416, 424, 432, 440, 448, 456, 464, 472, 480, 488, 496, 504, 512, 0, 8, 16, 24, 32, 40, 48, 56, 64, 72, 80, 88, 96, 104, 112, 120, 128, 136, 144, 152, 160, 168, 176, 184, 192, 200, 208, 216, 224, 232, 240, 248
MULSTEP 32, 264, 272, 280, 288, 296, 304, 312, 320, 328, 336, 344, 352, 360, 368, 376, 384, 392, 400, 408, 416, 424, 432, 440, 448, 456, 464, 472, 480, 488, 496, 504, 512, 0, 8, 16, 24, 32, 40, 48, 56, 64, 72, 80, 88, 96, 104, 112, 120, 128, 136, 144, 152, 160, 168, 176, 184, 192, 200, 208, 216, 224, 232, 240, 248, 256
MULSTEP 33, 272, 280, 288, 296, 304, 312, 320, 328, 336, 344, 352, 360, 368, 376, 384, 392, 400, 408, 416, 424, 432, 440, 448, 456, 464, 472, 480, 488, 496, 504, 512, 0, 8, 16, 24, 32, 40, 48, 56, 64, 72, 80, 88, 96, 104, 112, 120, 128, 136, 144, 152, 160, 168, 176, 184, 192, 200, 208, 216, 224, 232, 240, 248, 256, 264
MULSTEP 34, 280, 288, 296, 304, 312, 320, 328, 336, 344, 352, 360, 368, 376, 384, 392, 400, 408, 416, 424, 432, 440, 448, 456, 464, 472, 480, 488, 496, 504, 512, 0, 8, 16, 24, 32, 40, 48, 56, 64, 72, 80, 88, 96, 104, 112, 120, 128, 136, 144, 152, 160, 168, 176, 184, 192, 200, 208, 216, 224, 232, 240, 248, 256, 264, 272
MULSTEP 35, 288, 296, 304, 312, 320, 328, 336, 344, 352, 360, 368, 376, 384, 392, 400, 408, 416, 424, 432, 440, 448, 456, 464, 472, 480, 488, 496, 504, 512, 0, 8, 16, 24, 32, 40, 48, 56, 64, 72, 80, 88, 96, 104, 112, 120, 128, 136, 144, 152, 160, 168, 176, 184, 192, 200, 208, 216, 224, 232, 240, 248, 256, 264, 272, 280
MULSTEP 36, 296, 304, 312, 320, 328, 336, 344, 352, 360, 368, 376, 384, 392, 400, 408, 416, 424, 432, 440, 448, 456, 464, 472, 480, 488, 496, 504, 512, 0, 8, 16, 24, 32, 40, 48, 56, 64, 72, 80, 88, 96, 104, 112, 120, 128, 136, 144, 152, 160, 168, 176, 184, 192, 200, 208, 216, 224, 232, 240, 248, 256, 264, 272, 280, 288
MULSTEP 37, 304, 312, 320, 328, 336, 344, 352, 360, 368, 376, 384, 392, 400, 408, 416, 424, 432, 440, 448, 456, 464, 472, 480, 488, 496, 504, 512, 0, 8, 16, 24, 32, 40, 48, 56, 64, 72, 80, 88, 96, 104, 112, 120, 128, 136, 144, 152, 160, 168, 176, 184, 192, 200, 208, 216, 224, 232, 240, 248, 256, 264, 272, 280, 288, 296
MULSTEP 38, 312, 320, 328, 336, 344, 352, 360, 368, 376, 384, 392, 400, 408, 416, 424, 432, 440, 448, 456, 464, 472, 480, 488, 496, 504, 512, 0, 8, 16, 24, 32, 40, 48, 56, 64, 72, 80, 88, 96, 104, 112, 120, 128, 136, 144, 152, 160, 168, 176, 184, 192, 200, 208, 216, 224, 232, 240, 248, 256, 264, 272, 280, 288, 296, 304
MULSTEP 39, 320, 328, 336, 344, 352, 360, 368, 376, 384, 392, 400, 408, 416, 424, 432, 440, 448, 456, 464, 472, 480, 488, 496, 504, 512, 0, 8, 16, 24, 32, 40, 48, 56, 64, 72, 80, 88, 96, 104, 112, 120, 128, 136, 144, 152, 160, 168, 176, 184, 192, 200, 208, 216, 224, 232, 240, 248, 256, 264, 272, 280, 288, 296, 304, 312
MULSTEP 40, 328, 336, 344, 352, 360, 368, 376, 384, 392, 400, 408, 416, 424, 432, 440, 448, 456, 464, 472, 480, 488, 496, 504, 512, 0, 8, 16, 24, 32, 40, 48, 56, 64, 72, 80, 88, 96, 104, 112, 120, 128, 136, 144, 152, 160, 168, 176, 184, 192, 200, 208, 216, 224, 232, 240, 248, 256, 264, 272, 280, 288, 296, 304, 312, 320
MULSTEP 41, 336, 344, 352, 360, 368, 376, 384, 392, 400, 408, 416, 424, 432, 440, 448, 456, 464, 472, 480, 488, 496, 504, 512, 0, 8, 16, 24, 32, 40, 48, 56, 64, 72, 80, 88, 96, 104, 112, 120, 128, 136, 144, 152, 160, 168, 176, 184, 192, 200, 208, 216, 224, 232, 240, 248, 256, 264, 272, 280, 288, 296, 304, 312, 320, 328
MULSTEP 42, 344, 352, 360, 368, 376, 384, 392, 400, 408, 416, 424, 432, 440, 448, 456, 464, 472, 480, 488, 496, 504, 512, 0, 8, 16, 24, 32, 40, 48, 56, 64, 72, 80, 88, 96, 104, 112, 120, 128, 136, 144, 152, 160, 168, 176, 184, 192, 200, 208, 216, 224, 232, 240, 248, 256, 264, 272, 280, 288, 296, 304, 312, 320, 328, 336
MULSTEP 43, 352, 360, 368, 376, 384, 392, 400, 408, 416, 424, 432, 440, 448, 456, 464, 472, 480, 488, 496, 504, 512, 0, 8, 16, 24, 32, 40, 48, 56, 64, 72, 80, 88, 96, 104, 112, 120, 128, 136, 144, 152, 160, 168, 176, 184, 192, 200, 208, 216, 224, 232, 240, 248, 256, 264, 272, 280, 288, 296, 304, 312, 320, 328, 336, 344
MULSTEP 44, 360, 368, 376, 384, 392, 400, 408, 416, 424, 432, 440, 448, 456, 464, 472, 480, 488, 496, 504, 512, 0, 8, 16, 24, 32, 40, 48, 56, 64, 72, 80, 88, 96, 104, 112, 120, 128, 136, 144, 152, 160, 168, 176, 184, 192, 200, 208, 216, 224, 232, 240, 248, 256, 264, 272, 280, 288, 296, 304, 312, 320, 328, 336, 344, 352
MULSTEP 45, 368, 376, 384, 392, 400, 408, 416, 424, 432, 440, 448, 456, 464, 472, 480, 488, 496, 504, 512, 0, 8, 16, 24, 32, 40, 48, 56, 64, 72, 80, 88, 96, 104, 112, 120, 128, 136, 144, 152, 160, 168, 176, 184, 192, 200, 208, 216, 224, 232, 240, 248, 256, 264, 272, 280, 288, 296, 304, 312, 320, 328, 336, 344, 352, 360
MULSTEP 46, 376, 384, 392, 400, 408, 416, 424, 432, 440, 448, 456, 464, 472, 480, 488, 496, 504, 512, 0, 8, 16, 24, 32, 40, 48, 56, 64, 72, 80, 88, 96, 104, 112, 120, 128, 136, 144, 152, 160, 168, 176, 184, 192, 200, 208, 216, 224, 232, 240, 248, 256, 264, 272, 280, 288, 296, 304, 312, 320, 328, 336, 344, 352, 360, 368
MULSTEP 47, 384, 392, 400, 408, 416, 424, 432, 440, 448, 456, 464, 472, 480, 488, 496, 504, 512, 0, 8, 16, 24, 32, 40, 48, 56, 64, 72, 80, 88, 96, 104, 112, 120, 128, 136, 144, 152, 160, 168, 176, 184, 192, 200, 208, 216, 224, 232, 240, 248, 256, 264, 272, 280, 288, 296, 304, 312, 320, 328, 336, 344, 352, 360, 368, 376
MULSTEP 48, 392, 400, 408, 416, 424, 432, 440, 448, 456, 464, 472, 480, 488, 496, 504, 512, 0, 8, 16, 24, 32, 40, 48, 56, 64, 72, 80, 88, 96, 104, 112, 120, 128, 136, 144, 152, 160, 168, 176, 184, 192, 200, 208, 216, 224, 232, 240, 248, 256, 264, 272, 280, 288, 296, 304, 312, 320, 328, 336, 344, 352, 360, 368, 376, 384
MULSTEP 49, 400, 408, 416, 424, 432, 440, 448, 456, 464, 472, 480, 488, 496, 504, 512, 0, 8, 16, 24, 32, 40, 48, 56, 64, 72, 80, 88, 96, 104, 112, 120, 128, 136, 144, 152, 160, 168, 176, 184, 192, 200, 208, 216, 224, 232, 240, 248, 256, 264, 272, 280, 288, 296, 304, 312, 320, 328, 336, 344, 352, 360, 368, 376, 384, 392
MULSTEP 50, 408, 416, 424, 432, 440, 448, 456, 464, 472, 480, 488, 496, 504, 512, 0, 8, 16, 24, 32, 40, 48, 56, 64, 72, 80, 88, 96, 104, 112, 120, 128, 136, 144, 152, 160, 168, 176, 184, 192, 200, 208, 216, 224, 232, 240, 248, 256, 264, 272, 280, 288, 296, 304, 312, 320, 328, 336, 344, 352, 360, 368, 376, 384, 392, 400
MULSTEP 51, 416, 424, 432, 440, 448, 456, 464, 472, 480, 488, 496, 504, 512, 0, 8, 16, 24, 32, 40, 48, 56, 64, 72, 80, 88, 96, 104, 112, 120, 128, 136, 144, 152, 160, 168, 176, 184, 192, 200, 208, 216, 224, 232, 240, 248, 256, 264, 272, 280, 288, 296, 304, 312, 320, 328, 336, 344, 352, 360, 368, 376, 384, 392, 400, 408
MULSTEP 52, 424, 432, 440, 448, 456, 464, 472, 480, 488, 496, 504, 512, 0, 8, 16, 24, 32, 40, 48, 56, 64, 72, 80, 88, 96, 104, 112, 120, 128, 136, 144, 152, 160, 168, 176, 184, 192, 200, 208, 216, 224, 232, 240, 248, 256, 264, 272, 280, 288, 296, 304, 312, 320, 328, 336, 344, 352, 360, 368, 376, 384, 392, 400, 408, 416
MULSTEP 53, 432, 440, 448, 456, 464, 472, 480, 488, 496, 504, 512, 0, 8, 16, 24, 32, 40, 48, 56, 64, 72, 80, 88, 96, 104, 112, 120, 128, 136, 144, 152, 160, 168, 176, 184, 192, 200, 208, 216, 224, 232, 240, 248, 256, 264, 272, 280, 288, 296, 304, 312, 320, 328, 336, 344, 352, 360, 368, 376, 384, 392, 400, 408, 416, 424
MULSTEP 54, 440, 448, 456, 464, 472, 480, 488, 496, 504, 512, 0, 8, 16, 24, 32, 40, 48, 56, 64, 72, 80, 88, 96, 104, 112, 120, 128, 136, 144, 152, 160, 168, 176, 184, 192, 200, 208, 216, 224, 232, 240, 248, 256, 264, 272, 280, 288, 296, 304, 312, 320, 328, 336, 344, 352, 360, 368, 376, 384, 392, 400, 408, 416, 424, 432
MULSTEP 55, 448, 456, 464, 472, 480, 488, 496, 504, 512, 0, 8, 16, 24, 32, 40, 48, 56, 64, 72, 80, 88, 96, 104, 112, 120, 128, 136, 144, 152, 160, 168, 176, 184, 192, 200, 208, 216, 224, 232, 240, 248, 256, 264, 272, 280, 288, 296, 304, 312, 320, 328, 336, 344, 352, 360, 368, 376, 384, 392, 400, 408, 416, 424, 432, 440
MULSTEP 56, 456, 464, 472, 480, 488, 496, 504, 512, 0, 8, 16, 24, 32, 40, 48, 56, 64, 72, 80, 88, 96, 104, 112, 120, 128, 136, 144, 152, 160, 168, 176, 184, 192, 200, 208, 216, 224, 232, 240, 248, 256, 264, 272, 280, 288, 296, 304, 312, 320, 328, 336, 344, 352, 360, 368, 376, 384, 392, 400, 408, 416, 424, 432, 440, 448
MULSTEP 57, 464, 472, 480, 488, 496, 504, 512, 0, 8, 16, 24, 32, 40, 48, 56, 64, 72, 80, 88, 96, 104, 112, 120, 128, 136, 144, 152, 160, 168, 176, 184, 192, 200, 208, 216, 224, 232, 240, 248, 256, 264, 272, 280, 288, 296, 304, 312, 320, 328, 336, 344, 352, 360, 368, 376, 384, 392, 400, 408, 416, 424, 432, 440, 448, 456
MULSTEP 58, 472, 480, 488, 496, 504, 512, 0, 8, 16, 24, 32, 40, 48, 56, 64, 72, 80, 88, 96, 104, 112, 120, 128, 136, 144, 152, 160, 168, 176, 184, 192, 200, 208, 216, 224, 232, 240, 248, 256, 264, 272, 280, 288, 296, 304, 312, 320, 328, 336, 344, 352, 360, 368, 376, 384, 392, 400, 408, 416, 424, 432, 440, 448, 456, 464
MULSTEP 59, 480, 488, 496, 504, 512, 0, 8, 16, 24, 32, 40, 48, 56, 64, 72, 80, 88, 96, 104, 112, 120, 128, 136, 144, 152, 160, 168, 176, 184, 192, 200, 208, 216, 224, 232, 240, 248, 256, 264, 272, 280, 288, 296, 304, 312, 320, 328, 336, 344, 352, 360, 368, 376, 384, 392, 400, 408, 416, 424, 432, 440, 448, 456, 464, 472
MULSTEP 60, 488, 496, 504, 512, 0, 8, 16, 24, 32, 40, 48, 56, 64, 72, 80, 88, 96, 104, 112, 120, 128, 136, 144, 152, 160, 168, 176, 184, 192, 200, 208, 216, 224, 232, 240, 248, 256, 264, 272, 280, 288, 296, 304, 312, 320, 328, 336, 344, 352, 360, 368, 376, 384, 392, 400, 408, 416, 424, 432, 440, 448, 456, 464, 472, 480
MULSTEP 61, 496, 504, 512, 0, 8, 16, 24, 32, 40, 48, 56, 64, 72, 80, 88, 96, 104, 112, 120, 128, 136, 144, 152, 160, 168, 176, 184, 192, 200, 208, 216, 224, 232, 240, 248, 256, 264, 272, 280, 288, 296, 304, 312, 320, 328, 336, 344, 352, 360, 368, 376, 384, 392, 400, 408, 416, 424, 432, 440, 448, 456, 464, 472, 480, 488
MULSTEP 62, 504, 512, 0, 8, 16, 24, 32, 40, 48, 56, 64, 72, 80, 88, 96, 104, 112, 120, 128, 136, 144, 152, 160, 168, 176, 184, 192, 200, 208, 216, 224, 232, 240, 248, 256, 264, 272, 280, 288, 296, 304, 312, 320, 328, 336, 344, 352, 360, 368, 376, 384, 392, 400, 408, 416, 424, 432, 440, 448, 456, 464, 472, 480, 488, 496
MULSTEP 63, 512, 0, 8, 16, 24, 32, 40, 48, 56, 64, 72, 80, 88, 96, 104, 112, 120, 128, 136, 144, 152, 160, 168, 176, 184, 192, 200, 208, 216, 224, 232, 240, 248, 256, 264, 272, 280, 288, 296, 304, 312, 320, 328, 336, 344, 352, 360, 368, 376, 384, 392, 400, 408, 416, 424, 432, 440, 448, 456, 464, 472, 480, 488, 496, 504


    mov rdi,[rsp+520]

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
    mov r11,[rsp+256]
    mov [rdi+256],r11
    mov r11,[rsp+264]
    mov [rdi+264],r11
    mov r11,[rsp+272]
    mov [rdi+272],r11
    mov r11,[rsp+280]
    mov [rdi+280],r11
    mov r11,[rsp+288]
    mov [rdi+288],r11
    mov r11,[rsp+296]
    mov [rdi+296],r11
    mov r11,[rsp+304]
    mov [rdi+304],r11
    mov r11,[rsp+312]
    mov [rdi+312],r11
    mov r11,[rsp+320]
    mov [rdi+320],r11
    mov r11,[rsp+328]
    mov [rdi+328],r11
    mov r11,[rsp+336]
    mov [rdi+336],r11
    mov r11,[rsp+344]
    mov [rdi+344],r11
    mov r11,[rsp+352]
    mov [rdi+352],r11
    mov r11,[rsp+360]
    mov [rdi+360],r11
    mov r11,[rsp+368]
    mov [rdi+368],r11
    mov r11,[rsp+376]
    mov [rdi+376],r11
    mov r11,[rsp+384]
    mov [rdi+384],r11
    mov r11,[rsp+392]
    mov [rdi+392],r11
    mov r11,[rsp+400]
    mov [rdi+400],r11
    mov r11,[rsp+408]
    mov [rdi+408],r11
    mov r11,[rsp+416]
    mov [rdi+416],r11
    mov r11,[rsp+424]
    mov [rdi+424],r11
    mov r11,[rsp+432]
    mov [rdi+432],r11
    mov r11,[rsp+440]
    mov [rdi+440],r11
    mov r11,[rsp+448]
    mov [rdi+448],r11
    mov r11,[rsp+456]
    mov [rdi+456],r11
    mov r11,[rsp+464]
    mov [rdi+464],r11
    mov r11,[rsp+472]
    mov [rdi+472],r11
    mov r11,[rsp+480]
    mov [rdi+480],r11
    mov r11,[rsp+488]
    mov [rdi+488],r11
    mov r11,[rsp+496]
    mov [rdi+496],r11
    mov r11,[rsp+504]
    mov [rdi+504],r11
    add rsp,528

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
    POWSTEP 32
    POWSTEP 33
    POWSTEP 34
    POWSTEP 35
    POWSTEP 36
    POWSTEP 37
    POWSTEP 38
    POWSTEP 39
    POWSTEP 40
    POWSTEP 41
    POWSTEP 42
    POWSTEP 43
    POWSTEP 44
    POWSTEP 45
    POWSTEP 46
    POWSTEP 47
    POWSTEP 48
    POWSTEP 49
    POWSTEP 50
    POWSTEP 51
    POWSTEP 52
    POWSTEP 53
    POWSTEP 54
    POWSTEP 55
    POWSTEP 56
    POWSTEP 57
    POWSTEP 58
    POWSTEP 59
    POWSTEP 60
    POWSTEP 61
    POWSTEP 62
    POWSTEP 63
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
