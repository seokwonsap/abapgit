*----------------------------------------------------------------------*
***INCLUDE MBC410ADIAS_DYNPROI01 .
*----------------------------------------------------------------------*
*&---------------------------------------------------------------------*
*&      Module  check_sflight  INPUT
*&---------------------------------------------------------------------*
*       Read flight record from database
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
  "MESSAGE I007(BC410).
  MESSAGE 'No Data !!!' TYPE 'I'.
ENDMODULE.                 " check_sflight  INPUT



*&---------------------------------------------------------------------*
*&      Module  user_command_0100  INPUT
*&---------------------------------------------------------------------*
*       process user command
*----------------------------------------------------------------------*
MODULE USER_COMMAND_0100 INPUT.
  CASE OK_CODE.
    WHEN 'BACK'.
      LEAVE TO SCREEN 0.

* display time on add'l screen
    WHEN 'TIME'.
      CALL SCREEN 150
        STARTING AT 10 10
        ENDING   AT 50 20.

    WHEN 'SAVE'.
      UPDATE SFLIGHT
      FROM WA_SFLIGHT.
      IF SY-SUBRC <> 0.
        MESSAGE a008(bc410).
      ENDIF.
      MESSAGE s009(bc410).


  ENDCASE.
ENDMODULE.                 " user_command_0100  INPUT





*&---------------------------------------------------------------------*
*&      Module  EXIT  INPUT
*&---------------------------------------------------------------------*
*       text
*----------------------------------------------------------------------*
MODULE EXIT INPUT.
    CASE OK_CODE.
    WHEN 'EXIT'.
      LEAVE PROGRAM.
    WHEN 'CANCEL'.
      CLEAR WA_SFLIGHT.
      SET PARAMETER ID:
        'CAR' FIELD WA_SFLIGHT-CARRID,
        'CON' FIELD WA_SFLIGHT-CONNID,
        'DAY' FIELD WA_SFLIGHT-FLDATE.
      LEAVE TO SCREEN 100.
  ENDCASE.
ENDMODULE.





*&---------------------------------------------------------------------*
*&      Module  CHECK_PLANETYPE  INPUT
*&---------------------------------------------------------------------*
*       text
*----------------------------------------------------------------------*
MODULE CHECK_PLANETYPE INPUT.


IF SDYN_CONN-PLANETYPE IS INITIAL.
  MESSAGE E555(BC410) WITH 'Plane Type needed'(plt).
ENDIF.

SELECT SINGLE SEATSMAX
  FROM SAPLANE
  INTO SDYN_CONN-SEATSMAX
  WHERE PLANETYPE = SDYN_CONN-PLANETYPE
  .

IF SDYN_CONN-SEATSOCC > SDYN_CONN-SEATSMAX.
  MESSAGE E109(BC410).
  ELSE.
    MOVE-CORRESPONDING SDYN_CONN TO WA_SFLIGHT.
ENDIF.


ENDMODULE.
