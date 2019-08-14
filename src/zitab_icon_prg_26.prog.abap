*&---------------------------------------------------------------------*
*& Report ZITAB_ICON_PRG_26
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZITAB_ICON_PRG_26.



* 스트럭쳐 타입의 TS_FLIGHT 생성, 기존 FLIGHT를 쓰고 거기에 아이콘 사용을 위해 하나 추가
* Internal Table인 IT_FLIGHT가 쓸 TS_FLIGT 타입 선언
TYPES : BEGIN OF TS_FLIGHT.
  INCLUDE TYPE BC400_S_FLIGHT.
  TYPES : ICON(4) TYPE C,
END OF TS_FLIGHT.





*EXPORT 받을 임시 테이블( ICON이 없어서 타입이 일치하지 않아 오류나니깐 하나 더 선언)
DATA : TMP_FLIGHT TYPE TABLE OF BC400_S_FLIGHT
       WITH NON-UNIQUE KEY CARRID CONNID FLDATE,

* TMP_FLIGHT에 있는 값을 옮기고 아이콘도 넣을 IT_FLIGHT 테이블 선언
       IT_FLIGHT TYPE TABLE OF TS_FLIGHT
       WITH NON-UNIQUE KEY CARRID CONNID FLDATE,

* Work Area. 즉, 구조체 WA_FLIGHT 선언
       WA_FLIGHT TYPE TS_FLIGHT,

* SO_CON을 위한 변수 선언
       LV_CON TYPE BC400_S_FLIGHT-CONNID,

* ALV 그리드 사용을 위한 변수들 선언----------------------------
* 리포트 프로그램 아이디 변수 선언
       G_REPID TYPE SY-REPID,

* 레이아웃
       IS_LAYOUT    TYPE SLIS_LAYOUT_ALV,

* 필드(열) 테이블
       IT_FIELDCAT  TYPE SLIS_T_FIELDCAT_ALV,

* 열 구조체
       WA_FIELDCAT  TYPE SLIS_FIELDCAT_ALV.
* ---------------------------------------------------------


PARAMETERS : PA_CAR TYPE BC400_S_FLIGHT-CARRID.


SELECT-OPTIONS SO_CON FOR LV_CON.


TRY.
  CALL METHOD CL_BC400_FLIGHTMODEL=>GET_FLIGHTS_RANGE
    EXPORTING
      IV_CARRID  = PA_CAR
      IT_CONNID  = SO_CON[]                 " Range Table for Flight Number
    IMPORTING
      ET_FLIGHTS = TMP_FLIGHT                 " Flight times
    .
  CATCH CX_BC400_NO_DATA.
    MESSAGE '데이터가 없는데요?' TYPE 'I'.
  CATCH CX_BC400_NO_AUTH.
ENDTRY.






START-OF-SELECTION.


*필드 값 주기
*Build field catalog
  wa_fieldcat-fieldname  = 'CARRID'.    " Fieldname in the data table
  wa_fieldcat-seltext_m  = 'Airline'.   " Column description in the output
  APPEND wa_fieldcat TO it_fieldcat.
  CLEAR wa_fieldcat.

  wa_fieldcat-fieldname  = 'CONNID'.
  wa_fieldcat-seltext_m  = 'Con. No.'.
  APPEND wa_fieldcat TO it_fieldcat.
  CLEAR wa_fieldcat.

  wa_fieldcat-fieldname  = 'FLDATE'.
  wa_fieldcat-seltext_m  = 'Date'.
  APPEND wa_fieldcat TO it_fieldcat.
  CLEAR wa_fieldcat.


  wa_fieldcat-fieldname  = 'SEATSMAX'.
  wa_fieldcat-seltext_m  = 'SEAT MAX'.
  APPEND wa_fieldcat TO it_fieldcat.
  CLEAR wa_fieldcat.

   wa_fieldcat-fieldname  = 'SEATSOCC'.
  wa_fieldcat-seltext_m  = 'SEATS OCCUPIED'.
  APPEND wa_fieldcat TO it_fieldcat.
  CLEAR wa_fieldcat.

  wa_fieldcat-fieldname  = 'PERCENTAGE'.
  wa_fieldcat-seltext_m  = 'OCCUPIED'.
  APPEND wa_fieldcat TO it_fieldcat.
  CLEAR wa_fieldcat.

  wa_fieldcat-fieldname  = 'ICON'.
  wa_fieldcat-SELTEXT_M  = 'Status'.
  wa_fieldcat-ICON = 'X'.
  wa_fieldcat-tabname = ' '.
  APPEND wa_fieldcat TO it_fieldcat.
  CLEAR wa_fieldcat.

*Fill layout info.
*Fill traffic lights field name in the ALV layout
*  is_layout-lights_fieldname = 'ICON'.








LOOP AT TMP_FLIGHT INTO WA_FLIGHT.


IF WA_FLIGHT-PERCENTAGE = 0.
  APPEND WA_FLIGHT TO IT_FLIGHT.
  WA_FLIGHT-ICON = '@01@'.
  MODIFY TABLE IT_FLIGHT
         FROM WA_FLIGHT
         TRANSPORTING ICON.
ELSEIF WA_FLIGHT-PERCENTAGE >= 90.
  APPEND WA_FLIGHT TO IT_FLIGHT.
  WA_FLIGHT-ICON = '@5C@'.
  MODIFY TABLE IT_FLIGHT
         FROM WA_FLIGHT
         TRANSPORTING ICON.

ELSEIF WA_FLIGHT-PERCENTAGE >= 40.
  APPEND WA_FLIGHT TO IT_FLIGHT.
  WA_FLIGHT-ICON = '@5D@'.
  MODIFY TABLE IT_FLIGHT
         FROM WA_FLIGHT
         TRANSPORTING ICON.
ELSE.
  APPEND WA_FLIGHT TO IT_FLIGHT.
  WA_FLIGHT-ICON = '@5B@'.
  MODIFY TABLE IT_FLIGHT
         FROM WA_FLIGHT
         TRANSPORTING ICON.
ENDIF.



ENDLOOP.


SORT IT_FLIGHT BY PERCENTAGE ASCENDING.


CALL FUNCTION 'REUSE_ALV_GRID_DISPLAY'
  EXPORTING
    I_CALLBACK_PROGRAM          = G_REPID            " Name of the calling program
    IS_LAYOUT                   = IS_LAYOUT                 " List layout specifications
    IT_FIELDCAT                 = IT_FIELDCAT                 " Field catalog with field descriptions
  TABLES
    T_OUTTAB                    =  IT_FLIGHT                " Table with data to be displayed
  EXCEPTIONS
    PROGRAM_ERROR               = 1                " Program errors
    OTHERS                      = 2
  .
IF SY-SUBRC <> 0.
* MESSAGE ID SY-MSGID TYPE SY-MSGTY NUMBER SY-MSGNO
*   WITH SY-MSGV1 SY-MSGV2 SY-MSGV3 SY-MSGV4.
ENDIF.
