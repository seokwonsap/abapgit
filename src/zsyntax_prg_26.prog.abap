*&---------------------------------------------------------------------*
*& Report ZSYNTAX_26
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZSYNTAX_PTH_26.



*gv_result 라는 변수 선언
DATA GV_RESULT TYPE I.


*값이 들어온 것ㅇ르 pa_num 으로 정의
*Type 이 i라서 integer만 들어올 수있다.
PARAMETERS PA_NUM TYPE I.



*화면에 입력받은 값을 gv_result에 할당
MOVE PA_NUM TO GV_RESULT.

*add 1 to gv_result.

GV_RESULT = GV_RESULT + 1.



*WRITE 'Your input : '.
*WRITE pa_num.
WRITE : 'Your input :',
        PA_NUM.



NEW-LINE.


WRITE 'Result : '.
WRITE GV_RESULT.
