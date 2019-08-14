class ZCL_COMPUTE_26 definition
  public
  final
  create public .

public section.

  methods GET_PERCENTAGE
    importing
      !IV_ACT type BC400_ACT default 0
      !IV_MAX type I default 0
    exporting
      !EV_RESULT type BC400_PERC
    exceptions
      NO_ZERO
      DIVISION_ZERO .
  class-methods GET_CONNECTION
    exporting
      !ET_CONNECTIONS type ZYCONNECTION_26 .
protected section.
private section.
ENDCLASS.



CLASS ZCL_COMPUTE_26 IMPLEMENTATION.


  method GET_CONNECTION.

    SELECT *
      INTO CORRESPONDING FIELDS OF TABLE ET_CONNECTIONS
      FROM SPFLI.

  endmethod.


  method GET_PERCENTAGE.

    IF iv_max = 0.
      EV_RESULT = 0.


*     Exception 발생
      RAISE NO_ZERO.
    ELSE.
      EV_RESULT = IV_ACT / IV_MAX * 100.
    ENDIF.


  endmethod.
ENDCLASS.
