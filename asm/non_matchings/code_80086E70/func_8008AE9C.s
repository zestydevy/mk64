glabel func_8008AE9C
/* 08BA9C 8008AE9C 3C038016 */  lui   $v1, %hi(D_80165760) # $v1, 0x8016
/* 08BAA0 8008AEA0 24635760 */  addiu $v1, %lo(D_80165760) # addiu $v1, $v1, 0x5760
/* 08BAA4 8008AEA4 84780000 */  lh    $t8, ($v1)
/* 08BAA8 8008AEA8 84790002 */  lh    $t9, 2($v1)
/* 08BAAC 8008AEAC 3C058018 */  lui   $a1, %hi(D_80183DC8) # $a1, 0x8018
/* 08BAB0 8008AEB0 44982000 */  mtc1  $t8, $f4
/* 08BAB4 8008AEB4 44995000 */  mtc1  $t9, $f10
/* 08BAB8 8008AEB8 24A53DC8 */  addiu $a1, %lo(D_80183DC8) # addiu $a1, $a1, 0x3dc8
/* 08BABC 8008AEBC 468021A0 */  cvt.s.w $f6, $f4
/* 08BAC0 8008AEC0 C4A20000 */  lwc1  $f2, ($a1)
/* 08BAC4 8008AEC4 C4AC0004 */  lwc1  $f12, 4($a1)
/* 08BAC8 8008AEC8 84680004 */  lh    $t0, 4($v1)
/* 08BACC 8008AECC 84690006 */  lh    $t1, 6($v1)
/* 08BAD0 8008AED0 46805420 */  cvt.s.w $f16, $f10
/* 08BAD4 8008AED4 46061202 */  mul.s $f8, $f2, $f6
/* 08BAD8 8008AED8 44883000 */  mtc1  $t0, $f6
/* 08BADC 8008AEDC C4AE0008 */  lwc1  $f14, 8($a1)
/* 08BAE0 8008AEE0 C4A0000C */  lwc1  $f0, 0xc($a1)
/* 08BAE4 8008AEE4 3C068016 */  lui   $a2, %hi(D_80165770) # $a2, 0x8016
/* 08BAE8 8008AEE8 46106482 */  mul.s $f18, $f12, $f16
/* 08BAEC 8008AEEC 24C65770 */  addiu $a2, %lo(D_80165770) # addiu $a2, $a2, 0x5770
/* 08BAF0 8008AEF0 84CA0000 */  lh    $t2, ($a2)
/* 08BAF4 8008AEF4 84CB0002 */  lh    $t3, 2($a2)
/* 08BAF8 8008AEF8 000470C0 */  sll   $t6, $a0, 3
/* 08BAFC 8008AEFC 01C47023 */  subu  $t6, $t6, $a0
/* 08BB00 8008AF00 468032A0 */  cvt.s.w $f10, $f6
/* 08BB04 8008AF04 3C0F8016 */  lui   $t7, %hi(D_80165C18) # $t7, 0x8016
/* 08BB08 8008AF08 25EF5C18 */  addiu $t7, %lo(D_80165C18) # addiu $t7, $t7, 0x5c18
/* 08BB0C 8008AF0C 000E7140 */  sll   $t6, $t6, 5
/* 08BB10 8008AF10 01CF1021 */  addu  $v0, $t6, $t7
/* 08BB14 8008AF14 46124100 */  add.s $f4, $f8, $f18
/* 08BB18 8008AF18 44899000 */  mtc1  $t1, $f18
/* 08BB1C 8008AF1C 460A7402 */  mul.s $f16, $f14, $f10
/* 08BB20 8008AF20 84CC0004 */  lh    $t4, 4($a2)
/* 08BB24 8008AF24 84CD0006 */  lh    $t5, 6($a2)
/* 08BB28 8008AF28 3C078016 */  lui   $a3, %hi(D_80165780) # $a3, 0x8016
/* 08BB2C 8008AF2C 24E75780 */  addiu $a3, %lo(D_80165780) # addiu $a3, $a3, 0x5780
/* 08BB30 8008AF30 84EE0000 */  lh    $t6, ($a3)
/* 08BB34 8008AF34 468091A0 */  cvt.s.w $f6, $f18
/* 08BB38 8008AF38 84EF0002 */  lh    $t7, 2($a3)
/* 08BB3C 8008AF3C 84F80004 */  lh    $t8, 4($a3)
/* 08BB40 8008AF40 84F90006 */  lh    $t9, 6($a3)
/* 08BB44 8008AF44 46102200 */  add.s $f8, $f4, $f16
/* 08BB48 8008AF48 46003282 */  mul.s $f10, $f6, $f0
/* 08BB4C 8008AF4C 448A8000 */  mtc1  $t2, $f16
/* 08BB50 8008AF50 00000000 */  nop   
/* 08BB54 8008AF54 468084A0 */  cvt.s.w $f18, $f16
/* 08BB58 8008AF58 46085100 */  add.s $f4, $f10, $f8
/* 08BB5C 8008AF5C 448B5000 */  mtc1  $t3, $f10
/* 08BB60 8008AF60 46121182 */  mul.s $f6, $f2, $f18
/* 08BB64 8008AF64 448C9000 */  mtc1  $t4, $f18
/* 08BB68 8008AF68 E4440038 */  swc1  $f4, 0x38($v0)
/* 08BB6C 8008AF6C 46805220 */  cvt.s.w $f8, $f10
/* 08BB70 8008AF70 468092A0 */  cvt.s.w $f10, $f18
/* 08BB74 8008AF74 46086102 */  mul.s $f4, $f12, $f8
/* 08BB78 8008AF78 46043400 */  add.s $f16, $f6, $f4
/* 08BB7C 8008AF7C 448D2000 */  mtc1  $t5, $f4
/* 08BB80 8008AF80 460A7202 */  mul.s $f8, $f14, $f10
/* 08BB84 8008AF84 468024A0 */  cvt.s.w $f18, $f4
/* 08BB88 8008AF88 46088180 */  add.s $f6, $f16, $f8
/* 08BB8C 8008AF8C 46009282 */  mul.s $f10, $f18, $f0
/* 08BB90 8008AF90 448E4000 */  mtc1  $t6, $f8
/* 08BB94 8008AF94 00000000 */  nop   
/* 08BB98 8008AF98 46804120 */  cvt.s.w $f4, $f8
/* 08BB9C 8008AF9C 46065400 */  add.s $f16, $f10, $f6
/* 08BBA0 8008AFA0 448F5000 */  mtc1  $t7, $f10
/* 08BBA4 8008AFA4 46041482 */  mul.s $f18, $f2, $f4
/* 08BBA8 8008AFA8 44982000 */  mtc1  $t8, $f4
/* 08BBAC 8008AFAC E450003C */  swc1  $f16, 0x3c($v0)
/* 08BBB0 8008AFB0 468051A0 */  cvt.s.w $f6, $f10
/* 08BBB4 8008AFB4 468022A0 */  cvt.s.w $f10, $f4
/* 08BBB8 8008AFB8 46066402 */  mul.s $f16, $f12, $f6
/* 08BBBC 8008AFBC 46109200 */  add.s $f8, $f18, $f16
/* 08BBC0 8008AFC0 44998000 */  mtc1  $t9, $f16
/* 08BBC4 8008AFC4 460A7182 */  mul.s $f6, $f14, $f10
/* 08BBC8 8008AFC8 46808120 */  cvt.s.w $f4, $f16
/* 08BBCC 8008AFCC 46064480 */  add.s $f18, $f8, $f6
/* 08BBD0 8008AFD0 46002282 */  mul.s $f10, $f4, $f0
/* 08BBD4 8008AFD4 46125200 */  add.s $f8, $f10, $f18
/* 08BBD8 8008AFD8 03E00008 */  jr    $ra
/* 08BBDC 8008AFDC E4480040 */   swc1  $f8, 0x40($v0)