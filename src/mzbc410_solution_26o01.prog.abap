*&---------------------------------------------------------------------*
*& Include          MZBC410_SOLUTION_26O01
*&---------------------------------------------------------------------*



*&---------------------------------------------------------------------*
*& Module STATUS_0100 OUTPUT
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
MODULE STATUS_0100 OUTPUT.
 SET PF-STATUS '100'.

 CASE 'X'.
   WHEN VIEW.
      SET TITLEBAR 'T100' WITH 'VIEW'(vie).
   WHEN MAINTAIN_FLIGHTS.
      SET TITLEBAR 'T100' WITH 'Maintain Flight'(fli).
   WHEN MAINTAIN_BOOKINGS.
      SET TITLEBAR 'T100' WITH 'Maintain Bookings'(boo).
   WHEN OTHERS.
     SET TITLEBAR 'T100' WITH SY-UNAME.
 ENDCASE.
ENDMODULE.



*&---------------------------------------------------------------------*
*& Module STATUS_0110 OUTPUT
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
MODULE STATUS_0110 OUTPUT.
  SET PF-STATUS '110'.
  SET TITLEBAR 'SCARR'.
ENDMODULE.





*&---------------------------------------------------------------------*
*& Module STATUS_0150 OUTPUT
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
MODULE STATUS_0150 OUTPUT.
  SET PF-STATUS '150'.
  SET TITLEBAR 'TIME'.
ENDMODULE.








*&---------------------------------------------------------------------*
*& Module MOVE_TO_DYNP OUTPUT
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
MODULE MOVE_TO_DYNP OUTPUT.
  IF GV_MOD = 'CRT'.
    CLEAR  : WA_SFLIGHT.
  ENDIF.
  MOVE-CORRESPONDING WA_SFLIGHT TO SDYN_CONN.
ENDMODULE.





*&---------------------------------------------------------------------*
*& Module MODIFY_SCREEN OUTPUT
*&---------------------------------------------------------------------*
*& MOP그룹의 NOT Possible 된것들을 입력가능하게 바꿔준다.
*&---------------------------------------------------------------------*
MODULE MODIFY_SCREEN OUTPUT.
  LOOP AT SCREEN.
    IF SCREEN-GROUP1 = 'MOD'.
      IF GV_MODE = 'C'.
        SCREEN-INPUT = 1.
      ELSEIF GV_MODE = 'D'.
        SCREEN-INPUT = 0.
      ENDIF.
    ENDIF.
    MODIFY SCREEN.
  ENDLOOP.


  IF MAINTAIN_FLIGHTS = 'X'.
    LOOP AT SCREEN.
      IF SCREEN-NAME = 'SDYN_CONN-PLANETYPE'.
        SCREEN-INPUT = 1.
        MODIFY SCREEN.
      ENDIF.
    ENDLOOP.
  ENDIF.

  IF MAINTAIN_BOOKINGS = 'X'.
    LOOP AT SCREEN.
      IF SCREEN-GROUP1 = 'MOD'.
        SCREEN-INPUT = 1.
        MODIFY SCREEN.
      ENDIF.
    ENDLOOP.
  ENDIF.


ENDMODULE.





*&---------------------------------------------------------------------*
*& Module GET_DATA OUTPUT
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
MODULE GET_DATA OUTPUT.
  SELECT SINGLE * FROM SCARR
    WHERE CARRID = SDYN_CONN-CARRID.
ENDMODULE.




*&---------------------------------------------------------------------*
*& Module CLEAR_OK_CODE OUTPUT
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
MODULE CLEAR_OK_CODE OUTPUT.
  CLEAR OK_CODE.
ENDMODULE.





*&---------------------------------------------------------------------*
*& Module SET_ICON OUTPUT
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
MODULE SET_ICON OUTPUT.
  CALL FUNCTION 'ICON_CREATE'
    EXPORTING
      NAME                        = ICON_INCOMPLETE
      TEXT                        = 'INCOMPLETE'
      INFO                        = 'Incomplete icon'
*     ADD_STDINF                  = 'X'
   IMPORTING
     RESULT                      =  ST_ICON1
   EXCEPTIONS
     ICON_NOT_FOUND              = 1
     OUTPUTFIELD_TOO_SHORT       = 2
     OTHERS                      = 3
            .
  IF SY-SUBRC <> 0.
* Implement suitable error handling here
  ENDIF.
ENDMODULE.
