//complement.asm

//NAME: Ayad Masud
//UIN: 733009045

//This asm checks whether two numbers a and b are complements;
//that is, each bit active in a is inactive b, and vice-versa.
//Other ways of saying this are:
// (a & b) = 0 and (a | b) = 0b111..., where & is bitwise AND and | is bitwise OR
// (a + b) = -1
// and any other technique you come up with is ok, as long as it functions properly.
//The two numbers are given in RAM[0] and RAM[1]
//and the result will be stored to RAM[2].
//The result should be 1 if a and b are complements,
//and 0 if they are not.
//Write your code below.
///////////////////////////////////////////////////////////////////////////////

// add the two numbers --> add one to the result --> check if the result is 0 --> then it is complement
@R0 // A = R0, M = mem[R0]
D = M

@R1 // A = R1, M = mem[R1]
D = D + M // R0 + R1

D = D + 1 // adding one

// now compare to 0
@if
D ; JEQ // if D == 0, jump to if

@R2 // A = R2, M = mem[R2]
M = 0 // not complement
@end
0 ; JMP

(if)
@R2
M = 1 // is complement

(end)


