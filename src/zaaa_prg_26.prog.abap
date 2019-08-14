*&---------------------------------------------------------------------*
*&---------------------------------------------------------------------*
*& Report ZB400_26_HELLO
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZAAA_PRG_26.






*---------------------------------------------------
*"CASTING Test 형변환 C -> DATUM
*DATA : VAL(10) TYPE C VALUE '20061212',
*       DATE TYPE DATUM.
*
*MOVE VAL TO DATE.
*
*WRITE DATE.
*
*SELECT-OPTIONS SO_DATE FOR DATE.
*  INITIALIZATION.
*    SO_DATE-LOW = DATE.
*    SO_DATE-SIGN = 'I'.
*    SO_DATE-HIGH = VAL.
*    APPEND SO_DATE.
*---------------------------------------------------



**---------------------------------------------------
**          "Color Test
*DATA col TYPE i VALUE 0.
*
*DO 8 TIMES.
*  col = sy-index - 1.
*  FORMAT COLOR = col.
*  WRITE: /  col              COLOR OFF,
*           'INTENSIFIED ON'  INTENSIFIED ON,
*           'INTENSIFIED OFF' INTENSIFIED OFF,
*           'INVERSE ON'      INVERSE ON.
*ENDDO.
*---------------------------------------------------



*---------------------------------------------------
* 핫스팟 포맷 : 핫스팟에 있는게 먼저 있음. 클릭 시 다음 SELETION 쪽으로 이동
*START-OF-SELECTION.
*  FORMAT HOTSPOT.
*  WRITE 'Click me!' COLOR 5.
*  FORMAT HOTSPOT OFF.
*
*AT LINE-SELECTION.
*  WRITE 'Yeah!' COLOR 3.
*---------------------------------------------------



*---------------------------------------------------
* Input 필드 입력할 수 있따!
*DATA: input_field TYPE c LENGTH 100,
*      line_num TYPE i.
*
*START-OF-SELECTION.
*  WRITE 'Input text:'.
*  SET BLANK LINES ON.
*  FORMAT INPUT.
*  WRITE / input_field.
*  FORMAT INPUT OFF.
*  WRITE / '>>> OK <<<' COLOR 5 HOTSPOT.
*
*AT LINE-SELECTION.
*  IF sy-lisel = '>>> OK <<<'.
*    line_num = sy-lilli - 1.
*    READ LINE line_num FIELD VALUE input_field.
*    WRITE:   'The input was:',
*           /  input_field.
*  ENDIF.
*---------------------------------------------------



*---------------------------------------------------
* Format FRAME 테스트   -나 | 시 간격이 사라짐
*CLASS demo DEFINITION.
*  PUBLIC SECTION.
*    CLASS-METHODS main.
*  PRIVATE SECTION.
*    CLASS-METHODS frame.
*ENDCLASS.
*
*CLASS demo IMPLEMENTATION.
*  METHOD main.
*    FORMAT FRAMES ON.
*    frame( ).
*    FORMAT FRAMES OFF.
*    frame( ).
*  ENDMETHOD.
*  METHOD frame.
*    SKIP.
*    WRITE: / '----',
*           / '|  |',
*           / '----'.
*  ENDMETHOD.
*ENDCLASS.
*
*START-OF-SELECTION.
*  demo=>main( ).
*---------------------------------------------------


*---------------------------------------------------
"Naming Rules
"Prefix 1 // Prefix 2 // Sperate // Summary
"Ex1) G          S           -        SFLIGHT  => GS_SFLIGHT
"Ex2) GVF_CARRID   -> G:Global // V: Varialbe // F: Flag Characteristic
*-------------네이밍 룰 체크는 T-CODE : SCI-------------
"Field : V or D
"Structure : S
"Constants : C
"Internal Table T
"Class : O
"Range : R
"Referenced Data Variable(Data Object) : F
*---------------------------------------------------








