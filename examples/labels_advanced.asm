START INP     # Waits for input and stores it in the accumulator
      STA NUM # Stores the contents of the accumulator to the memory address of the label: NUM
      INP     # Waits for input and stores it in the accumulator
      ADD NUM # Add the contents of memory address of the label: NUM to the accumulator
      OUT     # Outputs the contents of the accumulator
      HLT     # Signify the end of the program
NUM   DAT 1   # Defines the label: NUM as containing data, and sets it to a preset of 1
