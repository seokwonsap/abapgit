*&---------------------------------------------------------------------*
*& Include          MZDEMO_26I01
*&---------------------------------------------------------------------*
*&---------------------------------------------------------------------*
*&      Module  USER_COMMAND_0100  INPUT
*&---------------------------------------------------------------------*
*       text
*----------------------------------------------------------------------*
MODULE USER_COMMAND_0100 INPUT.
     CASE OK_CODE.
        WHEN 'BACK'.
          LEAVE TO SCREEN 0.
        WHEN 'EXIT'.
          LEAVE TO SCREEN 0.
        WHEN 'CANCEL'.
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
