// array[10] at address 50 
// sum the values of array 
// store sum into R0 = mem[0]

// D holds the sum 

@50         //A = 50 M = mem[50]
D = M       // D = Memory[50] 
            // A holds the addrses

// mem[51] 
A = A+1         // A =51
D = D + M       // D = mem[50] + mem[51]

// mem[52]
A = A+1 // A=52 
D = D+M // D = D+Mem[52] 

// mem[53] 
A = A+1 
D = D + M 

// mem[54] 
A = A+1 
D = D + M

// mem[55] 
A = A+1 
D = D + M

// mem[56] 
A = A+1 
D = D + M

// mem[57] 
A = A+1 
D = D + M

// mem[58] 
A = A+1 
D = D + M

// mem[59] 
A = A+1 
D = D + M 

// D is the sum
@R0 // A = 0; mem[0]
M = D // Mem[0] = D --> sum 

(end)
@end 
0;JMP