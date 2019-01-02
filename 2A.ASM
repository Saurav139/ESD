      NAME MAIN
      PUBLIC __iar_program_start
      SECTION .data:CONST:NOROOT(2)
DATA: DC32 0X99999999,0X33333333,0X44444444,0XFFFFFFFF,0X22222222
DATAEND: DC32 0X00
LENGTH: DC32 (DATAEND-DATA)/4
       SECTION .intvec :CODE:NOROOT(2)
__iar_program_start
main
       LDR R0,LENGTH
       SUB R0,R0,#1
       MOV R5,R0
       LDR R1,=DATA
LOOP2: MOV R0,R5
       MOV R2,R1
       ADD R2,R2,#4
LOOP1: LDR R3,[R1]
       LDR R4,[R2]
       CMP R3,R4
       BLO LOOP3
       STR R4,[R1]
       STR R3,[R2]
LOOP3: ADD R2,R2,#4
       SUBS R0,R0,#1
       BHI LOOP1
       ADD R1,R1,#4
       SUBS R5,R5,#1
       BGT LOOP2
STOP  B STOP
      END
       
       
      
      
      