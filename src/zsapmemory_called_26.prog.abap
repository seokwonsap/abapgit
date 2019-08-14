*&---------------------------------------------------------------------*
*& Report ZSAPMEMORY_CALLED_26
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZSAPMEMORY_CALLED_26.


* 여기서는 SAPMEMORY 에서 저장한 파라미터값을 다른 세션에서도 공유하는지 확인만 하는 것!!

DATA: LV_CAR TYPE S_CARR_ID.


DATA: LS_SCaRR TYPE SCARR.

GET PARAMETER ID 'CAR' FIELD LV_CAR.

SELECT SINGLE * INTO LS_SCARR
   FROM SCARR
  WHERE carrid = LV_CAR.


WRITE:/ LS_SCaRR-CARRID,
        LS_SCaRR-CARRNAME,
        LS_SCaRR-CURRCODE,
        LS_SCaRR-MANDT,
        LS_SCaRR-URL.
