// array[N] at address K 
// sum the values of array 
// store sum into R0
// N in R5
// K in R6  
// if sum even, R2 = 1
// if sum odd, R2 = 0

// pseudo code 
// i = 0
// sum = 0
// while (i < N) {
//     sum = sum+array[i]
//     i++ 
// }

@R6         
D = M  // D = mem[6]
@K // push K onto stack (creates a variable that hold what was at R6)
M = D // mem[k] = D = mem[6]

@R5 
D = M 
@N 
M = D 

@i // creating a new variable and pushing onto stack (A = i, M = mem[i])
M = 0 // setting that value to 0

@sum 
M = 0 

(loop) // label that allows to jump back to this label using @loop

    // if (i >= N) break 
    // --> (i - N >= 0) we need to reframe the equation to use JGE (greater than equal to)

    @i // M = mem[i]
    D = M // D = i
    @N // M = mem[N]
    D = D-M // D = i-N 

    @cont // jump label
    D ; JGE // if D >= 0 then jump to cont

    // sum = sum + K[i]
    @i 
    D = M 

    @K  // value of K is in M 
    A = D+M // i + K --> K+i or K[i]

    // M = K[i] --> mem[mem[K]+mem[i]]
    D = M 

    @sum 
    M = D+M // K[i] + sum 

    @i 
    M = M+1 

    @loop
    0 ; JMP 

(cont)

// sum is ready 
@sum 
D = M 

@R0 
M = D // Mem[0] = D --> sum 

// if sum even, R2 = 1 
// else R2 = 0 

@1 
D = D&A

// if D == 1 then odd
// if D == 0 then even 

@even 
D ; JEQ 

// odd 
@R2 
M = 0 

@end 
0 ; JMP 


(even)
@R2 
M = 1 


(end)
@end 
0 ; JMP