**---------------------------------------------------
**스트럭쳐 선언, Include 및 테이블을 가진 필드 추가
*TYPES: BEGIN OF TS_BOOK.
*  INCLUDE TYPE SBOOK.
*  TYPES : CARRNAME TYPE SCARR-CARRNAME,
*          NAME  TYPE SCUSTOM-NAME,
*          TELEPHONE TYPE ZIT_PHONE_NUMBER26,   "<< 요놈은 테이블
*          DAYS TYPE INT4,
*END OF TS_BOOK.
**---------------------------------------------------










* 구조체 구조체 형태가 다를때 A구조체에서 B구조체로 값을 할당 할 때
* MOVE-CORRESPONDING으로 값을 주거나
* 각각 값을 할당







**---------------------------------------------------
** A 산 쌓기
*DATA AA TYPE i VALUE 48.
*DATA BB TYPE i VALUE 1.
*DATA CC TYPE i.
*
*DATA TT TYPE i.
*
*
*DO AA TIMES.
*  TT = 1.
*
*  CC = ( AA / 2 ).
*  IF AA MOD 2 = 0.
*    DO CC TIMES.
*      WRITE ''.
*    ENDDO.
*
*    DO BB TIMES.
*     WRITE 'A'.
*    ENDDO.
*    WRITE:/.
*
*  ENDIF.
*
*  BB = BB + 1.
*  AA = AA - 1.
*
*ENDDO.
**---------------------------------------------------









* Program(Function) <--DATA-->  Interface(Function Module)
* Program(Method)   <--DATA-->  Signiture(Method)













**---------------------------------------------------
**메세지의 타입
** E : Error
** W : Warning
** I : Information
** A : Abend ( Cancles the transaction )
** S : Success
** X : Abort ( Stop Program & Short dump)
*MESSAGE 'AAAAAAA' TYPE E.
**---------------------------------------------------










**---------------------------------------------------------------------
**   Class, 전역 Method 선언
*CLASS STATIC_METHOD_CLASS DEFINITION.
*  PUBLIC SECTION.
*    CLASS-METHODS STATIC_METHOD.
* ENDCLASS.
*
*CLASS STATIC_METHOD_CLASS IMPLEMENTATION.
*  METHOD STATIC_METHOD.
*    WRITE:/ 'STATIC 메서드가 실행되었습니다  !!!'.
*  ENDMETHOD.
*ENDCLASS.
**     클래스 및 전역 클래스 실행 선언문끝
**------------------------------------------------------
*
*
*
**------------------------------------------------------
**   Class, 지역 Method 선언
*CLASS LOCAL_METHOD_CLASS DEFINITION.
*  PUBLIC SECTION.
*    METHODS LOCAL_METHOD.
*ENDCLASS.
*
*CLASS LOCAL_METHOD_CLASS IMPLEMENTATION.
*  METHOD LOCAL_METHOD.
*    WRITE:/ 'LOCAL 메서드가 실행되었습니다  !!!'.
*  ENDMETHOD.
*ENDCLASS.
**     클래스 및 지역역 클래스 실행 선언문끝
**------------------------------------------------------
*
*
*
**------------------------------------------------------
**   ABAP 이벤트 시작
*START-OF-SELECTION.
*
** 스태틱 메서드 호출 시
*  WRITE:/ 'STATIC 클래스의 STATIC_METHOD 호출'.
*  STATIC_METHOD_CLASS=>STATIC_METHOD( ).
*
*
** 선긋기
*  ULINE.
*
*
** Local(Instance) 메서드 호출 시
*  DATA : LOCAL_OBJ TYPE REF TO LOCAL_METHOD_CLASS.
*  CREATE OBJECT LOCAL_OBJ.
*  WRITE:/ 'LOCAL 클래스의 LOCAL_METHOD 호출'.
*  CALL METHOD: LOCAL_OBJ->LOCAL_METHOD.
*  ULINE.
**   ABAP 이벤트 종료
**---------------------------------------------------------------------














