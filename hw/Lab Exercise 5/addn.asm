//addn.asm

//NAME: Ayad Masud
//UIN: 733009045

//This asm computes the sum of n numbers
//Assuming RAM[0] stores the value n (how many numbers to sum)
//and the numbers are stored in consecutive addresses starting at address 1.
//The result will be stored in RAM[0], overwriting the original value of n.

// get N
@R0
D = M
@N
M = D     // N = RAM[0]

// i = 0
@i
M = 0

// sum = 0
@sum
M = 0

// while (i < N) {
(LOOP)
    @i
    D = M
    @N
    D = D - M     // D = i - N
    @END
    D;JGE         // if i >= N, goto END

    // Calculate memory address (RAM[1+i])
    @i
    D = M
    @1            // Start at RAM[1]
    D = D + A     // D = 1 + i
    A = D
    D = M         // D = RAM[1+i]

    // Add to sum
    @sum
    M = M + D     // sum += RAM[1+i]

    // i++
    @i
    M = M + 1

    @LOOP
    0;JMP
// }

(END)
    // Store result in RAM[0]
    @sum
    D = M
    @R0
    M = D         // RAM[0] = sum

(INFINITE_LOOP)
    @INFINITE_LOOP
    0;JMP         // Infinite loop to end program

