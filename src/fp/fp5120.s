.intel_syntax noprefix

.section .rodata

.set pbits,5119
.set pbytes,640
.set plimbs,80


.global p
p:
.quad 0xE0275BF49ABB3A13,0x61D254AF9A9F35E,0xE5209406D3512169,0x81AE416B05962937 
.quad 0xA0B7A166C9E02ED,0x6E3A37AFF8234B5E,0x95D109261F4BAAD4,0x8CF1E0C2C54D4D41 
.quad 0x7C5B9563D7D8D5B,0x8AA237FA8322C0E9,0xE20D335F468780DE,0xBB462ED7F7A46851 
.quad 0xC9595B714E8B4357,0x6B82B8D6B2933E65,0xFBE116DBF85C78AF,0x1D273B846D0F0E35 
.quad 0xF1D6E8423B3901EC,0xB993E49FD0A27BEC,0x9C6694E460D49A1E,0x2186EB117756F902 
.quad 0xAB0D1FF580660519,0x24474ACA601FBAAB,0xFF2FAB0857F3C575,0xF250158BBC39565E 
.quad 0x616042692E277451,0xE4D59DEB04C7AA2E,0xD86C62748C1A04A4,0xFC62BC43B1590161 
.quad 0xA51F1FC12E1D4706,0x5A7939C9C0232736,0x90C5FBB03764ACD2,0x80AA90D494FD89AA 
.quad 0x5CA93DB126E442C3,0xD154C8287BE183DD,0x6ACF3935B5762B28,0xCFC59A82C71B0583 
.quad 0x83819172EC3DCC8C,0x46CE1CDF75ACFC3E,0x192806324782ADAB,0x37A0E7579938DB2B 
.quad 0xE3C53C005E1BFCD5,0x4ADA4FE13B939E32,0xF9EC47ECC4958DD2,0x63D4CCB80BB2CA58 
.quad 0xA28EFC6F35F78BDE,0xFDE5613B3598281C,0xB2BD2F004B777D,0x7B25279F4CA8159B 
.quad 0x371E2D8E4881777E,0xB2CAE470DA76E47B,0xEAB891535EAB1859,0x9A08430F03935746 
.quad 0x11DDDC4BE596EE9F,0xFFE3F95D18943443,0x6279DA46683D3654,0x74BA253AB7948C43 
.quad 0xF861C8F4230F7321,0xDAD6E0BDD235F2F2,0xBA0385CB1EBD758A,0x291A7F4CBEE79692 
.quad 0x2E4013E60D3CEF98,0xD799A5D736E05EC8,0x13A7DEF439A9EC50,0xCA7505F531EAC502 
.quad 0xAEAA3C015038D96F,0x73D4D63A95C7799,0x1E77D7ABD84D5654,0x52F679FD8CBBE41A 
.quad 0x99BD43C133D8B1E2,0x225E9540EDD9204C,0x7DE8B5F91B5DD3EF,0xEC5FA56ABACF621B 
.quad 0x6AD35EB4A0BE46B7,0x8C68BBF501F2D797,0xC7BA3029A9963B1D,0x98BAD858C8F3D076 
.quad 0x7E8D0E15776FBBBE,0x6BA2EBF8106B774E,0x667812D33039CF2F,0x4B8377CF507CA21A 



.global inv_min_p_mod_r
inv_min_p_mod_r:
.quad 0xDD752BA7F3285FE5,0x5F58B3A1DDE859DB,0x2F3CC126805584B1,0x54E791CC36AFD10A 
.quad 0x4E238D36F73A2A14,0xB9E8486535BA5F33,0x4B78BFB3CB649741,0x23F36050C1B22733 
.quad 0xF442B3B18A396C34,0xB5635A0470C258F4,0xDEFA5260DBFE6B0D,0x32A65FE68A315F52 
.quad 0xB712768FF7998497,0x283968C94B46A95C,0x13AF512526C9AD75,0x19A37F2642A75228 
.quad 0x9727E65871C8BCD5,0xD70C4DC5D76BD7B4,0xEEEB0572D070162E,0x60A23C18EFB84F2A 
.quad 0x947C8F2CF56A93E,0x2431737B045565D1,0xB5CCE6EACB508011,0xD1518457954D0AAE 
.quad 0x60E8F57125874304,0x40F2899DBDA415B,0xAD9067A3F48D5753,0xB95C7794EB525229 
.quad 0x6DA6D8EE20D38C12,0xB32FBD79BC862165,0x185DA5BB3BEE2172,0x31F5FF218CB3254C 
.quad 0x604DC26A1CE05761,0xD094D8833FE2FB90,0x68B8CD5A93D2EC0D,0x1166B0F4D258D597 
.quad 0xD6DE4F6E14CA6B61,0xF7C5DB1A675D35B,0x2D5D5CAB72D8CAE9,0x266FDED6960AA574 
.quad 0x69FA054E69BF9A7A,0x58029C9233F94EB9,0x9426C7A1982365AB,0xCAAC3C17830880A4 
.quad 0xF4B13B60A70D04F,0x41AF17E8727B8215,0x96F9E8C549266715,0x4439F736F488380 
.quad 0x576CC54F46CF5E37,0x88DEDF076E13FC8D,0x4850334A8EDEC9CB,0xC000E138D84D65A2 
.quad 0x3646951CBB2FF89B,0x5931DD8F0F25D02,0xD713F557C8E262A2,0xBE4AA3A722C39607 
.quad 0x87325B8C98D49F1F,0x99697811AB5BF836,0xE73E4D22D3B1215F,0xAFCC129CAF0C73F5 
.quad 0x4F99ABC816FAC7E4,0x8B90FB57E205AC83,0xBE2C3FCB163BB160,0x5D6E7D2D35A991AB 
.quad 0xB7132D7D832AF4BB,0xBCD7D4BB6B07FB32,0x22D4EB5ED852CACC,0x2E4D6A9FF67B29A3 
.quad 0x3977EE7E3BEADB5C,0x4172A70ACC8245B4,0xF6F03E771742CEAC,0x626E8CBDD5B2BD0F 
.quad 0xBFFA6AC560442596,0xFF8D59C102F3DE50,0x7FFEA5863E7985C1,0x2BFDE0CC3D2BA940 
.quad 0xFBD801D14383A902,0x872716070C7994B5,0xC443D8C98CCEFC77,0x355E6149B6E6B45D 



.global fp_0
fp_0:
.zero pbytes


.global fp_1
fp_1:
.quad 0x5F89EC222FCE51C7,0xEDA8901F130225E3,0x509E43EB860C9BC4,0x7AF53BBEEF3D8458 
.quad 0xE1DD91BCBA25F737,0xB55158F017961DE5,0x3E8CE48DA21CFF82,0x592A5DB7B018183B 
.quad 0xE8AED3FD478757ED,0x601958107697BD44,0x59D865E22C697D64,0xCE2D73781912C70A 
.quad 0xA3F3EDAC145E35F8,0xBD77D57BE84644CE,0xC5CBB6C16EA95F1,0xA88A4D72B8D2D55E 
.quad 0x2A7B47394E54FA3B,0xD34452208E188C39,0x2ACC4152DD8231A3,0x9B6B3ECB99FB14F8 
.quad 0xFED8A01F7ECDF0B4,0x932A1FA0DFA0CFFC,0x270FEE6F824AFA0,0x290FBF5CCB53FCE3 
.quad 0xDBDF38C47589A30A,0x517F263EF1A90174,0x76BAD8A25BB1F211,0xAD7CB34EBF4FBDA 
.quad 0x10A2A0BC75A82AEB,0xF09452A2BF968A5C,0x4DAE0CEF59D1F988,0x7E004D8241076300 
.quad 0xEA0446EC8B5337B5,0x8C01A7868C5B7467,0xBF92545EDF9D7E85,0x90AF3077AAAEEF75 
.quad 0x757B4BA73B469A59,0x2B95A9619EF90B44,0xB487ED692977F6FE,0x591D49F934556E7E 
.quad 0x54B04BFEE5AC0980,0x1F71105C4D452567,0x123B2839B23F5689,0xD48199D7DCE7A0F5 
.quad 0x18530AB25E195C64,0x64FDC4E5F3787AA,0xFDE7C872FF1D9986,0x8E9089221A07BF2E 
.quad 0x5AA57755267B9984,0xE79F52AD709B528E,0x3FD64C05E3FEB6F2,0x31E736D2F545FA2B 
.quad 0xCA666B1C4F3B3421,0x5413E8B6436336,0xD892712CC7485D01,0xA1D1904FD9425B35 
.quad 0x16DAA52396D1A69B,0x6F7B5DC6895E2727,0xD1F56E9EA3C79F5F,0x84B08219C3493C47 
.quad 0x753FC44DD8493137,0x79330E7A5B5EE3A7,0xC508632353023B0D,0xA0A0EE206A3FB0F9 
.quad 0xF4014BFC0F5573B0,0xEA4817D503EA9932,0xA49878FC7717FD03,0x71C920759CC53B1 
.quad 0x32C834BC6475EA59,0x98E4403D36749F1A,0x8645DE14ADE68432,0x3AE10FBFCF91D9AD 
.quad 0xBF85E3E21DC52BD8,0x5AC5CC20FA277939,0xA8D16F83033D4EA7,0x35CF76F5A5248E9B 
.quad 0x8458D5BF99B0CCC4,0xBD173C17CEBD9A14,0xCC97C7866F529271,0x1D7598920E8A19B0 



