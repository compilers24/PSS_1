# Problem 2: Simple Program to Add Two Numbers

### Purpose:

A simple assembly program that adds two numbers together and exits, returning the result.

### Output:

The program exits with the result of the addition. You can view the result using the following command:

```bash
echo $?
```

##### VARIABLES:

- **`%rax`**: Holds the system call number for `exit`.
- **`%rdi`**: Holds the result of the addition that we will return.
- **`%rbx`**: Holds the first number of the addition.
- **`%rsi`**: Holds the second number of the addition.

### Commands To Run:

1. **`as add.s -o add.o`**:

   - Assemble the source file and generates an object file (`add.o`).

2. **`ld add.o -o add`**:

   - This command links the object file (`add.o`) to produce a final executable (`add`).

3. **`./add`**:
   - This command executes the resulting program (`add`). The `./` prefix tells the shell to run the program from the current directory.
