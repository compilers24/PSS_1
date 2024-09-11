# Problem 1: Simple Program to Exit with Status Code `42`

### Purpose:

A simple assembly program that exits and returns the status code `42` back to the Linux kernel.

### Input:

None. The program does not take any input.

### Output:

The program exits with a status code that can be viewed using the command:

```bash
echo $?
```

##### VARIABLES:

- **`%rax`**: Holds the system call number for `exit`.
- **`%rdi`**: Holds the status code we will return.

### Commands To Run:

1. **`as exit.s -o exit.o`**:

   - Assemble the source file and generates an object file (`exit.o`).

2. **`ld exit.o -o exit`**:

   - This command links the object file (`exit.o`) to produce a final executable (`exit`).

3. **`./exit`**:
   - This command executes the resulting program (`exit`). The `./` prefix tells the shell to run the program from the current directory.
