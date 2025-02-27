load Summation.asm,
output-file Summation.out,
compare-to Summation.cmp,
output-list RAM[0]%D2.6.2;

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

repeat 70 {
    ticktock;
}
output;

set PC 0,
set RAM[50] 56,
set RAM[51] 2,
set RAM[52] 63,
set RAM[53] 92,
set RAM[54] 15,
set RAM[55] 45,
set RAM[56] 3,
set RAM[57] 12,
set RAM[58] 6,
set RAM[59] 81;

repeat 70 {
    ticktock;
}
output;