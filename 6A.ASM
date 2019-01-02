          NAME main
          PUBLIC __iar_program_start
          SECTION .data:CONST:NOROOT(2)
NUM  DC16 0X1234
RESULT DS32 2
           SECTION .intvec :CODE:NOROOT(2)
__iar_program_start
main
    LDR R1,NUM
    MOV R0,R1
    MOVS R1,R1,LSL#16
    MOV R10,#10
    MOV R6,#4
LOOP1: MOV R1,R1,ROR#28
      MOV R3,R1
      AND R3,R3,#0X0F
      MUL R5,R10,R5
      ADD R5,R5,R3
      SUBS R6,R6,#1
      BNE LOOP1
STOP  B STOP
  END