// Negate the value stored in mem[0]
// store the result in mem[1]

@0 // A = 0; and M = mem[0] = mem[A] Register A holds 0
D = M // D = mem[0]


// 2s complement
// D = !D // flips all bits of D
// D = D + 1 // adding 1 to D for the 2s complement

// simpler version
D = -D

@1 // A = 1 at register 1; now M = mem[1]
M = D // writing the value in D to M = mem[1]