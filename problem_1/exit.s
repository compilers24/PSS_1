.section .text          # The ".text" section is where the code (instructions) is placed
.globl _start           # Declare the _start symbol as global so the linker can recognize it as the entry point

_start:                 # Entry point of the program, execution starts here
mov $60, %rax           # Move the value 60 into the %rax register.
                        # 60 is the system call number for 'exit' on Linux (in x86-64 architecture).
    
mov $42, %rdi           # Move the value 42 into the %rdi register.
                        # This value represents the exit status code, which will be returned when the process exits.

syscall                 # Make the system call using the values in the registers.
                        # The syscall invokes the exit system call.
                        # %rax holds the syscall number (60 = exit), and %rdi holds the exit status (42).