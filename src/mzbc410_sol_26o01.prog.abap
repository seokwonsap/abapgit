*----------------------------------------------------------------------*
***INCLUDE MBC410ADIAS_DYNPROO01 .
*----------------------------------------------------------------------*
*&---------------------------------------------------------------------*
*&      Module  move_to_dynp  OUTPUT
*&---------------------------------------------------------------------*
*       copy data to screen structure
*----------------------------------------------------------------------*
MODULE MOVE_TO_DYNP OUTPUT.
  MOVE-CORRESPONDING WA_SFLIGHT TO SDYN_CONN.
ENDMODULE.                 " move_to_dynp  OUTPUT
*&---------------------------------------------------------------------*
*&      Module  status_0100  OUTPUT
*&---------------------------------------------------------------------*
*       set status and title for screen 100
*----------------------------------------------------------------------*
MODULE STATUS_0100 OUTPUT.
  SET PF-STATUS 'STATUS_100'.
  CASE 'X'.
    WHEN VIEW.
      SET TITLEBAR 'TITLE_100' WITH 'Anzeige'(vie).
    WHEN MAINTAIN_FLIGHTS.
      SET TITLEBAR 'TITLE_100' WITH 'Flug pflegen'(fli).
    WHEN MAINTAIN_BOOKINGS.
      SET TITLEBAR 'TITLE_100' WITH 'Maintain Bookings'(boo).
  ENDCASE.

ENDMODULE.                 " status_0100  OUTPUT
*&---------------------------------------------------------------------*
*&      Module  status_0150  OUTPUT
*&---------------------------------------------------------------------*
*       set status and title for screen 150
*----------------------------------------------------------------------*
MODULE STATUS_0150 OUTPUT.
  SET PF-STATUS 'STATUS_150'.
  SET TITLEBAR  'TITLE_150' WITH TEXT-VIE.
ENDMODULE.                 " status_0150  OUTPUT
*&---------------------------------------------------------------------*
*&      Module  clear_ok_code  OUTPUT
*&---------------------------------------------------------------------*
*       initialize ok_code
*----------------------------------------------------------------------*
MODULE CLEAR_OK_CODE OUTPUT.
  CLEAR OK_CODE.
ENDMODULE.                 " clear_ok_code  OUTPUT
*&---------------------------------------------------------------------*
*&      Module  modify_screen  OUTPUT
*&---------------------------------------------------------------------*
*       change elements dynamically
*----------------------------------------------------------------------*
MODULE MODIFY_SCREEN OUTPUT.
  IF MAINTAIN_FLIGHTS = 'X'.
    LOOP AT SCREEN.
      IF SCREEN-NAME = 'SDYN_CONN-PLANETYPE'.
        SCREEN-INPUT = 1.
        MODIFY SCREEN.
      ENDIF.
    ENDLOOP.
  ELSE.
    SET PF-STATUS 'STATUS_100' EXCLUDING 'SAVE'.
  ENDIF.

ENDMODULE.                 " modify_screen  OUTPUT





*&---------------------------------------------------------------------*
*& Module FILL_DYNNR OUTPUT
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
MODULE FILL_DYNNR OUTPUT.
  CASE 'X'.
    WHEN VIEW.
      DYNNR = '0110'.
    WHEN MAINTAIN_FLIGHTS.
      DYNNR = '0120'.
    WHEN MAINTAIN_BOOKINGS.
      DYNNR = '0130'.
  ENDCASE.
ENDMODULE.





*&---------------------------------------------------------------------*
*& Module GET_SPFLI OUTPUT
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
MODULE GET_SPFLI OUTPUT.
  ON CHANGE OF WA_SFLIGHT-CARRID OR WA_SFLIGHT-CONNID.
               SELECT SINGLE * INTO CORRESPONDING FIELDS OF SDYN_CONN
               FROM SPFLI
               WHERE CARRID = WA_SFLIGHT-CARRID
                 AND CONNID = WA_SFLIGHT-CONNID.
  ENDON.
ENDMODULE.





*&---------------------------------------------------------------------*
*& Module GET_SAPLANE OUTPUT
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
MODULE GET_SAPLANE OUTPUT.
  ON CHANGE OF WA_SFLIGHT-PLANETYPE.
     SELECT SINGLE * FROM SAPLANE
     WHERE PLANETYPE = WA_SFLIGHT-PLANETYPE.
  ENDON.
ENDMODULE.
