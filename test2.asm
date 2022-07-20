        MOVE R0,1
        MOVE [R0],7
        MOVE R1,2
        MOVE [R1],7
        MOVE R2,0
        MOVE [R2],10
        MOVE R0,0
        MOVE R1,0
loop:   MOVE R3, 0
        MOVE R0,[R3]
        BEQ  R1,found
        MOVE R8,0
        BGT R8,loop
found:  ADD R7,1

