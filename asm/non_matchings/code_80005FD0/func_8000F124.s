glabel func_8000F124
/* 00FD24 8000F124 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 00FD28 8000F128 3C028016 */  lui   $v0, %hi(D_80163348) # $v0, 0x8016
/* 00FD2C 8000F12C 3C038016 */  lui   $v1, %hi(D_8016334C) # $v1, 0x8016
/* 00FD30 8000F130 AFBF0024 */  sw    $ra, 0x24($sp)
/* 00FD34 8000F134 AFB20020 */  sw    $s2, 0x20($sp)
/* 00FD38 8000F138 AFB1001C */  sw    $s1, 0x1c($sp)
/* 00FD3C 8000F13C AFB00018 */  sw    $s0, 0x18($sp)
/* 00FD40 8000F140 2463334C */  addiu $v1, %lo(D_8016334C) # addiu $v1, $v1, 0x334c
/* 00FD44 8000F144 24423348 */  addiu $v0, %lo(D_80163348) # addiu $v0, $v0, 0x3348
.L8000F148:
/* 00FD48 8000F148 24420002 */  addiu $v0, $v0, 2
/* 00FD4C 8000F14C 1443FFFE */  bne   $v0, $v1, .L8000F148
/* 00FD50 8000F150 A440FFFE */   sh    $zero, -2($v0)
/* 00FD54 8000F154 3C0E800E */  lui   $t6, %hi(gDemoMode)
/* 00FD58 8000F158 95CEC51C */  lhu   $t6, %lo(gDemoMode)($t6)
/* 00FD5C 8000F15C 24010001 */  li    $at, 1
/* 00FD60 8000F160 3C0F800E */  lui   $t7, %hi(gModeSelection)
/* 00FD64 8000F164 51C10050 */  beql  $t6, $at, .L8000F2A8
/* 00FD68 8000F168 8FBF0024 */   lw    $ra, 0x24($sp)
/* 00FD6C 8000F16C 8DEFC53C */  lw    $t7, %lo(gModeSelection)($t7)
/* 00FD70 8000F170 3C118016 */  lui   $s1, %hi(D_80163348) # $s1, 0x8016
/* 00FD74 8000F174 26313348 */  addiu $s1, %lo(D_80163348) # addiu $s1, $s1, 0x3348
/* 00FD78 8000F178 15E0004A */  bnez  $t7, .L8000F2A4
/* 00FD7C 8000F17C 00008025 */   move  $s0, $zero
/* 00FD80 8000F180 3C128019 */  lui   $s2, %hi(D_8018EDF3) # $s2, 0x8019
/* 00FD84 8000F184 2652EDF3 */  addiu $s2, %lo(D_8018EDF3) # addiu $s2, $s2, -0x120d
.L8000F188:
/* 00FD88 8000F188 0C0ADF8D */  jal   random_int
/* 00FD8C 8000F18C 24040008 */   li    $a0, 8
/* 00FD90 8000F190 82460000 */  lb    $a2, ($s2)
/* 00FD94 8000F194 A6220000 */  sh    $v0, ($s1)
/* 00FD98 8000F198 00002825 */  move  $a1, $zero
/* 00FD9C 8000F19C 28C10003 */  slti  $at, $a2, 3
/* 00FDA0 8000F1A0 1020003C */  beqz  $at, .L8000F294
/* 00FDA4 8000F1A4 3C18800F */   lui   $t8, %hi(gCharacterSelections) # 0x800f
/* 00FDA8 8000F1A8 18C0003A */  blez  $a2, .L8000F294
/* 00FDAC 8000F1AC 270286A8 */   addiu $v0, $t8, %lo(gCharacterSelections) # -0x7958
/* 00FDB0 8000F1B0 18C0000C */  blez  $a2, .L8000F1E4
/* 00FDB4 8000F1B4 00002025 */   move  $a0, $zero
/* 00FDB8 8000F1B8 96230000 */  lhu   $v1, ($s1)
/* 00FDBC 8000F1BC 00C22021 */  addu  $a0, $a2, $v0
/* 00FDC0 8000F1C0 80590000 */  lb    $t9, ($v0)
.L8000F1C4:
/* 00FDC4 8000F1C4 24420001 */  addiu $v0, $v0, 1
/* 00FDC8 8000F1C8 0044082B */  sltu  $at, $v0, $a0
/* 00FDCC 8000F1CC 17230002 */  bne   $t9, $v1, .L8000F1D8
/* 00FDD0 8000F1D0 00000000 */   nop
/* 00FDD4 8000F1D4 24050001 */  li    $a1, 1
.L8000F1D8:
/* 00FDD8 8000F1D8 5420FFFA */  bnel  $at, $zero, .L8000F1C4
/* 00FDDC 8000F1DC 80590000 */   lb    $t9, ($v0)
/* 00FDE0 8000F1E0 00002025 */  move  $a0, $zero
.L8000F1E4:
/* 00FDE4 8000F1E4 1A000029 */  blez  $s0, .L8000F28C
/* 00FDE8 8000F1E8 32070003 */   andi  $a3, $s0, 3
/* 00FDEC 8000F1EC 10E0000E */  beqz  $a3, .L8000F228
/* 00FDF0 8000F1F0 96230000 */   lhu   $v1, ($s1)
/* 00FDF4 8000F1F4 3C098016 */  lui   $t1, %hi(D_80163348) # $t1, 0x8016
/* 00FDF8 8000F1F8 25293348 */  addiu $t1, %lo(D_80163348) # addiu $t1, $t1, 0x3348
/* 00FDFC 8000F1FC 00044040 */  sll   $t0, $a0, 1
/* 00FE00 8000F200 01091021 */  addu  $v0, $t0, $t1
/* 00FE04 8000F204 00E03025 */  move  $a2, $a3
.L8000F208:
/* 00FE08 8000F208 944A0000 */  lhu   $t2, ($v0)
/* 00FE0C 8000F20C 24840001 */  addiu $a0, $a0, 1
/* 00FE10 8000F210 15430002 */  bne   $t2, $v1, .L8000F21C
/* 00FE14 8000F214 00000000 */   nop
/* 00FE18 8000F218 24050001 */  li    $a1, 1
.L8000F21C:
/* 00FE1C 8000F21C 14C4FFFA */  bne   $a2, $a0, .L8000F208
/* 00FE20 8000F220 24420002 */   addiu $v0, $v0, 2
/* 00FE24 8000F224 10900019 */  beq   $a0, $s0, .L8000F28C
.L8000F228:
/* 00FE28 8000F228 3C0C8016 */   lui   $t4, %hi(D_80163348) # $t4, 0x8016
/* 00FE2C 8000F22C 258C3348 */  addiu $t4, %lo(D_80163348) # addiu $t4, $t4, 0x3348
/* 00FE30 8000F230 00045840 */  sll   $t3, $a0, 1
/* 00FE34 8000F234 00106840 */  sll   $t5, $s0, 1
/* 00FE38 8000F238 01AC3021 */  addu  $a2, $t5, $t4
/* 00FE3C 8000F23C 016C1021 */  addu  $v0, $t3, $t4
/* 00FE40 8000F240 944E0000 */  lhu   $t6, ($v0)
.L8000F244:
/* 00FE44 8000F244 55C30003 */  bnel  $t6, $v1, .L8000F254
/* 00FE48 8000F248 944F0002 */   lhu   $t7, 2($v0)
/* 00FE4C 8000F24C 24050001 */  li    $a1, 1
/* 00FE50 8000F250 944F0002 */  lhu   $t7, 2($v0)
.L8000F254:
/* 00FE54 8000F254 55E30003 */  bnel  $t7, $v1, .L8000F264
/* 00FE58 8000F258 94580004 */   lhu   $t8, 4($v0)
/* 00FE5C 8000F25C 24050001 */  li    $a1, 1
/* 00FE60 8000F260 94580004 */  lhu   $t8, 4($v0)
.L8000F264:
/* 00FE64 8000F264 57030003 */  bnel  $t8, $v1, .L8000F274
/* 00FE68 8000F268 94590006 */   lhu   $t9, 6($v0)
/* 00FE6C 8000F26C 24050001 */  li    $a1, 1
/* 00FE70 8000F270 94590006 */  lhu   $t9, 6($v0)
.L8000F274:
/* 00FE74 8000F274 24420008 */  addiu $v0, $v0, 8
/* 00FE78 8000F278 17230002 */  bne   $t9, $v1, .L8000F284
/* 00FE7C 8000F27C 00000000 */   nop
/* 00FE80 8000F280 24050001 */  li    $a1, 1
.L8000F284:
/* 00FE84 8000F284 5446FFEF */  bnel  $v0, $a2, .L8000F244
/* 00FE88 8000F288 944E0000 */   lhu   $t6, ($v0)
.L8000F28C:
/* 00FE8C 8000F28C 14A0FFBE */  bnez  $a1, .L8000F188
/* 00FE90 8000F290 00000000 */   nop
.L8000F294:
/* 00FE94 8000F294 26100001 */  addiu $s0, $s0, 1
/* 00FE98 8000F298 24010002 */  li    $at, 2
/* 00FE9C 8000F29C 1601FFBA */  bne   $s0, $at, .L8000F188
/* 00FEA0 8000F2A0 26310002 */   addiu $s1, $s1, 2
.L8000F2A4:
/* 00FEA4 8000F2A4 8FBF0024 */  lw    $ra, 0x24($sp)
.L8000F2A8:
/* 00FEA8 8000F2A8 8FB00018 */  lw    $s0, 0x18($sp)
/* 00FEAC 8000F2AC 8FB1001C */  lw    $s1, 0x1c($sp)
/* 00FEB0 8000F2B0 8FB20020 */  lw    $s2, 0x20($sp)
/* 00FEB4 8000F2B4 03E00008 */  jr    $ra
/* 00FEB8 8000F2B8 27BD0028 */   addiu $sp, $sp, 0x28
