*&---------------------------------------------------------------------*
*& Report  SAPBC430S_STRUCT_NESTED                                     *
*&                                                                     *
*&---------------------------------------------------------------------*
*&                                                                     *
*&                                                                     *
*&---------------------------------------------------------------------*
REPORT  ZBC430_26_STRUCT_DEEP                                     .

*Replace ## by Your group- or screennumber and
*uncomment the ABAP-coding

* PHONE을 위한 Work Area 선언
DATA: WA_PERSON TYPE ZPERSON26,
      WA_PHONE  TYPE STR_PHONE.

START-OF-SELECTION.

  WA_PERSON-NAME-FIRSTNAME = 'Harry'.
  WA_PERSON-NAME-LASTNAME = 'Potter'.

  WA_PERSON-STREET = 'Privet Drive'.
  WA_PERSON-NR = '3'.
  WA_PERSON-ZIP = 'GB-10889'.
  WA_PERSON-CITY = 'London'.

*PARAMETERS: PA_NUM TYPE STR_PHONE-P_NUMBER,
*            PA_TYPE TYPE STR_PHONE-P_TYPE VALUE CHECK.
*
** 입력받은 파라미터로 PHONE 테이블에 넣기~
*  WA_PHONE-P_NUMBER = PA_NUM.
*  WA_PHONE-P_TYPE = PA_TYPE.
*  APPEND WA_PHONE-P_NUMBER TO WA_PERSON-PHONE.


* 폰번호 3개 예제로 WA_PHONE 테이블에 넣기
  WA_PHONE-P_NUMBER = '+82010-9797-3222'.
  WA_PHONE-P_TYPE = 'M'.
  APPEND WA_PHONE-P_NUMBER TO WA_PERSON-PHONE.


  WA_PHONE-P_NUMBER = '+82010-1234-5678'.
  WA_PHONE-P_TYPE = 'M'.
  APPEND WA_PHONE-P_NUMBER TO WA_PERSON-PHONE.

  WA_PHONE-P_TYPE = 'P'.
  WA_PHONE-P_NUMBER = '010-2222-7777'.
  APPEND WA_PHONE-P_NUMBER TO WA_PERSON-PHONE.




* 타입이 없으면 앞에자리를 잘라서 들고간다
  WA_PHONE-P_NUMBER = '010-2222-7777P'.
  APPEND WA_PHONE-P_NUMBER TO WA_PERSON-PHONE.

  WA_PHONE-P_NUMBER = 'P010-2222-7777'.
  APPEND WA_PHONE-P_NUMBER TO WA_PERSON-PHONE.


* 출력문
  WRITE: /  WA_PERSON-NAME-FIRSTNAME ,
            WA_PERSON-NAME-LASTNAME ,
            WA_PERSON-STREET ,
            WA_PERSON-NR ,
            WA_PERSON-ZIP ,
            WA_PERSON-CITY .

* 폰번호 출력
  WRITE:/ 'WA_PERSON-PHONE에 있는 폰번호 출력'.
  WRITE:/.
  LOOP AT WA_PERSON-PHONE INTO WA_PHONE.
    WRITE:  AT 20 WA_PHONE.
    WRITE:/.
  ENDLOOP.