.global r_squared_mod_p 
r_squared_mod_p :
.quad 0x6E43FB4D918DA06F,0x58BF8863DCBF99F4,0x755DC1074D64A522,0xAF55AE3AD2E9196D 
.quad 0xA333482AC6D26A5A,0x9780399E01AE4179,0xB46B898C512BA71C,0xA9248C001A88B222 
.quad 0x5CC175F5F119A691,0x36120CA630067198,0x1E9E073B819DEAB9,0xD2D53786BFAD1D41 
.quad 0xDBC9F72700E0ABB6,0x4C4089C17EA4B7C0,0x3D90E53C39AD7C7C,0x42C3179550BDAEBF 
.quad 0x727617282894C2C9,0x5FA0DDF72828B2E,0x1693995BFDD8C319,0xE6F1ECC5DAA41979 
.quad 0x69DE3D17F4FE780F,0x3E251B8D3629FC64,0x691FB1146F73930D,0xC158446BB6828C1 
.quad 0x233440153B3A9A2C,0x557074ED915A067D,0x9B75BB41515C87A4,0x871628EDB005A14D 
.quad 0x81E6E6DA7EA73716,0x52726C6CAD28B82A,0x83BE99EDFA4F5DAC,0x8BE61F626A88F37E 
.quad 0x3C679D921996DBB5,0x90E99E885FEF2546,0x2EEF3086AE895F75,0x647DEA6A5AD7F567 
.quad 0x3BE0F72262F4E0C4,0xDDA82E68682041DF,0xC01CC2885DB4BBAD,0x4A25CFCCC60EFCC4 
.quad 0x60574DB2135E5630,0x9DDB837F04324C3A,0x8B0B30B143A2D7EC,0x369B99AEAD96FE54 
.quad 0xC249C33E74841E60,0xBAD5F630DC3AE187,0x59108D3E78A5BF00,0xC162828B0DB606B7 
.quad 0xE6AC66BC3974C5D0,0x1496FFF89950D24E,0x31A1E52F47AB15A9,0x5AA1ABE974D90967 
.quad 0x3997AB532CF6DBB0,0xCEC8F57788BD414F,0x1B6CEC306543490B,0x1603EDA0330F506E 
.quad 0x9711F8108F4C171F,0xCD8BC02E6E597E9D,0xA459322FF38D4DA6,0xED57619828758F0B 
.quad 0xC78C564F1BE8156C,0x5E11FE31470FB7D,0x25EF94A8FF9F4BB8,0x3EBFC5D1109401E3 
.quad 0xA64E77B237E0D836,0x1400CA0137FF34A7,0x8B4229964BB0806,0xD826EB57ADF5A21C 
.quad 0x611001F79B9CDBD1,0x7D54FBA3EAED850F,0x59FE6D82B22BAA61,0x7BF3B40B195F253F 
.quad 0x289E0FC337300050,0x30C57D6FC62B5EBF,0xDA8662B77F613616,0xDB3842D852D37827 
.quad 0xEDE1759E2C4D5240,0xF48BBA7E5ACF0B57,0x5A60B3704FE39706,0x32A17FE7E931EE69 



.global p_minus_2
p_minus_2:
.quad 0xE0275BF49ABB3A11,0x61D254AF9A9F35E,0xE5209406D3512169,0x81AE416B05962937 
.quad 0xA0B7A166C9E02ED,0x6E3A37AFF8234B5E,0x95D109261F4BAAD4,0x8CF1E0C2C54D4D41 
.quad 0x7C5B9563D7D8D5B,0x8AA237FA8322C0E9,0xE20D335F468780DE,0xBB462ED7F7A46851 
.quad 0xC9595B714E8B4357,0x6B82B8D6B2933E65,0xFBE116DBF85C78AF,0x1D273B846D0F0E35 
.quad 0xF1D6E8423B3901EC,0xB993E49FD0A27BEC,0x9C6694E460D49A1E,0x2186EB117756F902 
.quad 0xAB0D1FF580660519,0x24474ACA601FBAAB,0xFF2FAB0857F3C575,0xF250158BBC39565E 
.quad 0x616042692E277451,0xE4D59DEB04C7AA2E,0xD86C62748C1A04A4,0xFC62BC43B1590161 
.quad 0xA51F1FC12E1D4706,0x5A7939C9C0232736,0x90C5FBB03764ACD2,0x80AA90D494FD89AA 
.quad 0x5CA93DB126E442C3,0xD154C8287BE183DD,0x6ACF3935B5762B28,0xCFC59A82C71B0583 
.quad 0x83819172EC3DCC8C,0x46CE1CDF75ACFC3E,0x192806324782ADAB,0x37A0E7579938DB2B 
.quad 0xE3C53C005E1BFCD5,0x4ADA4FE13B939E32,0xF9EC47ECC4958DD2,0x63D4CCB80BB2CA58 
.quad 0xA28EFC6F35F78BDE,0xFDE5613B3598281C,0xB2BD2F004B777D,0x7B25279F4CA8159B 
.quad 0x371E2D8E4881777E,0xB2CAE470DA76E47B,0xEAB891535EAB1859,0x9A08430F03935746 
.quad 0x11DDDC4BE596EE9F,0xFFE3F95D18943443,0x6279DA46683D3654,0x74BA253AB7948C43 
.quad 0xF861C8F4230F7321,0xDAD6E0BDD235F2F2,0xBA0385CB1EBD758A,0x291A7F4CBEE79692 
.quad 0x2E4013E60D3CEF98,0xD799A5D736E05EC8,0x13A7DEF439A9EC50,0xCA7505F531EAC502 
.quad 0xAEAA3C015038D96F,0x73D4D63A95C7799,0x1E77D7ABD84D5654,0x52F679FD8CBBE41A 
.quad 0x99BD43C133D8B1E2,0x225E9540EDD9204C,0x7DE8B5F91B5DD3EF,0xEC5FA56ABACF621B 
.quad 0x6AD35EB4A0BE46B7,0x8C68BBF501F2D797,0xC7BA3029A9963B1D,0x98BAD858C8F3D076 
.quad 0x7E8D0E15776FBBBE,0x6BA2EBF8106B774E,0x667812D33039CF2F,0x4B8377CF507CA21A 