**-----------------------------------------------------
**       부모 - 자식 클래스 상속 예제
*
**
**     부모 클래스 선언
**
*CLASS PARENT_CLASS DEFINITION.
*  PUBLIC SECTION.
*    DATA PUB_VAR(35) TYPE C VALUE '부모 클래스 Public 변수 접근됨 !'.
*    METHODS PARENT_METHOD.
*ENDCLASS.
*
*
**
**     부모  클래스 실행
**
*CLASS PARENT_CLASS IMPLEMENTATION.
*    METHOD PARENT_METHOD.
*      WRITE:/ PUB_VAR.
*      WRITE:/ PUB_VAR.
*      WRITE:/ PUB_VAR.
*    ENDMETHOD.
*ENDCLASS.
*
**----------------------------------------------------------------------
*
**
**     자식 클래스 선언
**
*CLASS CHILD_CLASS DEFINITION INHERITING FROM PARENT_CLASS.
*  PUBLIC SECTION.
*    METHODS CHILD_METHOD.
*ENDCLASS.
*
**
**     자식 클래스 실행
**
*CLASS CHILD_CLASS IMPLEMENTATION.
*  METHOD CHILD_METHOD.
*      WRITE:/ PUB_VAR.
*      WRITE:/ PUB_VAR.
*  ENDMETHOD.
*ENDCLASS.
*
*
*
*START-OF-SELECTION.
*
*  DATA : PARENT_OBJ TYPE REF TO PARENT_CLASS.
*  CREATE OBJECT PARENT_OBJ.
*
*  WRITE / '부모 클래스 오브젝트를 통해 컴포넌트들 접근중...'.
*  SKIP 2.
*  CALL METHOD: PARENT_OBJ->PARENT_METHOD.
*  ULINE.
*
*
*  DATA : CHILD_OBJ TYPE REF TO CHILD_CLASS.
*  CREATE OBJECT CHILD_OBJ.
*  WRITE / '자식 클래스 오브젝트를 통해 컴포넌트들 접근중...'.
*  SKIP 2.
*  CALL METHOD: CHILD_OBJ->CHILD_METHOD.
*  ULINE.
**-----------------------------------------------------









**------------------------------------
**구조체 예제
*TYPES BEGIN OF STRUC_CLASS.
*  TYPES C_NUMB TYPE I.
*  TYPES C_PEOPLE TYPE I.
*  TYPES C_LOCATION TYPE STRING.
*  TYPES C_SIZE TYPE P LENGTH 10 DECIMALS 3.
*TYPES END OF STRUC_CLASS.
*
*
*
*DATA Hyeoksin2 TYPE STRUC_CLASS.
*
**강의실 번호 2번
*HYEOKSIN2-C_NUMB = 2.
**사람 수 30명
*Hyeoksin2-C_PEOPLE = 30.
**위치
*Hyeoksin2-C_LOCATION = '강남구 테헤란로 7길 7'.
**방크기
*Hyeoksin2-C_SIZE = '30.24'.
*
*
*
*WRITE Hyeoksin2-C_NUMB.
*WRITE Hyeoksin2-C_PEOPLE.
*WRITE Hyeoksin2-C_LOCATION.
*WRITE Hyeoksin2-C_SIZE.
*
**------------------------------------





*-------------------------------------
*P 타입 길이 테스트
*DATA LV_Length TYPE p LENGTH 3 DECIMALS 3.
*
*LV_Length = 99.

*PERFORM WRITE_LIST(ZSUBRTN_PRG_26).

*WRITE TEXT-001.
*
*PARAMETERS PA_NAME TYPE S_CARR_ID.
*
*WRITE :/ TEXT-002, PA_NAME.


*PARAMETERS IV_INT1 TYPE i.
*PARAMETERS IV_INT2 TYPE i.
*DATA EV_RESULT TYPE p LENGTH 16 DECIMALS 2.
*
*      CALL FUNCTION 'ZCALC_IPOW_26'
*        EXPORTING
*          IV_BASE = IV_INT1
*          IV_EXP = IV_INT2
*        IMPORTING
*          EV_PRESULT = EV_RESULT.
*-------------------------------------
