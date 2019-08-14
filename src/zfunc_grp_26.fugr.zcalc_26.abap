FUNCTION ZCALC_26.
*"----------------------------------------------------------------------
*"*"Local Interface:
*"  IMPORTING
*"     REFERENCE(IV_INT1) TYPE  I
*"     REFERENCE(IV_INT2) TYPE  I
*"     REFERENCE(IV_OP) TYPE  CHAR1
*"  EXPORTING
*"     REFERENCE(EV_RESULT) TYPE  BC400_PERC
*"----------------------------------------------------------------------

IF IV_INT2 <> 0.
  CASE IV_OP.
    WHEN '+'.
      EV_RESULT = IV_INT1 + IV_INT2.

    WHEN '-'.
      EV_RESULT = IV_INT1 - IV_INT2.

    WHEN '*'.
      EV_RESULT = IV_INT1 * IV_INT2.

    WHEN '/'.
      EV_RESULT = IV_INT1 / IV_INT2.

    WHEN '%'.
      EV_RESULT = IV_INT1 MOD IV_INT2.

    WHEN '^'.
      CALL FUNCTION 'ZCALC_IPOW_26'
        EXPORTING
          IV_BASE = IV_INT1
          IV_EXP = IV_INT2
        IMPORTING
          EV_PRESULT = EV_RESULT.

    WHEN OTHERS.
      MESSAGE '올바른 연산자를 입력하세요!' TYPE 'I'.
  ENDCASE.
ENDIF.




ENDFUNCTION.
