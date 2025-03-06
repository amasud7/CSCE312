load BubbleSort.asm,
output-file BubbleSort.out,
compare-to BubbleSort.cmp,
output-list RAM[1000]%D2.6.2
            RAM[1001]%D2.6.2 
            RAM[1002]%D2.6.2 
            RAM[1003]%D2.6.2 
            RAM[1004]%D2.6.2;

set RAM[0] 1000,
set RAM[1] 5,

set RAM[1000] 1,
set RAM[1001] 2,
set RAM[1002] 3,
set RAM[1003] 4,
set RAM[1004] 5,

repeat 500 {
    ticktock;
}
output;

set PC 0,
set RAM[1000] 3,
set RAM[1001] 2,
set RAM[1002] 4,
set RAM[1003] 1,
set RAM[1004] 5,

repeat 500 {
    ticktock;
}
output;

set PC 0,
set RAM[1000] 5,
set RAM[1001] 4,
set RAM[1002] 3,
set RAM[1003] 2,
set RAM[1004] 1,

repeat 500 {
    ticktock;
}
output;