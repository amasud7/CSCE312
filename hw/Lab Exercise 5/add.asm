//addn.asm

//NAME: Ayad Masud
//UIN: 733009045

//This asm computes the sum of two numbers
//Assuming RAM[0] stores the number a and RAM[1] stores the number b
//so conceptually, the goal is to compute RAM[0] + RAM[1].
//The result will be stored to RAM[2].
//Write your code below.
///////////////////////////////////////////////////////////////////////////////

@R0 // A = R0, M = mem[R0]
D = M

@R1 // A = R1, M = mem[R1]
D = D + M // R0 + R1

@R2 // A = R2, M = mem[R2]
M = D // stores D in mem[R2]
