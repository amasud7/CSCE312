// Sort an array of length N with bubble sort
// R0: array[0] address
// R1: N

// Bubble Sort:
// i = 0
// while (i < N - 1)
// {
    // j = 0
    // while (j < N - i - 1)
    // {
        // if (array[j] > array[j + 1])
        // {
            // swap(array[j], array[j + 1])
        // }
        // ++j
    // }
    // ++i
// }

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
    // reformat --> i - N + 1 >= 0
    @i
    D = M // D = i
    @N
    D = D - M // D = i - N
    D = D + 1 // D = i - N + 1
    @break_outer
    D ; JGE // if D >= 0 (i >= N - 1), jump to break_outer



    // j = 0
    @j
    M = 0

    // while (j < N - i - 1)
    // {
    (inner)
        // reformat --> j - N + i + 1 >= 0
        @j
        D = M // D = j
        @N
        D = D - M // D = j - N
        @i
        D = D + M // D = j - N + i
        D = D + 1 // D = j - N + i + 1
        @break_inner
        D ; JGE // if D >= 0 (j >= N - i - 1), jump to break_inner



        // if (array[j] > array[j + 1])
        // {
            // reformat --> array[j] - array[j + 1] > 0
            // mem[array_ptr + j] - mem[array_ptr + j + 1] <= 0
            @array_ptr // A = array_ptr; M = mem[array_ptr]
            D = M // D = array_ptr
            @j
            A = D + M // A = array_ptr + j; M = mem[array_ptr + j]
            D = M // D = mem[array_ptr + j]
            A = A + 1 // A = array_ptr + j + 1; M = mem[array_ptr + j + 1]
            D = D - M // D = mem[array_ptr + j] - mem[array_ptr + j + 1]
            @else
            D ; JLE // if D <= 0 (mem[array_ptr + j] <= mem[array_ptr + j + 1]), jump to else

            // swap(array[j], array[j + 1])
            // a = a + b
            // b = a - b =  (a + b) - b = a
            // a = a - b = (a + b) - a = b
            @array_ptr // A = array_ptr; M = mem[array_ptr]
            D = M // D = array_ptr
            @j
            A = D + M // A = array_ptr + j; M = mem[array_ptr + j]
            D = M // D = mem[array_ptr + j]
            A = A + 1 // A = array_ptr + j + 1; M = mem[array_ptr + j + 1]
            D = D + M // D = mem[array_ptr + j] + mem[array_ptr + j + 1]
            A = A - 1 // A = array_ptr + j; M = mem[array_ptr + j]
            M = D // mem[array_ptr + j] = mem[array_ptr + j] + mem[array_ptr + j + 1]

        // }
        (else)



        // ++j
        @j
        M = M + 1 // j = j + 1

        @inner
        0 ; JMP
    // }
    (break_inner)




    // ++i
    @i
    M = M + 1 // i = i + 1

    @outer
    0 ; JMP

(break_outer)
// }

