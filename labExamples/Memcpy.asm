// memcpy(dest, src, size)
// copy array of length size from address src into address dest
// R0: src
// R1: dest
// R2: size


// basically just moving data to a new location (R0 ... variables)
@R0 // A = R0, M = mem[R0]
D = M
@src // A = src = 16; M = mem[src]
M = D // mem[src] = R0

@R1 // A = R1, M = mem[R1]
D = M
@dest // A = dest = 17; M = mem[dest]
M = D // mem[dest] = R1

@R2 // A = R2, M = mem[R2]
D = M
@size // A = size = 18; M = mem[size]
M = D // mem[size] = R2


// i = 0
// while (i < size) {
//     mem[dest + i] = mem[src + i]
//     ++i
// }


@i
M = 0

(loop)
    // this is all for loop control
    // if i < size --> break
    // need to convert (to compare with zero) -->     i - size >= 0    --> break
    @i
    D = M // D = i
    @size
    D = D-M // D = i - size
    @break
    D ; JGE // if D >= 0 (i >= size), jump to break

    // now actual content of loop
    @src // A = src; M = mem[src]
    A = M // A = mem[src]; M = mem[mem[src]]
    D = M // D = mem[mem[src]]
    @dest
    A = M // A = mem[dest]; M = mem[mem[dest]]
    M = D // D = mem[mem[dest]] = mem[mem[src]]

    @src
    M = M+1 // mem[src] = mem[src] + 1
    @dest
    M = M+1 // mem[dest] = mem[dest] + 1

    @i
    M = M+1 // i = i + 1

    @loop
    0 ; JMP // jump to loop
(break)

(end)
@end
0 ; JMP // infinite loop