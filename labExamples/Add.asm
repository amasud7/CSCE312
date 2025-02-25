// add the values in mem[0]
// and mem[1] (R0, R1)
// store the result in mem[2]

@0 // A = 0; M = mem[0]
D = M

@1 // A = 1; M = mem[1]
D = D + M // D = mem[0] + mem[1]


@2 // A = 2; M = mem[2]
M = D // storing D in mem[2]