START    INP
         BRZ SUBTRACT
         BRA ADDITION

ADDITION INP
         STA VALUE_O
         INP
         ADD VALUE_O
         BRA END

SUBTRACT INP
         STA VALUE_O
         INP
         STA VALUE_T
         LDA VALUE_O
         SUB VALUE_T
         BRA END

END      OUT
         HLT

VALUE_O  DAT 1
VALUE_T  DAT 2
