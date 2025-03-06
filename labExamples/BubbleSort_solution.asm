// Sort an array of length N with bubble sort
// R0: array[0] address
// R1: N

@R0
D = M
@array_ptr
M = D

@R1
D = M
@N
M = D

// Bubble Sort:
// i = 0
@i
M = 0
// while (i < N - 1)
// {
(outer)
    // i >= N - 1 ==> break
    // :: i - N + 1 >= 0 ==> break
    @i
    D = M // D = i
    @N
    D = D-M // D = i - N
    D = D+1
    @break_outer
    D ; JGE // D = i - N + 1 >= 0 ==> jump to (break_outer)
    // j = 0
    @j
    M = 0
    // while (j < N - i - 1)
    // {
    (inner)
        // j >= N - i - 1 ==> break
        // :: j - N + i + 1 >= 0 ==> break
        @j
        D = M // D = j
        @N
        D = D-M // D = j - N
        @i
        D = D+M // D = j - N + i
        @break_inner
        D+1 ; JGE // D + 1 = j - N + i + 1 >= 0 ==> jump to (break_inner)
        // if (array[j] > array[j + 1])
        // array[j] > array[j + 1]
        // :: array[j] - array[j + 1] > 0
        // :: mem[array_ptr + j] - mem[array_ptr + j + 1] > 0 ==> swap
        // ==> array[j] - array[j + 1] <= 0 ==> else
        @array_ptr
        D = M // D = array_ptr
        @j
        A = D+M // A = array_ptr + j; M = mem[array_ptr + j] = array[j]
        D = M // D = array[j]
        A = A+1 // A = array_ptr + j + 1; M = mem[array_ptr + j + 1] = array[j + 1]
        D = D-M // D = array[j] - array[j + 1] 
        @else
        D ; JLE // array[j] - array[j + 1] <= 0 ==> jump to (else)
        // {
            // swap(array[j], array[j + 1])
            @array_ptr
            D = M // D = array_ptr
            @j
            A = D+M // A = array_ptr + j; M = array[j]
            D = M // D = array[j]
            A = A+1 // A = array_ptr + j + 1; M = array[j + 1]
            D = D+M // D = array[j] + array[j + 1]
            M = D-M // array[j + 1] = array[j] + array[j + 1] - array[j + 1] = array[j]
            A = A-1 // A = array_ptr + j; M = array[j]
            M = D-M // array[j] = array[j] + array[j + 1] - array[j] = array[j + 1]
        // }
        (else)
        // ++j
        @j
        M = M+1
        // jump to (inner)
        @inner
        0 ; JMP
    // }
    (break_inner)
    // ++i
    @i
    M = M+1
    // jump to (outer)
    @outer
    0 ; JMP
// }
(break_outer)

// Infinite Loop
(end)
@end
0 ; JMP