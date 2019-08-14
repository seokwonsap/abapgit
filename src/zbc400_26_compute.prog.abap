*&---------------------------------------------------------------------*
*& Report ZBC400_26_COMPUTE
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZBC400_26_COMPUTE MESSAGE-ID ZMSG_CLASS_26.

TYPES GV_R_TYPE  TYPE P LENGTH 16 DECIMALS 2.

PARAMETERS PA_INT1 TYPE I.
PARAMETERS PA_OP TYPE C LENGTH 1.
PARAMETERS PA_INT2 TYPE I.




*       참조 변수 선언
*                  REF TO 를 사용 해야함
DATA : GO_OBJ TYPE REF TO ZCL_COMPUTE_26.
CREATE OBJECT GO_OBJ.



DATA GV_RESULT TYPE GV_R_TYPE.





CASE PA_OP.
  WHEN '+'.
    GV_RESULT = PA_INT1 + PA_INT2.
    WRITE GV_RESULT.

  WHEN '-'.
    GV_RESULT = PA_INT1 - PA_INT2.
    WRITE GV_RESULT.

  WHEN '*'.
    GV_RESULT = PA_INT1 * PA_INT2.
    WRITE GV_RESULT.

  WHEN '/'.
*    함수 호출해서 써보기, 함수호출은 드래그 & 드랍 또는 패턴 버튼 모양
*    GV_RESULT = pa_int1 / pa_int2.
*    WRITE GV_RESULT.
     CALL FUNCTION 'ZCALC_PERC_26'
      EXPORTING
        IV_INT1 = PA_INT1
        IV_INT2 = PA_INT2
      IMPORTING
*   주소값 개념으로 이해
        EV_RESULT = GV_RESULT.
     WRITE GV_RESULT.

  WHEN '%'.

* Instance -> 화살표 // Static => 화살표
* GO_OBJ 라는 Object가 GET_PERCENTAGE를 참조하는 것
CALL METHOD GO_OBJ->GET_PERCENTAGE
  EXPORTING
    IV_ACT        = pa_int1
    IV_MAX        = pa_int2
  IMPORTING
    EV_RESULT     = GV_RESULT
  EXCEPTIONS
    NO_ZERO       = 1
    DIVISION_ZERO = 2
    OTHERS        = 3.

IF SY-SUBRC <> 0.
* Implement suitable error handling here
ENDIF.






**   METHOD 호출
*    CALL METHOD ZCL_COMPUTE_26=>GET_PERCENTAGE
*      EXPORTING
*        IV_ACT        = PA_INT1
*        IV_MAX        = PA_INT2
*      IMPORTING
*        EV_RESULT     = GV_RESULT
*      EXCEPTIONS
*        NO_ZERO       = 1
*        DIVISION_ZERO = 2
*        OTHERS        = 3
*            .
*    IF SY-SUBRC <> 0.
**     Implement suitable error handling here
*    ENDIF.
    WRITE GV_RESULT.

*  WHEN '%'.
**   CALC_PERCENTAGE 서브루틴 사용
*    PERFORM CALC_PERCENTAGE(ZBC400_26_SUBROUTINE) USING pa_int1 PA_INT2 CHANGING GV_RESULT.
*    MESSAGE i003(ZMSG_CLASS_26).



  WHEN OTHERS.
    MESSAGE S001
      WITH PA_OP SY-UNAME SY-LANGU.
**    MESSAGE 'Invalid operation' TYPE 'I'.
**    WRITE 'Number, Operation, Number'.
**부적절한 연산자라고 메시지 발생!!!
**    MESSAGE i000(ZMSG_CLASS_26) WITH SY-UNAME.
ENDCASE.