.global p_minus_1_halves
p_minus_1_halves:
.quad 0x7013ADFA4D5D9D09,0x830E92A57CD4F9AF,0xF2904A0369A890B4,0xC0D720B582CB149B 
.quad 0x505BD0B364F0176,0x371D1BD7FC11A5AF,0xCAE884930FA5D56A,0xC678F06162A6A6A0 
.quad 0x83E2DCAB1EBEC6AD,0x45511BFD41916074,0xF10699AFA343C06F,0xDDA3176BFBD23428 
.quad 0xE4ACADB8A745A1AB,0xB5C15C6B59499F32,0xFDF08B6DFC2E3C57,0xE939DC23687871A 
.quad 0x78EB74211D9C80F6,0x5CC9F24FE8513DF6,0x4E334A72306A4D0F,0x90C37588BBAB7C81 
.quad 0xD5868FFAC033028C,0x9223A565300FDD55,0x7F97D5842BF9E2BA,0xF9280AC5DE1CAB2F 
.quad 0x30B021349713BA28,0x726ACEF58263D517,0xEC36313A460D0252,0x7E315E21D8AC80B0 
.quad 0x528F8FE0970EA383,0x2D3C9CE4E011939B,0x4862FDD81BB25669,0xC055486A4A7EC4D5 
.quad 0xAE549ED893722161,0x68AA64143DF0C1EE,0xB5679C9ADABB1594,0x67E2CD41638D82C1 
.quad 0x41C0C8B9761EE646,0xA3670E6FBAD67E1F,0x8C94031923C156D5,0x9BD073ABCC9C6D95 
.quad 0x71E29E002F0DFE6A,0x256D27F09DC9CF19,0x7CF623F6624AC6E9,0x31EA665C05D9652C 
.quad 0x51477E379AFBC5EF,0xFEF2B09D9ACC140E,0x80595E978025BBBE,0x3D9293CFA6540ACD 
.quad 0x9B8F16C72440BBBF,0xD96572386D3B723D,0x755C48A9AF558C2C,0xCD04218781C9ABA3 
.quad 0x88EEEE25F2CB774F,0x7FF1FCAE8C4A1A21,0xB13CED23341E9B2A,0xBA5D129D5BCA4621 
.quad 0x7C30E47A1187B990,0x6D6B705EE91AF979,0x5D01C2E58F5EBAC5,0x148D3FA65F73CB49 
.quad 0x172009F3069E77CC,0x6BCCD2EB9B702F64,0x9D3EF7A1CD4F628,0xE53A82FA98F56281 
.quad 0xD7551E00A81C6CB7,0x39EA6B1D4AE3BCC,0xF3BEBD5EC26AB2A,0x297B3CFEC65DF20D 
.quad 0x4CDEA1E099EC58F1,0x912F4AA076EC9026,0xBEF45AFC8DAEE9F7,0xF62FD2B55D67B10D 
.quad 0xB569AF5A505F235B,0xC6345DFA80F96BCB,0x63DD1814D4CB1D8E,0x4C5D6C2C6479E83B 
.quad 0x3F46870ABBB7DDDF,0xB5D175FC0835BBA7,0x333C0969981CE797,0x25C1BBE7A83E510D 



.global p_minus_3_quarters
p_minus_3_quarters:
.quad 0xB809D6FD26AECE84,0x41874952BE6A7CD7,0xF9482501B4D4485A,0x606B905AC1658A4D 
.quad 0x8282DE859B2780BB,0x1B8E8DEBFE08D2D7,0x6574424987D2EAB5,0xE33C7830B1535350 
.quad 0x41F16E558F5F6356,0xA2A88DFEA0C8B03A,0x78834CD7D1A1E037,0xEED18BB5FDE91A14 
.quad 0x725656DC53A2D0D5,0xDAE0AE35ACA4CF99,0x7EF845B6FE171E2B,0x749CEE11B43C38D 
.quad 0x3C75BA108ECE407B,0xAE64F927F4289EFB,0xA719A53918352687,0x4861BAC45DD5BE40 
.quad 0xEAC347FD60198146,0x4911D2B29807EEAA,0xBFCBEAC215FCF15D,0x7C940562EF0E5597 
.quad 0x9858109A4B89DD14,0x3935677AC131EA8B,0x761B189D23068129,0xBF18AF10EC564058 
.quad 0xA947C7F04B8751C1,0x969E4E727008C9CD,0xA4317EEC0DD92B34,0xE02AA435253F626A 
.quad 0x572A4F6C49B910B0,0x3455320A1EF860F7,0xDAB3CE4D6D5D8ACA,0x33F166A0B1C6C160 
.quad 0xA0E0645CBB0F7323,0xD1B38737DD6B3F0F,0xC64A018C91E0AB6A,0x4DE839D5E64E36CA 
.quad 0xB8F14F001786FF35,0x92B693F84EE4E78C,0x3E7B11FB31256374,0x98F5332E02ECB296 
.quad 0x28A3BF1BCD7DE2F7,0x7F79584ECD660A07,0xC02CAF4BC012DDDF,0x9EC949E7D32A0566 
.quad 0xCDC78B6392205DDF,0x6CB2B91C369DB91E,0xBAAE2454D7AAC616,0xE68210C3C0E4D5D1 
.quad 0xC4777712F965BBA7,0x3FF8FE5746250D10,0xD89E76919A0F4D95,0x5D2E894EADE52310 
.quad 0xBE18723D08C3DCC8,0xB6B5B82F748D7CBC,0xAE80E172C7AF5D62,0xA469FD32FB9E5A4 
.quad 0xB9004F9834F3BE6,0x35E66975CDB817B2,0x84E9F7BD0E6A7B14,0xF29D417D4C7AB140 
.quad 0x6BAA8F00540E365B,0x1CF5358EA571DE6,0x879DF5EAF6135595,0x94BD9E7F632EF906 
.quad 0x266F50F04CF62C78,0xC897A5503B764813,0xDF7A2D7E46D774FB,0xFB17E95AAEB3D886 
.quad 0xDAB4D7AD282F91AD,0x631A2EFD407CB5E5,0xB1EE8C0A6A658EC7,0xA62EB616323CF41D 
.quad 0x9FA343855DDBEEEF,0xDAE8BAFE041ADDD3,0x999E04B4CC0E73CB,0x12E0DDF3D41F2886 



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

    mov rdi, [rbp +  512]
    sbb rdi, [rip + p +  512]
    mov rsi, [rbp +  520]
    sbb rsi, [rip + p +  520]
    mov rdx, [rbp +  528]
    sbb rdx, [rip + p +  528]
    mov rcx, [rbp +  536]
    sbb rcx, [rip + p +  536]
    mov r8, [rbp +  544]
    sbb r8, [rip + p +  544]
    mov r9, [rbp +  552]
    sbb r9, [rip + p +  552]
    mov r10, [rbp +  560]
    sbb r10, [rip + p +  560]
    mov r11, [rbp +  568]
    sbb r11, [rip + p +  568]

    mov rdi, [rbp +  576]
    sbb rdi, [rip + p +  576]
    mov rsi, [rbp +  584]
    sbb rsi, [rip + p +  584]
    mov rdx, [rbp +  592]
    sbb rdx, [rip + p +  592]
    mov rcx, [rbp +  600]
    sbb rcx, [rip + p +  600]
    mov r8, [rbp +  608]
    sbb r8, [rip + p +  608]
    mov r9, [rbp +  616]
    sbb r9, [rip + p +  616]
    mov r10, [rbp +  624]
    sbb r10, [rip + p +  624]
    mov r11, [rbp +  632]
    sbb r11, [rip + p +  632]


    setnc al
    movzx rax, al
    neg rax

.macro cswap2, r, m
    xor \r, \m
    and \r, rax
    xor \m, \r
.endm


    cswap2 rdi, [rbp +  576]
    cswap2 rsi, [rbp +  584]
    cswap2 rdx, [rbp +  592]
    cswap2 rcx, [rbp +  600]
    cswap2 r8, [rbp +  608]
    cswap2 r9, [rbp +  616]
    cswap2 r10, [rbp +  624]
    cswap2 r11, [rbp +  632]

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

    mov rdi, [rbp +  512]
    sbb rdi, [rip + p +  512]
    mov rsi, [rbp +  520]
    sbb rsi, [rip + p +  520]
    mov rdx, [rbp +  528]
    sbb rdx, [rip + p +  528]
    mov rcx, [rbp +  536]
    sbb rcx, [rip + p +  536]
    mov r8, [rbp +  544]
    sbb r8, [rip + p +  544]
    mov r9, [rbp +  552]
    sbb r9, [rip + p +  552]
    mov r10, [rbp +  560]
    sbb r10, [rip + p +  560]
    mov r11, [rbp +  568]
    sbb r11, [rip + p +  568]

    cswap2 rdi, [rbp +  512]
    cswap2 rsi, [rbp +  520]
    cswap2 rdx, [rbp +  528]
    cswap2 rcx, [rbp +  536]
    cswap2 r8, [rbp +  544]
    cswap2 r9, [rbp +  552]
    cswap2 r10, [rbp +  560]
    cswap2 r11, [rbp +  568]

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

  sub rsp, 656
  mov [rsp+ 648],rdi
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
  mov [rsp+520],rax
  mov [rsp+528],rax
  mov [rsp+536],rax
  mov [rsp+544],rax
  mov [rsp+552],rax
  mov [rsp+560],rax
  mov [rsp+568],rax
  mov [rsp+576],rax
  mov [rsp+584],rax
  mov [rsp+592],rax
  mov [rsp+600],rax
  mov [rsp+608],rax
  mov [rsp+616],rax
  mov [rsp+624],rax
  mov [rsp+632],rax
  mov [rsp+640],rax


