*&---------------------------------------------------------------------*
*& Include          MZBC410_SOLUTION_26I01
*&---------------------------------------------------------------------*




*&---------------------------------------------------------------------*
*&      Module  USER_COMMAND_0100  INPUT
*&---------------------------------------------------------------------*
*       text
*----------------------------------------------------------------------*
MODULE USER_COMMAND_0100 INPUT.

     "IO COMMAND 영역
     CASE IO_COMMAND.
       WHEN 'X'.
         LEAVE TO SCREEN 0.
       WHEN 'T'.
         CALL SCREEN 150
         STARTING AT 10 10
         ENDING AT   50 14.
         CLEAR io_command.
       WHEN OTHERS.
       ENDCASE.


     "OK CODE 영역
     CASE OK_CODE.
       WHEN 'TIME'.
         CALL SCREEN 150
           STARTING AT 10 10
           ENDING AT   50 14.
        WHEN 'CRT'.
          GV_MOD = OK_CODE.
           "아직 XXXX
        WHEN 'UPD'.
           "아직 XXX
        WHEN 'DISCHG'.
          PERFORM SET_MODE.
          CLEAR IO_COMMAND.
        WHEN 'BACK'.
          LEAVE TO SCREEN 0.
*        WHEN 'EXIT'.
*          LEAVE TO SCREEN 0.
*        WHEN 'CANCEL'.
*          LEAVE PROGRAM.
        WHEN 'DIGBOX'.
          CALL SCREEN 110
            STARTING AT 10 5.
*       WHEN 'EX'.
*         LEAVE TO SCREEN 0.
        WHEN OTHERS.
           CLEAR  GV_MOD.
     ENDCASE.

ENDMODULE.



*&---------------------------------------------------------------------*
*&      Module  EXIT  INPUT
*&---------------------------------------------------------------------*
*       text
*----------------------------------------------------------------------*
MODULE EXIT INPUT.
  CASE OK_CODE.
    WHEN 'EXIT'.
      LEAVE TO SCREEN 0.
    WHEN 'CANC'.
      LEAVE PROGRAM.
    WHEN OTHERS.
   ENDCASE.
ENDMODULE.



*&---------------------------------------------------------------------*
*&      Module  CHECK_SFLIGHT  INPUT
*&---------------------------------------------------------------------*
*       text
*----------------------------------------------------------------------*
MODULE CHECK_SFLIGHT INPUT.


  SELECT SINGLE * FROM SFLIGHT
    INTO WA_SFLIGHT
    WHERE CARRID = SDYN_CONN-CARRID
      AND CONNID = SDYN_CONN-CONNID
      AND FLDATE = SDYN_CONN-FLDATE
      .

  CHECK SY-SUBRC <> 0.
  CLEAR WA_SFLIGHT.
  MESSAGE I007(BC410).

ENDMODULE.
