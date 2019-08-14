FUNCTION ZGET_AGE_26.
*"----------------------------------------------------------------------
*"*"Local Interface:
*"  IMPORTING
*"     REFERENCE(IV_BIRDT) TYPE  DATS
*"  EXPORTING
*"     REFERENCE(EV_AGE1) TYPE  I
*"     REFERENCE(EV_AGE2) TYPE  I
*"----------------------------------------------------------------------



IF IV_BIRDT > SY-DATUM.
  MESSAGE '올바른 생년월일을 입력하세요 YYYYMMDD' TYPE 'I'.
  RETURN.
ENDIF.

EV_AGE1 = SY-DATUM(4) -  IV_BIRDT(4).

*  만나이 계산
IF SY-DATUM+4(4) >= IV_BIRDT+4(4).
*   생일이거나 지났다면 만 나이는 -1
  EV_AGE2 = SY-DATUM(4) -  IV_BIRDT(4) - 1.
ELSE.
*   생일이 지나지 않았다면 만 나이는 -2
  EV_AGE2 = SY-DATUM(4) -  IV_BIRDT(4) - 2.
ENDIF.

ENDFUNCTION.
