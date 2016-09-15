START    INP
         STA MODE

         INP
         STA VALUE_O
         INP
         STA VALUE_T

         LDA MODE
         BRZ SUBTRACT
         BRA ADDITION

ADDITION LDA VALUE_O
         ADD VALUE_T
         BRA END

SUBTRACT LDA VALUE_O
         SUB VALUE_T
         BRA END

END      OUT
         HLT

MODE     DAT 1
VALUE_O  DAT 1
VALUE_T  DAT 2
