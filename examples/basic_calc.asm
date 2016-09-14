    INP    # Waits for input and stores it in the accumulator
    STA 99 # Stores the contents of the accumulator to the memory address: 99
    INP    # Waits for input and stores it in the accumulator
    ADD 99 # Add the contents of memory address: 99 to the accumulator
    OUT    # Outputs the contents of the accumulator
    HLT    # Signify the end of the program
