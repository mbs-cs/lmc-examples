START    INP          # Waits for input and stores it in the accumulator
         STA MODE     # Stores the contents of the accumulator into the memory location of the label: MODE

         INP          # Waits for input and stores it in the accumulator
         STA VALUE_O  # Stores the contents of the accumulator into the memory location of the label: VALUE_O
         INP          # Waits for input and stores it in the accumulator
         STA VALUE_T  # Stores the contents of the accumulator into the memory location of the label: VALUE_T

         LDA MODE     # Loads the contents of the memory location of the label: MODE to the accumulator
         BRZ ADDITION # Branches to the memory location of the label: ADDITION is the contents of the accumulator are 0
         BRA SUBTRACT # Branches to the memory location of the label: SUBTRACT

ADDITION LDA VALUE_O  # Loads the contents of the memory location of the label: VALUE_O to the accumulator
         ADD VALUE_T  # Add the contents of memory address of the label: NUM to the accumulator
         BRA END      # Branches to the memory location of the label: END

SUBTRACT LDA VALUE_O  # Loads the contents of the memory location of the label: VALUE_O to the accumulator
         SUB VALUE_T  # Subtract the contents of memory address of the label: NUM to the accumulator
         BRA END      # Branches to the memory location of the label: END

END      OUT          # Outputs the contents of the accumulator
         HLT          # Signify the end of the program

MODE     DAT 1        # Defines the label: MODE as containing data, and sets it to a preset of 1
VALUE_O  DAT 1        # Defines the label: VALUE_O as containing data, and sets it to a preset of 1
VALUE_T  DAT 2        # Defines the label: VALUE_T as containing data, and sets it to a preset of 2
