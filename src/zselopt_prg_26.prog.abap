*&---------------------------------------------------------------------*
*& Report ZSELOPT_PRG_26
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZSELOPT_PRG_26.


DATA : LT_SPFLI TYPE TABLE OF SPFLI,
       LS_SPFLI LIKE LINE OF LT_SPFLI.


DATA: LV_CARRID TYPE S_CARR_ID,
      LV_FLDATE TYPE SFLIGHT-FLDATE.


SELECT-OPTIONS: SO_CAR FOR LV_CARRID,
                SO_DAT FOR LV_FLDATE.


    INITIALIZATION.
      SO_CAR-SIGN = 'I'.
      SO_CAR-OPTION = 'EQ'.
      SO_CAR-LOW = 'SQ'.
      APPEND SO_CAR.

      CLEAR: SO_CAR.
      SO_CAR-SIGN = 'I'.
      SO_CAR-OPTION = 'BT'.
      SO_CAR-LOW = 'AA'.
      SO_CAR-HIGH = 'LH'.
      APPEND SO_CAR.

      CLEAR: SO_CAR.
      SO_CAR-SIGN = 'E'.
      SO_CAR-OPTION = 'EQ'.
      SO_CAR-LOW = 'JL'.
      APPEND SO_CAR.



      SO_DAT-SIGN = 'I'.
      SO_DAT-OPTION = 'EQ'.
      SO_DAT-LOW = SY-DATUM+0(6) && '01'.
      SO_DAT-HIGH = SY-DATUM.

*     월의 마지막 일을 구하는 FUNCTION
      CALL FUNCTION 'HR_BG_LAST_DAY_OF_MONTH'
        EXPORTING
          DAY_IN            = SY-DATUM
        IMPORTING
          LAST_DAY_OF_MONTH = SO_DAT-HIGH
        EXCEPTIONS
          DAY_IN_NO_DATE    = 1
          OTHERS            = 2
      .
      IF SY-SUBRC <> 0.
*       MESSAGE ID SY-MSGID TYPE SY-MSGTY NUMBER SY-MSGNO
*         WITH SY-MSGV1 SY-MSGV2 SY-MSGV3 SY-MSGV4.
      ENDIF.


      APPEND SO_DAT.







START-OF-SELECTION.

SELECT * INTO CORRESPONDING FIELDS OF TABLE LT_SPFLI
  FROM SPFLI
  WHERE CARRID IN SO_CAR.

  CL_DEMO_OUTPUT=>DISPLAY( LT_SPFLI ).
