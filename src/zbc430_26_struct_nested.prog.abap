*&---------------------------------------------------------------------*
*& Report  SAPBC430S_STRUCT_NESTED                                     *
*&                                                                     *
*&---------------------------------------------------------------------*
*&                                                                     *
*&                                                                     *
*&---------------------------------------------------------------------*

REPORT  ZBC430_26_STRUCT_NESTED                                     .

*Replace ## by Your group- or screennumber and
*uncomment the ABAP-coding

DATA: WA_PERSON TYPE ZPERSON26.

START-OF-SELECTION.

  WA_PERSON-NAME-FIRSTNAME = 'Harry'.
  WA_PERSON-NAME-LASTNAME = 'Potter'.

  WA_PERSON-STREET = 'Privet Drive'.
  WA_PERSON-NR = '3'.
  WA_PERSON-ZIP = 'GB-10889'.
  WA_PERSON-CITY = 'London'.


  WRITE: /  WA_PERSON-NAME-FIRSTNAME ,
            WA_PERSON-NAME-LASTNAME ,
            WA_PERSON-STREET ,
            WA_PERSON-NR ,
            WA_PERSON-ZIP ,
            WA_PERSON-CITY .
