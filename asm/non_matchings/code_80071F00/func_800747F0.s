glabel func_800747F0
/* 0753F0 800747F0 000470C0 */  sll   $t6, $a0, 3
/* 0753F4 800747F4 01C47023 */  subu  $t6, $t6, $a0
/* 0753F8 800747F8 3C0F8016 */  lui   $t7, %hi(D_80165C18) # $t7, 0x8016
/* 0753FC 800747FC 25EF5C18 */  addiu $t7, %lo(D_80165C18) # addiu $t7, $t7, 0x5c18
/* 075400 80074800 000E7140 */  sll   $t6, $t6, 5
/* 075404 80074804 01CF1821 */  addu  $v1, $t6, $t7
/* 075408 80074808 806200D2 */  lb    $v0, 0xd2($v1)
/* 07540C 8007480C 807800D3 */  lb    $t8, 0xd3($v1)
/* 075410 80074810 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 075414 80074814 AFBF0014 */  sw    $ra, 0x14($sp)
/* 075418 80074818 5058001B */  beql  $v0, $t8, .L80074888
/* 07541C 8007481C 8FBF0014 */   lw    $ra, 0x14($sp)
/* 075420 80074820 907900D9 */  lbu   $t9, 0xd9($v1)
/* 075424 80074824 906900DA */  lbu   $t1, 0xda($v1)
/* 075428 80074828 8C6B006C */  lw    $t3, 0x6c($v1)
/* 07542C 8007482C 00590019 */  multu $v0, $t9
/* 075430 80074830 AFA3001C */  sw    $v1, 0x1c($sp)
/* 075434 80074834 AFA40028 */  sw    $a0, 0x28($sp)
/* 075438 80074838 00004012 */  mflo  $t0
/* 07543C 8007483C 00000000 */  nop   
/* 075440 80074840 00000000 */  nop   
/* 075444 80074844 01090019 */  multu $t0, $t1
/* 075448 80074848 00005012 */  mflo  $t2
/* 07544C 8007484C 014B6021 */  addu  $t4, $t2, $t3
/* 075450 80074850 0C01D1E4 */  jal   func_80074790
/* 075454 80074854 AFAC0024 */   sw    $t4, 0x24($sp)
/* 075458 80074858 8FA3001C */  lw    $v1, 0x1c($sp)
/* 07545C 8007485C 8FA40024 */  lw    $a0, 0x24($sp)
/* 075460 80074860 00402825 */  move  $a1, $v0
/* 075464 80074864 906600D9 */  lbu   $a2, 0xd9($v1)
/* 075468 80074868 0C01D15D */  jal   func_80074574
/* 07546C 8007486C 906700DA */   lbu   $a3, 0xda($v1)
/* 075470 80074870 8FA3001C */  lw    $v1, 0x1c($sp)
/* 075474 80074874 8FA40028 */  lw    $a0, 0x28($sp)
/* 075478 80074878 806D00D2 */  lb    $t5, 0xd2($v1)
/* 07547C 8007487C 0C01D11E */  jal   func_80074478
/* 075480 80074880 A06D00D3 */   sb    $t5, 0xd3($v1)
/* 075484 80074884 8FBF0014 */  lw    $ra, 0x14($sp)
.L80074888:
/* 075488 80074888 27BD0028 */  addiu $sp, $sp, 0x28
/* 07548C 8007488C 03E00008 */  jr    $ra
/* 075490 80074890 00000000 */   nop   