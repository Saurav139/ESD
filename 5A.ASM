 NAME main
          PUBLIC __iar_program_start
           SECTION .intvec :CODE:NOROOT(2)
__iar_program_start
main
         MOV R6,#05
         MOV R4,R6
LOOP1:   SUBS R4,R4,#01
         MULNE R7,R6,R4
         MOV R6,R7
         BNE LOOP1
STOP B STOP
     END