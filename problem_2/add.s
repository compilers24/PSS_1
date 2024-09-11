.section .text          # The ".text" section where the code (instructions) are placed
.globl _start           # Declare the _start symbol as global so the linker can recognize it as the entry point

_start:                 # The entry point of the program, execution starts here

    mov $5, %rbx        # Move the immediate value 5 into the %rbx register (first number for addition)
    mov $6, %rcx        # Move the immediate value 6 into the %rcx register (second number for addition)

    add %rcx, %rbx      # Add the value in %rcx (6) to %rbx (5). Result is stored in %rbx (5 + 6 = 11)

    mov $60, %rax       # Move the system call number for 'exit' (60 in Linux x86-64) into %rax
    mov %rbx, %rdi      # Move the result of the addition (now 11 in %rbx) into %rdi (exit status)
    syscall             # Make the system call to exit the program, returning 11 as the exit status