.macro MULSTEP, k, I0,I1,I2,I3,I4,I5,I6,I7,I8,I9,I10,I11,I12,I13,I14,I15,I16,I17,I18,I19,I20,I21,I22,I23,I24,I25,I26,I27,I28,I29,I30,I31,I32,I33,I34,I35,I36,I37,I38,I39,I40,I41,I42,I43,I44,I45,I46,I47,I48,I49,I50,I51,I52,I53,I54,I55,I56,I57,I58,I59,I60,I61,I62,I63,I64,I65,I66,I67,I68,I69,I70,I71,I72,I73,I74,I75,I76,I77,I78,I79,I80

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
    mulx rbx, rax, [rip + p +  512]
    adcx r11, rcx
   adox r11, rax
    mov [rsp+\I64],r11

    mov r11,[rsp+\I65]
    mulx rcx, rax, [rip + p +  520]
    adcx r11, rbx
   adox r11, rax
    mov [rsp+\I65],r11

    mov r11,[rsp+\I66]
    mulx rbx, rax, [rip + p +  528]
    adcx r11, rcx
   adox r11, rax
    mov [rsp+\I66],r11

    mov r11,[rsp+\I67]
    mulx rcx, rax, [rip + p +  536]
    adcx r11, rbx
   adox r11, rax
    mov [rsp+\I67],r11

    mov r11,[rsp+\I68]
    mulx rbx, rax, [rip + p +  544]
    adcx r11, rcx
   adox r11, rax
    mov [rsp+\I68],r11

    mov r11,[rsp+\I69]
    mulx rcx, rax, [rip + p +  552]
    adcx r11, rbx
   adox r11, rax
    mov [rsp+\I69],r11

    mov r11,[rsp+\I70]
    mulx rbx, rax, [rip + p +  560]
    adcx r11, rcx
   adox r11, rax
    mov [rsp+\I70],r11

    mov r11,[rsp+\I71]
    mulx rcx, rax, [rip + p +  568]
    adcx r11, rbx
   adox r11, rax
    mov [rsp+\I71],r11

    mov r11,[rsp+\I72]
    mulx rbx, rax, [rip + p +  576]
    adcx r11, rcx
   adox r11, rax
    mov [rsp+\I72],r11

    mov r11,[rsp+\I73]
    mulx rcx, rax, [rip + p +  584]
    adcx r11, rbx
   adox r11, rax
    mov [rsp+\I73],r11

    mov r11,[rsp+\I74]
    mulx rbx, rax, [rip + p +  592]
    adcx r11, rcx
   adox r11, rax
    mov [rsp+\I74],r11

    mov r11,[rsp+\I75]
    mulx rcx, rax, [rip + p +  600]
    adcx r11, rbx
   adox r11, rax
    mov [rsp+\I75],r11

    mov r11,[rsp+\I76]
    mulx rbx, rax, [rip + p +  608]
    adcx r11, rcx
   adox r11, rax
    mov [rsp+\I76],r11

    mov r11,[rsp+\I77]
    mulx rcx, rax, [rip + p +  616]
    adcx r11, rbx
   adox r11, rax
    mov [rsp+\I77],r11

    mov r11,[rsp+\I78]
    mulx rbx, rax, [rip + p +  624]
    adcx r11, rcx
   adox r11, rax
    mov [rsp+\I78],r11

    mov r11,[rsp+\I79]
    mulx rcx, rax, [rip + p +  632]
    adcx r11, rbx
   adox r11, rax
    mov [rsp+\I79],r11


    mov r11,[rsp+\I80]
    mov rax, 0
    adcx r11, rcx
    adox r11, rax
    mov [rsp+\I80],r11

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
    mulx rbx, rax, [rsi +  512]
    adcx r11, rcx
    adox r11, rax
    mov [rsp+\I64],r11

    mov r11,[rsp+\I65]
    mulx rcx, rax, [rsi +  520]
    adcx r11, rbx
    adox r11, rax
    mov [rsp+\I65],r11

    mov r11,[rsp+\I66]
    mulx rbx, rax, [rsi +  528]
    adcx r11, rcx
    adox r11, rax
    mov [rsp+\I66],r11

    mov r11,[rsp+\I67]
    mulx rcx, rax, [rsi +  536]
    adcx r11, rbx
    adox r11, rax
    mov [rsp+\I67],r11

    mov r11,[rsp+\I68]
    mulx rbx, rax, [rsi +  544]
    adcx r11, rcx
    adox r11, rax
    mov [rsp+\I68],r11

    mov r11,[rsp+\I69]
    mulx rcx, rax, [rsi +  552]
    adcx r11, rbx
    adox r11, rax
    mov [rsp+\I69],r11

    mov r11,[rsp+\I70]
    mulx rbx, rax, [rsi +  560]
    adcx r11, rcx
    adox r11, rax
    mov [rsp+\I70],r11

    mov r11,[rsp+\I71]
    mulx rcx, rax, [rsi +  568]
    adcx r11, rbx
    adox r11, rax
    mov [rsp+\I71],r11

    mov r11,[rsp+\I72]
    mulx rbx, rax, [rsi +  576]
    adcx r11, rcx
    adox r11, rax
    mov [rsp+\I72],r11

    mov r11,[rsp+\I73]
    mulx rcx, rax, [rsi +  584]
    adcx r11, rbx
    adox r11, rax
    mov [rsp+\I73],r11

    mov r11,[rsp+\I74]
    mulx rbx, rax, [rsi +  592]
    adcx r11, rcx
    adox r11, rax
    mov [rsp+\I74],r11

    mov r11,[rsp+\I75]
    mulx rcx, rax, [rsi +  600]
    adcx r11, rbx
    adox r11, rax
    mov [rsp+\I75],r11

    mov r11,[rsp+\I76]
    mulx rbx, rax, [rsi +  608]
    adcx r11, rcx
    adox r11, rax
    mov [rsp+\I76],r11

    mov r11,[rsp+\I77]
    mulx rcx, rax, [rsi +  616]
    adcx r11, rbx
    adox r11, rax
    mov [rsp+\I77],r11

    mov r11,[rsp+\I78]
    mulx rbx, rax, [rsi +  624]
    adcx r11, rcx
    adox r11, rax
    mov [rsp+\I78],r11

    mov r11,[rsp+\I79]
    mulx rcx, rax, [rsi +  632]
    adcx r11, rbx
    adox r11, rax
    mov [rsp+\I79],r11

    mov r11,[rsp+\I80]
    mov rax, 0
    adcx r11, rcx
    adox r11, rax
    mov [rsp+\I80],r11

.endm

