*&---------------------------------------------------------------------*
*& Report ZSELECT_PRG_26
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZSELECT_PRG_26.



DATA :  LS_DATA TYPE BC400_S_FLIGHT,
        LT_DATA LIKE TABLE OF LS_DATA.



PARAMETERS: PA_CAR TYPE BC400_S_FLIGHT-CARRID.



SELECT *
  FROM SFLIGHT
  INTO CORRESPONDING FIELDS OF TABLE LT_DATA
*  INTO CORRESPONDING FIELDS OF LS_DATA
  WHERE CARRID = PA_cAR.




  LOOP AT LT_DATA INTO LS_DATA.
    LS_DATA-PERCENTAGE = LS_DATA-SEATSOCC / LS_DATA-SEATSMAX * 100.
    MODIFY TABLE LT_DATA FROM LS_DATA.
  ENDLOOP.






* LS_DATA-PERCENTAGE = LS_DATA-SEATSOCC / LS_DATA-SEATSMAX * 100.
* APPEND LS_DATA TO LT_DATA.
*  ENDSELECT.

  CL_DEMO_OUTPUT=>DISPLAY( LT_DATA ).

  IF SY-SUBRC = 0.

  ENDIF.
