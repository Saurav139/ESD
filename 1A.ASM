      NAME main
      PUBLIC __iar_program_start
      SECTION .datas:CONST(2)
DATA  DCD 0X11111111,0X22222222,0X33333333,0XF4444444
RESULT DS32 6
      SECTION .intvec:CODE:NOROOT(2)
__iar_program_start

main
      ADR R0,DATA
      ADR R11,RESULT
      LDMIA R0!,{R1-R4}
      ADDS R5,R3,R1
      ADC  R6,R4,R2
      ADDCS R7,R7,#1
      SUBS R8,R3,R1
      SUBCS R9,R4,R2
      SUBCC R10,R10,#1
      STMIA R11!,{R5-R10}
STOP  B  STOP
      END
      