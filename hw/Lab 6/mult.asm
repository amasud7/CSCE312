//mult.asm

//NAME: Ayad Masud
//UIN: 733009045

//This asm computes the mult of two numbers
//Assuming R0 stores the value n1, R1 stores value n2 
//and the final result is stored in R2.
///////////////////////////////////////////////////////////////////////////////

// initalize the sum to 0
@R2
M=0

// load R1 (multiplier) // we need to load r1 into a different register and then decrement that
@R1
D=M
@C
M=D

// check if R1 is zero --> then just return 0 because 0 * n = 0
@end
D;JEQ

(loop)
    // load R0 (multiplicand)
    @R0
    D=M

    @R2
    M=M+D // add R0 to R2

    // decrement R1
    @C
    M=M-1
    D=M // put in d register to check if R1 is 0

    // run loop until R1 is 0
    @loop
    D;JGT

(end)
    @end // infinite loop
    0;JMP