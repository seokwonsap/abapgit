FUNCTION ZCA_CREDITMASS_CHANGE.
*"----------------------------------------------------------------------
*"*"Local Interface:
*"  IMPORTING
*"     VALUE(I_CUSTOMER) TYPE  KUNNR OPTIONAL
*"----------------------------------------------------------------------


*"★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★
*"★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★
*"주목적   : Credit Control Area의 Limit과 Customer Credit limt을 동기화 시켜주는 용도
*"추가설명 : T-code : OB45 로 접속하여 나오는 Credit Limit 변경 시 BP들의 Credit Limit
*"           들이 해당 Credit Control Area와 동기화가 되지 않음
*"사용법   : 동기화를 시킬 Business Partner Number를 입력하면 됩니다.

*"이건 우리 프로젝트와 관련이 있긴하나
*"기존 서버의 Credit Management Configuration이 잘 되어있지 않아 보수용으로 만든것
*"프로젝트 용도가 아니므로 함부로 실행시키면 안됩니다.
*"★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★
*"★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★



DATA :
       WA_KNKK    TYPE KNKK,
       WA_T014    TYPE T014,
       WA_KNKA    TYPE KNKA,
       L_UPD_KNKA TYPE  CDPOS-CHNGIND,
       WA_YKNKA     TYPE  KNKA,
       WA_YKNKK     TYPE  KNKK.


SELECT * FROM T014 INTO CORRESPONDING FIELDS OF WA_T014.

    SELECT * FROM KNKK INTO CORRESPONDING FIELDS OF WA_KNKK
                       WHERE KUNNR LIKE I_CUSTOMER
                         AND KKBER = WA_T014-KKBER.

          WA_KNKK-KLIMK = WA_T014-KLIMK.

          IF WA_KNKK-UEDAT IS NOT INITIAL.
            IF WA_KNKK-KLIMK > WA_KNKK-SKFOR.
              WA_KNKK-UEDAT = ''.
            ENDIF.
          ENDIF.

          SELECT SINGLE * FROM KNKA INTO CORRESPONDING FIELDS OF WA_KNKA
                                    WHERE KUNNR = WA_KNKK-KUNNR.
          IF WA_KNKA IS INITIAL.
            L_UPD_KNKA = 'I'.
            WA_KNKA-MANDT = '400'.
            WA_KNKA-KUNNR = WA_KNKK-KUNNR.
            WA_KNKA-KLIMG = 9999999999. "무조건 최대 Cross-Client(All) Credit Limit
            WA_KNKA-KLIME = WA_KNKK-KLIMK.
            WA_KNKA-WAERS = WA_T014-WAERS.
            WA_KNKA-DLAUS = SY-DATUM.
          ELSE.
            L_UPD_KNKA = 'U'.
            WA_KNKA-KLIMG = 9999999999. "무조건 최대 Cross-Client(All) Credit Limit
            IF WA_KNKK-KLIMK > WA_KNKA-KLIME.
              WA_KNKA-KLIME = WA_KNKK-KLIMK.
            ENDIF.
            WA_KNKA-DLAUS = SY-DATUM.
          ENDIF.

          CALL FUNCTION 'CREDITLIMIT_CHANGE'
            EXPORTING
              I_KNKA         = WA_KNKA
              I_KNKK         = WA_KNKK
              UPD_KNKA       = L_UPD_KNKA
              UPD_KNKK       = 'U'
              YKNKA          = WA_YKNKA
              YKNKK          = WA_YKNKK
              .

          CLEAR : WA_KNKA, WA_KNKK, L_UPD_KNKA.
    ENDSELECT.
    CLEAR : WA_T014.
ENDSELECT.


ENDFUNCTION.
