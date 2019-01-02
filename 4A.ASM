          NAME MAIN
          PUBLIC __iar_program_start
          SECTION .data:CONST:NOROOT(2)
MYSTRING: DC8 'MADAM'
MYSTRINGEND: DC8 0X00
LENGTH:   DC8 MYSTRINGEND-MYSTRING
          SECTION .intvec :CODE:NOROOT(2)
__iar_program_start
MAIN
       ADR R1,MYSTRING
       LDRB R0,LENGTH
       ADR R2,MYSTRINGEND
       SUB R2,R2,#1
LOOP1: LDRB R3,[R1],#1
       LDRB R4,[R2],#-1
       CMP R3,R4
       BNE END1
       SUBS R0,R0,#1
       BNE LOOP1
       MOV R10,#1
       B END2
END1:  MOV R9,#1
END2:
STOP   B  STOP
       END

          