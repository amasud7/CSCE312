load Summation.asm,
output-file Summation.out,
compare-to Summation.cmp,
output-list RAM[0]%D2.6.2 RAM[2]%D2.6.2;

set RAM[5] 10,
set RAM[6] 50;

set RAM[50] 75,
set RAM[51] 42,
set RAM[52] 62,
set RAM[53] 2,
set RAM[54] 15,
set RAM[55] 45,
set RAM[56] 30,
set RAM[57] 12,
set RAM[58] 6,
set RAM[59] 81;

repeat 300 {
    ticktock;
}
output;

set PC 0,
set RAM[5] 13,
set RAM[6] 30,
set RAM[30] 56,
set RAM[31] 2,
set RAM[32] 63,
set RAM[33] 92,
set RAM[34] 15,
set RAM[35] 45,
set RAM[36] 3,
set RAM[37] 12,
set RAM[38] 6,
set RAM[39] 81;
set RAM[40] 33;
set RAM[41] 190;
set RAM[42] 99;

repeat 300 {
    ticktock;
}
output;