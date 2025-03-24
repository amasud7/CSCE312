// (NUMBER ONE) Write machine code to store data 71 and 72 at memory locations 10 and 11.

// create some data
D = 0
@71 // A = 71, M = mem[71]
D = D + A // 71 + 0

// store it in locations 10
@10 // A = 10, M = mem[10]
M = D // stores D(71) in mem[10]
D=D+1 // increment D to 72

// store 72 in location 11
@11 // A = 11, M = mem[11]
M = D


// (NUMBER TWO) Write machine code to iterate from 5 to 0

// initialize counter to 5
@5 // A = 5, M = mem[5]
D=A // D = 5

// store iterator
@iterator // A = iterator, M = mem[iterator]
M=D // stores D=5 at mem[iterator]

// start loop
(loop)
    // get iterator
    @iterator // A = iterator, M = mem[iterator]
    D=M // D = mem[iterator]
    D=D-1 // decrement D
    M=D // store decrement back into mem[iterator]

    // check if iterator is 0
    @loop
    D ; JGT // if D >= 0, jump to loop

// infinite loop
(infinite_loop)
    @infinite_loop
    0 ; JMP 


// (NUMBER THREE) Write machine code to test if a given number is odd or even. If the number is odd, write 1 in location 0 of memory. 
// If the number is even, write 0 in location 0 of memory.

// create a number to test whether odd or even
@71 // A = 71, M = mem[71]
D=A
@test_number // A = test_number, M = mem[test_number]
M=D // stores D=71 at mem[test_number]

// check if number is odd or even with bitwise AND and 1 --> (0001)
@1 // A = 1, M = mem[1]
D=D&A // D = 71 & 1

// if D == 0, then number is even
@even
D;JEQ // if D == 0, jump to even

(even)
@R0 // A = R0, M = mem[R0]
D=0
M=D
@end
0;JMP

// else, number is odd
@R0 // A = R0, M = mem[R0]
D=1
M=D

(end)
    @end
    0;JMP



// (NUMBER FOUR) Write machine code that takes data from a block of memory
// from RAM locations 5,6,7,8 and copies to new RAM locations 10,11,12,13. 

// copy data from location 5 to location 10
@5 // A = 5, M = mem[5]
D = M // D = mem[5]
@10 // A = 10, M = mem[10]
M = D // mem[10] = D

// copy data from location 6 to location 11
@6 // A = 6, M = mem[6]
D = M // D = mem[6]
@11 // A = 11, M = mem[11]
M = D // mem[11] = D

// copy data from location 7 to location 12
@7 // A = 7, M = mem[7]
D = M // D = mem[7]
@12 // A = 12, M = mem[12]
M = D // mem[12] = D

// copy data from location 8 to location 13
@8 // A = 8, M = mem[8]
D = M // D = mem[8]
@13 // A = 13, M = mem[13]
M = D // mem[13] = D




// add while loop example
// get N (number of times to loop) stored at R0

@R0 // A = R0, M = mem[R0]
D = M
@N // A = N, M = mem[N]
M=D 

// iterator
@i
M=0

// while loop (i < N)
(Loop)
    @i
    D = M
    @N
    D = D - M     // D = i - N

    @END
    D;JGE         // if i >= N, goto END (exit loop)

    // increment i
    @i
    M = M + 1


    @Loop // if we get to this point, jump back to loop
    0;JMP

(end)
    @end
    0;JMP