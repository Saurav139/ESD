          NAME MAIN
          PUBLIC __iar_program_start
          SECTION .data:CONST:NOROOT(2)
N DC32 5
R DC8  1
RESULT DS32 2
          SECTION .intvec :CODE:NOROOT(2)
__iar_program_start
main
      LDR R0,N
      LDRB R1,R
      CMP R1,#1
      BEQ PRINT
      MOV R2,R0
      MOV R3,R1
MUL1: SUB R2,R2,#1
      MUL R0,R2,R0
      SUB R3,R3,#1
      CMP R3,#1
      BNE MUL1
      MOV R3,R1
      SUB R3,R3,#1
FACT: MUL R1,R3,R1
      SUBS R3,R3,#1
      BNE FACT
DIV:  SUBS R0,R0,R1
      ADD R5,R5,#1
      BNE DIV
      B END1
PRINT: MOV R5,R0
END1:
STOP B STOP 
      END