MULSTEP 0,8,16,24,32,40,48,56,64,72,80,88,96,104,112,120,128,136,144,152,160,168,176,184,192,200,208,216,224,232,240,248,256,264,272,280,288,296,304,312,320,328,336,344,352,360,368,376,384,392,400,408,416,424,432,440,448,456,464,472,480,488,496,504,512,520,528,536,544,552,560,568,576,584,592,600,608,616,624,632,640,0
MULSTEP 1,16,24,32,40,48,56,64,72,80,88,96,104,112,120,128,136,144,152,160,168,176,184,192,200,208,216,224,232,240,248,256,264,272,280,288,296,304,312,320,328,336,344,352,360,368,376,384,392,400,408,416,424,432,440,448,456,464,472,480,488,496,504,512,520,528,536,544,552,560,568,576,584,592,600,608,616,624,632,640,0,8
MULSTEP 2,24,32,40,48,56,64,72,80,88,96,104,112,120,128,136,144,152,160,168,176,184,192,200,208,216,224,232,240,248,256,264,272,280,288,296,304,312,320,328,336,344,352,360,368,376,384,392,400,408,416,424,432,440,448,456,464,472,480,488,496,504,512,520,528,536,544,552,560,568,576,584,592,600,608,616,624,632,640,0,8,16
MULSTEP 3,32,40,48,56,64,72,80,88,96,104,112,120,128,136,144,152,160,168,176,184,192,200,208,216,224,232,240,248,256,264,272,280,288,296,304,312,320,328,336,344,352,360,368,376,384,392,400,408,416,424,432,440,448,456,464,472,480,488,496,504,512,520,528,536,544,552,560,568,576,584,592,600,608,616,624,632,640,0,8,16,24
MULSTEP 4,40,48,56,64,72,80,88,96,104,112,120,128,136,144,152,160,168,176,184,192,200,208,216,224,232,240,248,256,264,272,280,288,296,304,312,320,328,336,344,352,360,368,376,384,392,400,408,416,424,432,440,448,456,464,472,480,488,496,504,512,520,528,536,544,552,560,568,576,584,592,600,608,616,624,632,640,0,8,16,24,32
MULSTEP 5,48,56,64,72,80,88,96,104,112,120,128,136,144,152,160,168,176,184,192,200,208,216,224,232,240,248,256,264,272,280,288,296,304,312,320,328,336,344,352,360,368,376,384,392,400,408,416,424,432,440,448,456,464,472,480,488,496,504,512,520,528,536,544,552,560,568,576,584,592,600,608,616,624,632,640,0,8,16,24,32,40
MULSTEP 6,56,64,72,80,88,96,104,112,120,128,136,144,152,160,168,176,184,192,200,208,216,224,232,240,248,256,264,272,280,288,296,304,312,320,328,336,344,352,360,368,376,384,392,400,408,416,424,432,440,448,456,464,472,480,488,496,504,512,520,528,536,544,552,560,568,576,584,592,600,608,616,624,632,640,0,8,16,24,32,40,48
MULSTEP 7,64,72,80,88,96,104,112,120,128,136,144,152,160,168,176,184,192,200,208,216,224,232,240,248,256,264,272,280,288,296,304,312,320,328,336,344,352,360,368,376,384,392,400,408,416,424,432,440,448,456,464,472,480,488,496,504,512,520,528,536,544,552,560,568,576,584,592,600,608,616,624,632,640,0,8,16,24,32,40,48,56
MULSTEP 8,72,80,88,96,104,112,120,128,136,144,152,160,168,176,184,192,200,208,216,224,232,240,248,256,264,272,280,288,296,304,312,320,328,336,344,352,360,368,376,384,392,400,408,416,424,432,440,448,456,464,472,480,488,496,504,512,520,528,536,544,552,560,568,576,584,592,600,608,616,624,632,640,0,8,16,24,32,40,48,56,64
MULSTEP 9,80,88,96,104,112,120,128,136,144,152,160,168,176,184,192,200,208,216,224,232,240,248,256,264,272,280,288,296,304,312,320,328,336,344,352,360,368,376,384,392,400,408,416,424,432,440,448,456,464,472,480,488,496,504,512,520,528,536,544,552,560,568,576,584,592,600,608,616,624,632,640,0,8,16,24,32,40,48,56,64,72
MULSTEP 10,88,96,104,112,120,128,136,144,152,160,168,176,184,192,200,208,216,224,232,240,248,256,264,272,280,288,296,304,312,320,328,336,344,352,360,368,376,384,392,400,408,416,424,432,440,448,456,464,472,480,488,496,504,512,520,528,536,544,552,560,568,576,584,592,600,608,616,624,632,640,0,8,16,24,32,40,48,56,64,72,80
MULSTEP 11,96,104,112,120,128,136,144,152,160,168,176,184,192,200,208,216,224,232,240,248,256,264,272,280,288,296,304,312,320,328,336,344,352,360,368,376,384,392,400,408,416,424,432,440,448,456,464,472,480,488,496,504,512,520,528,536,544,552,560,568,576,584,592,600,608,616,624,632,640,0,8,16,24,32,40,48,56,64,72,80,88
MULSTEP 12,104,112,120,128,136,144,152,160,168,176,184,192,200,208,216,224,232,240,248,256,264,272,280,288,296,304,312,320,328,336,344,352,360,368,376,384,392,400,408,416,424,432,440,448,456,464,472,480,488,496,504,512,520,528,536,544,552,560,568,576,584,592,600,608,616,624,632,640,0,8,16,24,32,40,48,56,64,72,80,88,96
MULSTEP 13,112,120,128,136,144,152,160,168,176,184,192,200,208,216,224,232,240,248,256,264,272,280,288,296,304,312,320,328,336,344,352,360,368,376,384,392,400,408,416,424,432,440,448,456,464,472,480,488,496,504,512,520,528,536,544,552,560,568,576,584,592,600,608,616,624,632,640,0,8,16,24,32,40,48,56,64,72,80,88,96,104
MULSTEP 14,120,128,136,144,152,160,168,176,184,192,200,208,216,224,232,240,248,256,264,272,280,288,296,304,312,320,328,336,344,352,360,368,376,384,392,400,408,416,424,432,440,448,456,464,472,480,488,496,504,512,520,528,536,544,552,560,568,576,584,592,600,608,616,624,632,640,0,8,16,24,32,40,48,56,64,72,80,88,96,104,112
MULSTEP 15,128,136,144,152,160,168,176,184,192,200,208,216,224,232,240,248,256,264,272,280,288,296,304,312,320,328,336,344,352,360,368,376,384,392,400,408,416,424,432,440,448,456,464,472,480,488,496,504,512,520,528,536,544,552,560,568,576,584,592,600,608,616,624,632,640,0,8,16,24,32,40,48,56,64,72,80,88,96,104,112,120
MULSTEP 16,136,144,152,160,168,176,184,192,200,208,216,224,232,240,248,256,264,272,280,288,296,304,312,320,328,336,344,352,360,368,376,384,392,400,408,416,424,432,440,448,456,464,472,480,488,496,504,512,520,528,536,544,552,560,568,576,584,592,600,608,616,624,632,640,0,8,16,24,32,40,48,56,64,72,80,88,96,104,112,120,128
MULSTEP 17,144,152,160,168,176,184,192,200,208,216,224,232,240,248,256,264,272,280,288,296,304,312,320,328,336,344,352,360,368,376,384,392,400,408,416,424,432,440,448,456,464,472,480,488,496,504,512,520,528,536,544,552,560,568,576,584,592,600,608,616,624,632,640,0,8,16,24,32,40,48,56,64,72,80,88,96,104,112,120,128,136
MULSTEP 18,152,160,168,176,184,192,200,208,216,224,232,240,248,256,264,272,280,288,296,304,312,320,328,336,344,352,360,368,376,384,392,400,408,416,424,432,440,448,456,464,472,480,488,496,504,512,520,528,536,544,552,560,568,576,584,592,600,608,616,624,632,640,0,8,16,24,32,40,48,56,64,72,80,88,96,104,112,120,128,136,144
MULSTEP 19,160,168,176,184,192,200,208,216,224,232,240,248,256,264,272,280,288,296,304,312,320,328,336,344,352,360,368,376,384,392,400,408,416,424,432,440,448,456,464,472,480,488,496,504,512,520,528,536,544,552,560,568,576,584,592,600,608,616,624,632,640,0,8,16,24,32,40,48,56,64,72,80,88,96,104,112,120,128,136,144,152
MULSTEP 20,168,176,184,192,200,208,216,224,232,240,248,256,264,272,280,288,296,304,312,320,328,336,344,352,360,368,376,384,392,400,408,416,424,432,440,448,456,464,472,480,488,496,504,512,520,528,536,544,552,560,568,576,584,592,600,608,616,624,632,640,0,8,16,24,32,40,48,56,64,72,80,88,96,104,112,120,128,136,144,152,160
MULSTEP 21,176,184,192,200,208,216,224,232,240,248,256,264,272,280,288,296,304,312,320,328,336,344,352,360,368,376,384,392,400,408,416,424,432,440,448,456,464,472,480,488,496,504,512,520,528,536,544,552,560,568,576,584,592,600,608,616,624,632,640,0,8,16,24,32,40,48,56,64,72,80,88,96,104,112,120,128,136,144,152,160,168
MULSTEP 22,184,192,200,208,216,224,232,240,248,256,264,272,280,288,296,304,312,320,328,336,344,352,360,368,376,384,392,400,408,416,424,432,440,448,456,464,472,480,488,496,504,512,520,528,536,544,552,560,568,576,584,592,600,608,616,624,632,640,0,8,16,24,32,40,48,56,64,72,80,88,96,104,112,120,128,136,144,152,160,168,176
MULSTEP 23,192,200,208,216,224,232,240,248,256,264,272,280,288,296,304,312,320,328,336,344,352,360,368,376,384,392,400,408,416,424,432,440,448,456,464,472,480,488,496,504,512,520,528,536,544,552,560,568,576,584,592,600,608,616,624,632,640,0,8,16,24,32,40,48,56,64,72,80,88,96,104,112,120,128,136,144,152,160,168,176,184
MULSTEP 24,200,208,216,224,232,240,248,256,264,272,280,288,296,304,312,320,328,336,344,352,360,368,376,384,392,400,408,416,424,432,440,448,456,464,472,480,488,496,504,512,520,528,536,544,552,560,568,576,584,592,600,608,616,624,632,640,0,8,16,24,32,40,48,56,64,72,80,88,96,104,112,120,128,136,144,152,160,168,176,184,192
MULSTEP 25,208,216,224,232,240,248,256,264,272,280,288,296,304,312,320,328,336,344,352,360,368,376,384,392,400,408,416,424,432,440,448,456,464,472,480,488,496,504,512,520,528,536,544,552,560,568,576,584,592,600,608,616,624,632,640,0,8,16,24,32,40,48,56,64,72,80,88,96,104,112,120,128,136,144,152,160,168,176,184,192,200
MULSTEP 26,216,224,232,240,248,256,264,272,280,288,296,304,312,320,328,336,344,352,360,368,376,384,392,400,408,416,424,432,440,448,456,464,472,480,488,496,504,512,520,528,536,544,552,560,568,576,584,592,600,608,616,624,632,640,0,8,16,24,32,40,48,56,64,72,80,88,96,104,112,120,128,136,144,152,160,168,176,184,192,200,208
MULSTEP 27,224,232,240,248,256,264,272,280,288,296,304,312,320,328,336,344,352,360,368,376,384,392,400,408,416,424,432,440,448,456,464,472,480,488,496,504,512,520,528,536,544,552,560,568,576,584,592,600,608,616,624,632,640,0,8,16,24,32,40,48,56,64,72,80,88,96,104,112,120,128,136,144,152,160,168,176,184,192,200,208,216
MULSTEP 28,232,240,248,256,264,272,280,288,296,304,312,320,328,336,344,352,360,368,376,384,392,400,408,416,424,432,440,448,456,464,472,480,488,496,504,512,520,528,536,544,552,560,568,576,584,592,600,608,616,624,632,640,0,8,16,24,32,40,48,56,64,72,80,88,96,104,112,120,128,136,144,152,160,168,176,184,192,200,208,216,224
MULSTEP 29,240,248,256,264,272,280,288,296,304,312,320,328,336,344,352,360,368,376,384,392,400,408,416,424,432,440,448,456,464,472,480,488,496,504,512,520,528,536,544,552,560,568,576,584,592,600,608,616,624,632,640,0,8,16,24,32,40,48,56,64,72,80,88,96,104,112,120,128,136,144,152,160,168,176,184,192,200,208,216,224,232
MULSTEP 30,248,256,264,272,280,288,296,304,312,320,328,336,344,352,360,368,376,384,392,400,408,416,424,432,440,448,456,464,472,480,488,496,504,512,520,528,536,544,552,560,568,576,584,592,600,608,616,624,632,640,0,8,16,24,32,40,48,56,64,72,80,88,96,104,112,120,128,136,144,152,160,168,176,184,192,200,208,216,224,232,240
MULSTEP 31,256,264,272,280,288,296,304,312,320,328,336,344,352,360,368,376,384,392,400,408,416,424,432,440,448,456,464,472,480,488,496,504,512,520,528,536,544,552,560,568,576,584,592,600,608,616,624,632,640,0,8,16,24,32,40,48,56,64,72,80,88,96,104,112,120,128,136,144,152,160,168,176,184,192,200,208,216,224,232,240,248
MULSTEP 32,264,272,280,288,296,304,312,320,328,336,344,352,360,368,376,384,392,400,408,416,424,432,440,448,456,464,472,480,488,496,504,512,520,528,536,544,552,560,568,576,584,592,600,608,616,624,632,640,0,8,16,24,32,40,48,56,64,72,80,88,96,104,112,120,128,136,144,152,160,168,176,184,192,200,208,216,224,232,240,248,256
MULSTEP 33,272,280,288,296,304,312,320,328,336,344,352,360,368,376,384,392,400,408,416,424,432,440,448,456,464,472,480,488,496,504,512,520,528,536,544,552,560,568,576,584,592,600,608,616,624,632,640,0,8,16,24,32,40,48,56,64,72,80,88,96,104,112,120,128,136,144,152,160,168,176,184,192,200,208,216,224,232,240,248,256,264
MULSTEP 34,280,288,296,304,312,320,328,336,344,352,360,368,376,384,392,400,408,416,424,432,440,448,456,464,472,480,488,496,504,512,520,528,536,544,552,560,568,576,584,592,600,608,616,624,632,640,0,8,16,24,32,40,48,56,64,72,80,88,96,104,112,120,128,136,144,152,160,168,176,184,192,200,208,216,224,232,240,248,256,264,272
MULSTEP 35,288,296,304,312,320,328,336,344,352,360,368,376,384,392,400,408,416,424,432,440,448,456,464,472,480,488,496,504,512,520,528,536,544,552,560,568,576,584,592,600,608,616,624,632,640,0,8,16,24,32,40,48,56,64,72,80,88,96,104,112,120,128,136,144,152,160,168,176,184,192,200,208,216,224,232,240,248,256,264,272,280
MULSTEP 36,296,304,312,320,328,336,344,352,360,368,376,384,392,400,408,416,424,432,440,448,456,464,472,480,488,496,504,512,520,528,536,544,552,560,568,576,584,592,600,608,616,624,632,640,0,8,16,24,32,40,48,56,64,72,80,88,96,104,112,120,128,136,144,152,160,168,176,184,192,200,208,216,224,232,240,248,256,264,272,280,288
MULSTEP 37,304,312,320,328,336,344,352,360,368,376,384,392,400,408,416,424,432,440,448,456,464,472,480,488,496,504,512,520,528,536,544,552,560,568,576,584,592,600,608,616,624,632,640,0,8,16,24,32,40,48,56,64,72,80,88,96,104,112,120,128,136,144,152,160,168,176,184,192,200,208,216,224,232,240,248,256,264,272,280,288,296
MULSTEP 38,312,320,328,336,344,352,360,368,376,384,392,400,408,416,424,432,440,448,456,464,472,480,488,496,504,512,520,528,536,544,552,560,568,576,584,592,600,608,616,624,632,640,0,8,16,24,32,40,48,56,64,72,80,88,96,104,112,120,128,136,144,152,160,168,176,184,192,200,208,216,224,232,240,248,256,264,272,280,288,296,304
MULSTEP 39,320,328,336,344,352,360,368,376,384,392,400,408,416,424,432,440,448,456,464,472,480,488,496,504,512,520,528,536,544,552,560,568,576,584,592,600,608,616,624,632,640,0,8,16,24,32,40,48,56,64,72,80,88,96,104,112,120,128,136,144,152,160,168,176,184,192,200,208,216,224,232,240,248,256,264,272,280,288,296,304,312
MULSTEP 40,328,336,344,352,360,368,376,384,392,400,408,416,424,432,440,448,456,464,472,480,488,496,504,512,520,528,536,544,552,560,568,576,584,592,600,608,616,624,632,640,0,8,16,24,32,40,48,56,64,72,80,88,96,104,112,120,128,136,144,152,160,168,176,184,192,200,208,216,224,232,240,248,256,264,272,280,288,296,304,312,320
MULSTEP 41,336,344,352,360,368,376,384,392,400,408,416,424,432,440,448,456,464,472,480,488,496,504,512,520,528,536,544,552,560,568,576,584,592,600,608,616,624,632,640,0,8,16,24,32,40,48,56,64,72,80,88,96,104,112,120,128,136,144,152,160,168,176,184,192,200,208,216,224,232,240,248,256,264,272,280,288,296,304,312,320,328
MULSTEP 42,344,352,360,368,376,384,392,400,408,416,424,432,440,448,456,464,472,480,488,496,504,512,520,528,536,544,552,560,568,576,584,592,600,608,616,624,632,640,0,8,16,24,32,40,48,56,64,72,80,88,96,104,112,120,128,136,144,152,160,168,176,184,192,200,208,216,224,232,240,248,256,264,272,280,288,296,304,312,320,328,336
MULSTEP 43,352,360,368,376,384,392,400,408,416,424,432,440,448,456,464,472,480,488,496,504,512,520,528,536,544,552,560,568,576,584,592,600,608,616,624,632,640,0,8,16,24,32,40,48,56,64,72,80,88,96,104,112,120,128,136,144,152,160,168,176,184,192,200,208,216,224,232,240,248,256,264,272,280,288,296,304,312,320,328,336,344
MULSTEP 44,360,368,376,384,392,400,408,416,424,432,440,448,456,464,472,480,488,496,504,512,520,528,536,544,552,560,568,576,584,592,600,608,616,624,632,640,0,8,16,24,32,40,48,56,64,72,80,88,96,104,112,120,128,136,144,152,160,168,176,184,192,200,208,216,224,232,240,248,256,264,272,280,288,296,304,312,320,328,336,344,352
MULSTEP 45,368,376,384,392,400,408,416,424,432,440,448,456,464,472,480,488,496,504,512,520,528,536,544,552,560,568,576,584,592,600,608,616,624,632,640,0,8,16,24,32,40,48,56,64,72,80,88,96,104,112,120,128,136,144,152,160,168,176,184,192,200,208,216,224,232,240,248,256,264,272,280,288,296,304,312,320,328,336,344,352,360
MULSTEP 46,376,384,392,400,408,416,424,432,440,448,456,464,472,480,488,496,504,512,520,528,536,544,552,560,568,576,584,592,600,608,616,624,632,640,0,8,16,24,32,40,48,56,64,72,80,88,96,104,112,120,128,136,144,152,160,168,176,184,192,200,208,216,224,232,240,248,256,264,272,280,288,296,304,312,320,328,336,344,352,360,368
MULSTEP 47,384,392,400,408,416,424,432,440,448,456,464,472,480,488,496,504,512,520,528,536,544,552,560,568,576,584,592,600,608,616,624,632,640,0,8,16,24,32,40,48,56,64,72,80,88,96,104,112,120,128,136,144,152,160,168,176,184,192,200,208,216,224,232,240,248,256,264,272,280,288,296,304,312,320,328,336,344,352,360,368,376
MULSTEP 48,392,400,408,416,424,432,440,448,456,464,472,480,488,496,504,512,520,528,536,544,552,560,568,576,584,592,600,608,616,624,632,640,0,8,16,24,32,40,48,56,64,72,80,88,96,104,112,120,128,136,144,152,160,168,176,184,192,200,208,216,224,232,240,248,256,264,272,280,288,296,304,312,320,328,336,344,352,360,368,376,384
MULSTEP 49,400,408,416,424,432,440,448,456,464,472,480,488,496,504,512,520,528,536,544,552,560,568,576,584,592,600,608,616,624,632,640,0,8,16,24,32,40,48,56,64,72,80,88,96,104,112,120,128,136,144,152,160,168,176,184,192,200,208,216,224,232,240,248,256,264,272,280,288,296,304,312,320,328,336,344,352,360,368,376,384,392
MULSTEP 50,408,416,424,432,440,448,456,464,472,480,488,496,504,512,520,528,536,544,552,560,568,576,584,592,600,608,616,624,632,640,0,8,16,24,32,40,48,56,64,72,80,88,96,104,112,120,128,136,144,152,160,168,176,184,192,200,208,216,224,232,240,248,256,264,272,280,288,296,304,312,320,328,336,344,352,360,368,376,384,392,400
MULSTEP 51,416,424,432,440,448,456,464,472,480,488,496,504,512,520,528,536,544,552,560,568,576,584,592,600,608,616,624,632,640,0,8,16,24,32,40,48,56,64,72,80,88,96,104,112,120,128,136,144,152,160,168,176,184,192,200,208,216,224,232,240,248,256,264,272,280,288,296,304,312,320,328,336,344,352,360,368,376,384,392,400,408
MULSTEP 52,424,432,440,448,456,464,472,480,488,496,504,512,520,528,536,544,552,560,568,576,584,592,600,608,616,624,632,640,0,8,16,24,32,40,48,56,64,72,80,88,96,104,112,120,128,136,144,152,160,168,176,184,192,200,208,216,224,232,240,248,256,264,272,280,288,296,304,312,320,328,336,344,352,360,368,376,384,392,400,408,416
MULSTEP 53,432,440,448,456,464,472,480,488,496,504,512,520,528,536,544,552,560,568,576,584,592,600,608,616,624,632,640,0,8,16,24,32,40,48,56,64,72,80,88,96,104,112,120,128,136,144,152,160,168,176,184,192,200,208,216,224,232,240,248,256,264,272,280,288,296,304,312,320,328,336,344,352,360,368,376,384,392,400,408,416,424
MULSTEP 54,440,448,456,464,472,480,488,496,504,512,520,528,536,544,552,560,568,576,584,592,600,608,616,624,632,640,0,8,16,24,32,40,48,56,64,72,80,88,96,104,112,120,128,136,144,152,160,168,176,184,192,200,208,216,224,232,240,248,256,264,272,280,288,296,304,312,320,328,336,344,352,360,368,376,384,392,400,408,416,424,432
MULSTEP 55,448,456,464,472,480,488,496,504,512,520,528,536,544,552,560,568,576,584,592,600,608,616,624,632,640,0,8,16,24,32,40,48,56,64,72,80,88,96,104,112,120,128,136,144,152,160,168,176,184,192,200,208,216,224,232,240,248,256,264,272,280,288,296,304,312,320,328,336,344,352,360,368,376,384,392,400,408,416,424,432,440
MULSTEP 56,456,464,472,480,488,496,504,512,520,528,536,544,552,560,568,576,584,592,600,608,616,624,632,640,0,8,16,24,32,40,48,56,64,72,80,88,96,104,112,120,128,136,144,152,160,168,176,184,192,200,208,216,224,232,240,248,256,264,272,280,288,296,304,312,320,328,336,344,352,360,368,376,384,392,400,408,416,424,432,440,448
MULSTEP 57,464,472,480,488,496,504,512,520,528,536,544,552,560,568,576,584,592,600,608,616,624,632,640,0,8,16,24,32,40,48,56,64,72,80,88,96,104,112,120,128,136,144,152,160,168,176,184,192,200,208,216,224,232,240,248,256,264,272,280,288,296,304,312,320,328,336,344,352,360,368,376,384,392,400,408,416,424,432,440,448,456
MULSTEP 58,472,480,488,496,504,512,520,528,536,544,552,560,568,576,584,592,600,608,616,624,632,640,0,8,16,24,32,40,48,56,64,72,80,88,96,104,112,120,128,136,144,152,160,168,176,184,192,200,208,216,224,232,240,248,256,264,272,280,288,296,304,312,320,328,336,344,352,360,368,376,384,392,400,408,416,424,432,440,448,456,464
MULSTEP 59,480,488,496,504,512,520,528,536,544,552,560,568,576,584,592,600,608,616,624,632,640,0,8,16,24,32,40,48,56,64,72,80,88,96,104,112,120,128,136,144,152,160,168,176,184,192,200,208,216,224,232,240,248,256,264,272,280,288,296,304,312,320,328,336,344,352,360,368,376,384,392,400,408,416,424,432,440,448,456,464,472
MULSTEP 60,488,496,504,512,520,528,536,544,552,560,568,576,584,592,600,608,616,624,632,640,0,8,16,24,32,40,48,56,64,72,80,88,96,104,112,120,128,136,144,152,160,168,176,184,192,200,208,216,224,232,240,248,256,264,272,280,288,296,304,312,320,328,336,344,352,360,368,376,384,392,400,408,416,424,432,440,448,456,464,472,480
MULSTEP 61,496,504,512,520,528,536,544,552,560,568,576,584,592,600,608,616,624,632,640,0,8,16,24,32,40,48,56,64,72,80,88,96,104,112,120,128,136,144,152,160,168,176,184,192,200,208,216,224,232,240,248,256,264,272,280,288,296,304,312,320,328,336,344,352,360,368,376,384,392,400,408,416,424,432,440,448,456,464,472,480,488
MULSTEP 62,504,512,520,528,536,544,552,560,568,576,584,592,600,608,616,624,632,640,0,8,16,24,32,40,48,56,64,72,80,88,96,104,112,120,128,136,144,152,160,168,176,184,192,200,208,216,224,232,240,248,256,264,272,280,288,296,304,312,320,328,336,344,352,360,368,376,384,392,400,408,416,424,432,440,448,456,464,472,480,488,496
MULSTEP 63,512,520,528,536,544,552,560,568,576,584,592,600,608,616,624,632,640,0,8,16,24,32,40,48,56,64,72,80,88,96,104,112,120,128,136,144,152,160,168,176,184,192,200,208,216,224,232,240,248,256,264,272,280,288,296,304,312,320,328,336,344,352,360,368,376,384,392,400,408,416,424,432,440,448,456,464,472,480,488,496,504
MULSTEP 64,520,528,536,544,552,560,568,576,584,592,600,608,616,624,632,640,0,8,16,24,32,40,48,56,64,72,80,88,96,104,112,120,128,136,144,152,160,168,176,184,192,200,208,216,224,232,240,248,256,264,272,280,288,296,304,312,320,328,336,344,352,360,368,376,384,392,400,408,416,424,432,440,448,456,464,472,480,488,496,504,512
MULSTEP 65,528,536,544,552,560,568,576,584,592,600,608,616,624,632,640,0,8,16,24,32,40,48,56,64,72,80,88,96,104,112,120,128,136,144,152,160,168,176,184,192,200,208,216,224,232,240,248,256,264,272,280,288,296,304,312,320,328,336,344,352,360,368,376,384,392,400,408,416,424,432,440,448,456,464,472,480,488,496,504,512,520
MULSTEP 66,536,544,552,560,568,576,584,592,600,608,616,624,632,640,0,8,16,24,32,40,48,56,64,72,80,88,96,104,112,120,128,136,144,152,160,168,176,184,192,200,208,216,224,232,240,248,256,264,272,280,288,296,304,312,320,328,336,344,352,360,368,376,384,392,400,408,416,424,432,440,448,456,464,472,480,488,496,504,512,520,528
MULSTEP 67,544,552,560,568,576,584,592,600,608,616,624,632,640,0,8,16,24,32,40,48,56,64,72,80,88,96,104,112,120,128,136,144,152,160,168,176,184,192,200,208,216,224,232,240,248,256,264,272,280,288,296,304,312,320,328,336,344,352,360,368,376,384,392,400,408,416,424,432,440,448,456,464,472,480,488,496,504,512,520,528,536
MULSTEP 68,552,560,568,576,584,592,600,608,616,624,632,640,0,8,16,24,32,40,48,56,64,72,80,88,96,104,112,120,128,136,144,152,160,168,176,184,192,200,208,216,224,232,240,248,256,264,272,280,288,296,304,312,320,328,336,344,352,360,368,376,384,392,400,408,416,424,432,440,448,456,464,472,480,488,496,504,512,520,528,536,544
MULSTEP 69,560,568,576,584,592,600,608,616,624,632,640,0,8,16,24,32,40,48,56,64,72,80,88,96,104,112,120,128,136,144,152,160,168,176,184,192,200,208,216,224,232,240,248,256,264,272,280,288,296,304,312,320,328,336,344,352,360,368,376,384,392,400,408,416,424,432,440,448,456,464,472,480,488,496,504,512,520,528,536,544,552
MULSTEP 70,568,576,584,592,600,608,616,624,632,640,0,8,16,24,32,40,48,56,64,72,80,88,96,104,112,120,128,136,144,152,160,168,176,184,192,200,208,216,224,232,240,248,256,264,272,280,288,296,304,312,320,328,336,344,352,360,368,376,384,392,400,408,416,424,432,440,448,456,464,472,480,488,496,504,512,520,528,536,544,552,560
MULSTEP 71,576,584,592,600,608,616,624,632,640,0,8,16,24,32,40,48,56,64,72,80,88,96,104,112,120,128,136,144,152,160,168,176,184,192,200,208,216,224,232,240,248,256,264,272,280,288,296,304,312,320,328,336,344,352,360,368,376,384,392,400,408,416,424,432,440,448,456,464,472,480,488,496,504,512,520,528,536,544,552,560,568
MULSTEP 72,584,592,600,608,616,624,632,640,0,8,16,24,32,40,48,56,64,72,80,88,96,104,112,120,128,136,144,152,160,168,176,184,192,200,208,216,224,232,240,248,256,264,272,280,288,296,304,312,320,328,336,344,352,360,368,376,384,392,400,408,416,424,432,440,448,456,464,472,480,488,496,504,512,520,528,536,544,552,560,568,576
MULSTEP 73,592,600,608,616,624,632,640,0,8,16,24,32,40,48,56,64,72,80,88,96,104,112,120,128,136,144,152,160,168,176,184,192,200,208,216,224,232,240,248,256,264,272,280,288,296,304,312,320,328,336,344,352,360,368,376,384,392,400,408,416,424,432,440,448,456,464,472,480,488,496,504,512,520,528,536,544,552,560,568,576,584
MULSTEP 74,600,608,616,624,632,640,0,8,16,24,32,40,48,56,64,72,80,88,96,104,112,120,128,136,144,152,160,168,176,184,192,200,208,216,224,232,240,248,256,264,272,280,288,296,304,312,320,328,336,344,352,360,368,376,384,392,400,408,416,424,432,440,448,456,464,472,480,488,496,504,512,520,528,536,544,552,560,568,576,584,592
MULSTEP 75,608,616,624,632,640,0,8,16,24,32,40,48,56,64,72,80,88,96,104,112,120,128,136,144,152,160,168,176,184,192,200,208,216,224,232,240,248,256,264,272,280,288,296,304,312,320,328,336,344,352,360,368,376,384,392,400,408,416,424,432,440,448,456,464,472,480,488,496,504,512,520,528,536,544,552,560,568,576,584,592,600
MULSTEP 76,616,624,632,640,0,8,16,24,32,40,48,56,64,72,80,88,96,104,112,120,128,136,144,152,160,168,176,184,192,200,208,216,224,232,240,248,256,264,272,280,288,296,304,312,320,328,336,344,352,360,368,376,384,392,400,408,416,424,432,440,448,456,464,472,480,488,496,504,512,520,528,536,544,552,560,568,576,584,592,600,608
MULSTEP 77,624,632,640,0,8,16,24,32,40,48,56,64,72,80,88,96,104,112,120,128,136,144,152,160,168,176,184,192,200,208,216,224,232,240,248,256,264,272,280,288,296,304,312,320,328,336,344,352,360,368,376,384,392,400,408,416,424,432,440,448,456,464,472,480,488,496,504,512,520,528,536,544,552,560,568,576,584,592,600,608,616
MULSTEP 78,632,640,0,8,16,24,32,40,48,56,64,72,80,88,96,104,112,120,128,136,144,152,160,168,176,184,192,200,208,216,224,232,240,248,256,264,272,280,288,296,304,312,320,328,336,344,352,360,368,376,384,392,400,408,416,424,432,440,448,456,464,472,480,488,496,504,512,520,528,536,544,552,560,568,576,584,592,600,608,616,624
MULSTEP 79,640,0,8,16,24,32,40,48,56,64,72,80,88,96,104,112,120,128,136,144,152,160,168,176,184,192,200,208,216,224,232,240,248,256,264,272,280,288,296,304,312,320,328,336,344,352,360,368,376,384,392,400,408,416,424,432,440,448,456,464,472,480,488,496,504,512,520,528,536,544,552,560,568,576,584,592,600,608,616,624,632


    mov rdi,[rsp+648]

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
    mov r11,[rsp+512]
    mov [rdi+512],r11
    mov r11,[rsp+520]
    mov [rdi+520],r11
    mov r11,[rsp+528]
    mov [rdi+528],r11
    mov r11,[rsp+536]
    mov [rdi+536],r11
    mov r11,[rsp+544]
    mov [rdi+544],r11
    mov r11,[rsp+552]
    mov [rdi+552],r11
    mov r11,[rsp+560]
    mov [rdi+560],r11
    mov r11,[rsp+568]
    mov [rdi+568],r11
    mov r11,[rsp+576]
    mov [rdi+576],r11
    mov r11,[rsp+584]
    mov [rdi+584],r11
    mov r11,[rsp+592]
    mov [rdi+592],r11
    mov r11,[rsp+600]
    mov [rdi+600],r11
    mov r11,[rsp+608]
    mov [rdi+608],r11
    mov r11,[rsp+616]
    mov [rdi+616],r11
    mov r11,[rsp+624]
    mov [rdi+624],r11
    mov r11,[rsp+632]
    mov [rdi+632],r11
    add rsp,656

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
    POWSTEP 64
    POWSTEP 65
    POWSTEP 66
    POWSTEP 67
    POWSTEP 68
    POWSTEP 69
    POWSTEP 70
    POWSTEP 71
    POWSTEP 72
    POWSTEP 73
    POWSTEP 74
    POWSTEP 75
    POWSTEP 76
    POWSTEP 77
    POWSTEP 78
    POWSTEP 79
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
