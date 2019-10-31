class ZCL_ZCAGW_STOCK_DPC definition
  public
  inheriting from /IWBEP/CL_MGW_PUSH_ABS_DATA
  abstract
  create public .

public section.

  interfaces /IWBEP/IF_SB_DPC_COMM_SERVICES .
  interfaces /IWBEP/IF_SB_GEN_DPC_INJECTION .

  methods /IWBEP/IF_MGW_APPL_SRV_RUNTIME~GET_ENTITYSET
    redefinition .
  methods /IWBEP/IF_MGW_APPL_SRV_RUNTIME~GET_ENTITY
    redefinition .
  methods /IWBEP/IF_MGW_APPL_SRV_RUNTIME~UPDATE_ENTITY
    redefinition .
  methods /IWBEP/IF_MGW_APPL_SRV_RUNTIME~CREATE_ENTITY
    redefinition .
  methods /IWBEP/IF_MGW_APPL_SRV_RUNTIME~DELETE_ENTITY
    redefinition .
protected section.

  data mo_injection type ref to /IWBEP/IF_SB_GEN_DPC_INJECTION .

  methods STOCKSET_CREATE_ENTITY
    importing
      !IV_ENTITY_NAME type STRING
      !IV_ENTITY_SET_NAME type STRING
      !IV_SOURCE_NAME type STRING
      !IT_KEY_TAB type /IWBEP/T_MGW_NAME_VALUE_PAIR
      !IO_TECH_REQUEST_CONTEXT type ref to /IWBEP/IF_MGW_REQ_ENTITY_C optional
      !IT_NAVIGATION_PATH type /IWBEP/T_MGW_NAVIGATION_PATH
      !IO_DATA_PROVIDER type ref to /IWBEP/IF_MGW_ENTRY_PROVIDER optional
    exporting
      !ER_ENTITY type ZCL_ZCAGW_STOCK_MPC=>TS_STOCK
    raising
      /IWBEP/CX_MGW_BUSI_EXCEPTION
      /IWBEP/CX_MGW_TECH_EXCEPTION .
  methods STOCKSET_DELETE_ENTITY
    importing
      !IV_ENTITY_NAME type STRING
      !IV_ENTITY_SET_NAME type STRING
      !IV_SOURCE_NAME type STRING
      !IT_KEY_TAB type /IWBEP/T_MGW_NAME_VALUE_PAIR
      !IO_TECH_REQUEST_CONTEXT type ref to /IWBEP/IF_MGW_REQ_ENTITY_D optional
      !IT_NAVIGATION_PATH type /IWBEP/T_MGW_NAVIGATION_PATH
    raising
      /IWBEP/CX_MGW_BUSI_EXCEPTION
      /IWBEP/CX_MGW_TECH_EXCEPTION .
  methods STOCKSET_GET_ENTITY
    importing
      !IV_ENTITY_NAME type STRING
      !IV_ENTITY_SET_NAME type STRING
      !IV_SOURCE_NAME type STRING
      !IT_KEY_TAB type /IWBEP/T_MGW_NAME_VALUE_PAIR
      !IO_REQUEST_OBJECT type ref to /IWBEP/IF_MGW_REQ_ENTITY optional
      !IO_TECH_REQUEST_CONTEXT type ref to /IWBEP/IF_MGW_REQ_ENTITY optional
      !IT_NAVIGATION_PATH type /IWBEP/T_MGW_NAVIGATION_PATH
    exporting
      !ER_ENTITY type ZCL_ZCAGW_STOCK_MPC=>TS_STOCK
      !ES_RESPONSE_CONTEXT type /IWBEP/IF_MGW_APPL_SRV_RUNTIME=>TY_S_MGW_RESPONSE_ENTITY_CNTXT
    raising
      /IWBEP/CX_MGW_BUSI_EXCEPTION
      /IWBEP/CX_MGW_TECH_EXCEPTION .
  methods STOCKSET_GET_ENTITYSET
    importing
      !IV_ENTITY_NAME type STRING
      !IV_ENTITY_SET_NAME type STRING
      !IV_SOURCE_NAME type STRING
      !IT_FILTER_SELECT_OPTIONS type /IWBEP/T_MGW_SELECT_OPTION
      !IS_PAGING type /IWBEP/S_MGW_PAGING
      !IT_KEY_TAB type /IWBEP/T_MGW_NAME_VALUE_PAIR
      !IT_NAVIGATION_PATH type /IWBEP/T_MGW_NAVIGATION_PATH
      !IT_ORDER type /IWBEP/T_MGW_SORTING_ORDER
      !IV_FILTER_STRING type STRING
      !IV_SEARCH_STRING type STRING
      !IO_TECH_REQUEST_CONTEXT type ref to /IWBEP/IF_MGW_REQ_ENTITYSET optional
    exporting
      !ET_ENTITYSET type ZCL_ZCAGW_STOCK_MPC=>TT_STOCK
      !ES_RESPONSE_CONTEXT type /IWBEP/IF_MGW_APPL_SRV_RUNTIME=>TY_S_MGW_RESPONSE_CONTEXT
    raising
      /IWBEP/CX_MGW_BUSI_EXCEPTION
      /IWBEP/CX_MGW_TECH_EXCEPTION .
  methods STOCKSET_UPDATE_ENTITY
    importing
      !IV_ENTITY_NAME type STRING
      !IV_ENTITY_SET_NAME type STRING
      !IV_SOURCE_NAME type STRING
      !IT_KEY_TAB type /IWBEP/T_MGW_NAME_VALUE_PAIR
      !IO_TECH_REQUEST_CONTEXT type ref to /IWBEP/IF_MGW_REQ_ENTITY_U optional
      !IT_NAVIGATION_PATH type /IWBEP/T_MGW_NAVIGATION_PATH
      !IO_DATA_PROVIDER type ref to /IWBEP/IF_MGW_ENTRY_PROVIDER optional
    exporting
      !ER_ENTITY type ZCL_ZCAGW_STOCK_MPC=>TS_STOCK
    raising
      /IWBEP/CX_MGW_BUSI_EXCEPTION
      /IWBEP/CX_MGW_TECH_EXCEPTION .

  methods CHECK_SUBSCRIPTION_AUTHORITY
    redefinition .
private section.
ENDCLASS.



CLASS ZCL_ZCAGW_STOCK_DPC IMPLEMENTATION.


  method /IWBEP/IF_MGW_APPL_SRV_RUNTIME~CREATE_ENTITY.
*&----------------------------------------------------------------------------------------------*
*&  Include           /IWBEP/DPC_TEMP_CRT_ENTITY_BASE
*&* This class has been generated on 2019.10.26 10:13:54 in client 400
*&*
*&*       WARNING--> NEVER MODIFY THIS CLASS <--WARNING
*&*   If you want to change the DPC implementation, use the
*&*   generated methods inside the DPC provider subclass - ZCL_ZCAGW_STOCK_DPC_EXT
*&-----------------------------------------------------------------------------------------------*

 DATA stockset_create_entity TYPE zcl_zcagw_stock_mpc=>ts_stock.
 DATA lv_entityset_name TYPE string.

lv_entityset_name = io_tech_request_context->get_entity_set_name( ).

CASE lv_entityset_name.
*-------------------------------------------------------------------------*
*             EntitySet -  StockSet
*-------------------------------------------------------------------------*
     WHEN 'StockSet'.
*     Call the entity set generated method
    stockset_create_entity(
         EXPORTING iv_entity_name     = iv_entity_name
                   iv_entity_set_name = iv_entity_set_name
                   iv_source_name     = iv_source_name
                   io_data_provider   = io_data_provider
                   it_key_tab         = it_key_tab
                   it_navigation_path = it_navigation_path
                   io_tech_request_context = io_tech_request_context
       	 IMPORTING er_entity          = stockset_create_entity
    ).
*     Send specific entity data to the caller interfaces
    copy_data_to_ref(
      EXPORTING
        is_data = stockset_create_entity
      CHANGING
        cr_data = er_entity
   ).

  when others.
    super->/iwbep/if_mgw_appl_srv_runtime~create_entity(
       EXPORTING
         iv_entity_name = iv_entity_name
         iv_entity_set_name = iv_entity_set_name
         iv_source_name = iv_source_name
         io_data_provider   = io_data_provider
         it_key_tab = it_key_tab
         it_navigation_path = it_navigation_path
      IMPORTING
        er_entity = er_entity
  ).
ENDCASE.
  endmethod.


  method /IWBEP/IF_MGW_APPL_SRV_RUNTIME~DELETE_ENTITY.
*&----------------------------------------------------------------------------------------------*
*&  Include           /IWBEP/DPC_TEMP_DEL_ENTITY_BASE
*&* This class has been generated on 2019.10.26 10:13:54 in client 400
*&*
*&*       WARNING--> NEVER MODIFY THIS CLASS <--WARNING
*&*   If you want to change the DPC implementation, use the
*&*   generated methods inside the DPC provider subclass - ZCL_ZCAGW_STOCK_DPC_EXT
*&-----------------------------------------------------------------------------------------------*

 DATA lv_entityset_name TYPE string.

lv_entityset_name = io_tech_request_context->get_entity_set_name( ).

CASE lv_entityset_name.
*-------------------------------------------------------------------------*
*             EntitySet -  StockSet
*-------------------------------------------------------------------------*
      when 'StockSet'.
*     Call the entity set generated method
     stockset_delete_entity(
          EXPORTING iv_entity_name     = iv_entity_name
                    iv_entity_set_name = iv_entity_set_name
                    iv_source_name     = iv_source_name
                    it_key_tab         = it_key_tab
                    it_navigation_path = it_navigation_path
                    io_tech_request_context = io_tech_request_context
     ).

   when others.
     super->/iwbep/if_mgw_appl_srv_runtime~delete_entity(
        EXPORTING
          iv_entity_name = iv_entity_name
          iv_entity_set_name = iv_entity_set_name
          iv_source_name = iv_source_name
          it_key_tab = it_key_tab
          it_navigation_path = it_navigation_path
 ).
 ENDCASE.
  endmethod.


  method /IWBEP/IF_MGW_APPL_SRV_RUNTIME~GET_ENTITY.
*&-----------------------------------------------------------------------------------------------*
*&  Include           /IWBEP/DPC_TEMP_GETENTITY_BASE
*&* This class has been generated  on 2019.10.26 10:13:54 in client 400
*&*
*&*       WARNING--> NEVER MODIFY THIS CLASS <--WARNING
*&*   If you want to change the DPC implementation, use the
*&*   generated methods inside the DPC provider subclass - ZCL_ZCAGW_STOCK_DPC_EXT
*&-----------------------------------------------------------------------------------------------*

 DATA stockset_get_entity TYPE zcl_zcagw_stock_mpc=>ts_stock.
 DATA lv_entityset_name TYPE string.
 DATA lr_entity TYPE REF TO data.       "#EC NEEDED

lv_entityset_name = io_tech_request_context->get_entity_set_name( ).

CASE lv_entityset_name.
*-------------------------------------------------------------------------*
*             EntitySet -  StockSet
*-------------------------------------------------------------------------*
      WHEN 'StockSet'.
*     Call the entity set generated method
          stockset_get_entity(
               EXPORTING iv_entity_name     = iv_entity_name
                         iv_entity_set_name = iv_entity_set_name
                         iv_source_name     = iv_source_name
                         it_key_tab         = it_key_tab
                         it_navigation_path = it_navigation_path
                         io_tech_request_context = io_tech_request_context
             	 IMPORTING er_entity          = stockset_get_entity
                         es_response_context = es_response_context
          ).

        IF stockset_get_entity IS NOT INITIAL.
*     Send specific entity data to the caller interface
          copy_data_to_ref(
            EXPORTING
              is_data = stockset_get_entity
            CHANGING
              cr_data = er_entity
          ).
        ELSE.
*         In case of initial values - unbind the entity reference
          er_entity = lr_entity.
        ENDIF.

      WHEN OTHERS.
        super->/iwbep/if_mgw_appl_srv_runtime~get_entity(
           EXPORTING
             iv_entity_name = iv_entity_name
             iv_entity_set_name = iv_entity_set_name
             iv_source_name = iv_source_name
             it_key_tab = it_key_tab
             it_navigation_path = it_navigation_path
          IMPORTING
            er_entity = er_entity
    ).
 ENDCASE.
  endmethod.


  method /IWBEP/IF_MGW_APPL_SRV_RUNTIME~GET_ENTITYSET.
*&----------------------------------------------------------------------------------------------*
*&  Include           /IWBEP/DPC_TMP_ENTITYSET_BASE
*&* This class has been generated on 2019.10.26 10:13:54 in client 400
*&*
*&*       WARNING--> NEVER MODIFY THIS CLASS <--WARNING
*&*   If you want to change the DPC implementation, use the
*&*   generated methods inside the DPC provider subclass - ZCL_ZCAGW_STOCK_DPC_EXT
*&-----------------------------------------------------------------------------------------------*
 DATA stockset_get_entityset TYPE zcl_zcagw_stock_mpc=>tt_stock.
 DATA lv_entityset_name TYPE string.

lv_entityset_name = io_tech_request_context->get_entity_set_name( ).

CASE lv_entityset_name.
*-------------------------------------------------------------------------*
*             EntitySet -  StockSet
*-------------------------------------------------------------------------*
   WHEN 'StockSet'.
*     Call the entity set generated method
      stockset_get_entityset(
        EXPORTING
         iv_entity_name = iv_entity_name
         iv_entity_set_name = iv_entity_set_name
         iv_source_name = iv_source_name
         it_filter_select_options = it_filter_select_options
         it_order = it_order
         is_paging = is_paging
         it_navigation_path = it_navigation_path
         it_key_tab = it_key_tab
         iv_filter_string = iv_filter_string
         iv_search_string = iv_search_string
         io_tech_request_context = io_tech_request_context
       IMPORTING
         et_entityset = stockset_get_entityset
         es_response_context = es_response_context
       ).
*     Send specific entity data to the caller interface
      copy_data_to_ref(
        EXPORTING
          is_data = stockset_get_entityset
        CHANGING
          cr_data = er_entityset
      ).

    WHEN OTHERS.
      super->/iwbep/if_mgw_appl_srv_runtime~get_entityset(
        EXPORTING
          iv_entity_name = iv_entity_name
          iv_entity_set_name = iv_entity_set_name
          iv_source_name = iv_source_name
          it_filter_select_options = it_filter_select_options
          it_order = it_order
          is_paging = is_paging
          it_navigation_path = it_navigation_path
          it_key_tab = it_key_tab
          iv_filter_string = iv_filter_string
          iv_search_string = iv_search_string
          io_tech_request_context = io_tech_request_context
       IMPORTING
         er_entityset = er_entityset ).
 ENDCASE.
  endmethod.


  method /IWBEP/IF_MGW_APPL_SRV_RUNTIME~UPDATE_ENTITY.
*&----------------------------------------------------------------------------------------------*
*&  Include           /IWBEP/DPC_TEMP_UPD_ENTITY_BASE
*&* This class has been generated on 2019.10.26 10:13:54 in client 400
*&*
*&*       WARNING--> NEVER MODIFY THIS CLASS <--WARNING
*&*   If you want to change the DPC implementation, use the
*&*   generated methods inside the DPC provider subclass - ZCL_ZCAGW_STOCK_DPC_EXT
*&-----------------------------------------------------------------------------------------------*

 DATA stockset_update_entity TYPE zcl_zcagw_stock_mpc=>ts_stock.
 DATA lv_entityset_name TYPE string.
 DATA lr_entity TYPE REF TO data. "#EC NEEDED

lv_entityset_name = io_tech_request_context->get_entity_set_name( ).

CASE lv_entityset_name.
*-------------------------------------------------------------------------*
*             EntitySet -  StockSet
*-------------------------------------------------------------------------*
      WHEN 'StockSet'.
*     Call the entity set generated method
          stockset_update_entity(
               EXPORTING iv_entity_name     = iv_entity_name
                         iv_entity_set_name = iv_entity_set_name
                         iv_source_name     = iv_source_name
                         io_data_provider   = io_data_provider
                         it_key_tab         = it_key_tab
                         it_navigation_path = it_navigation_path
                         io_tech_request_context = io_tech_request_context
             	 IMPORTING er_entity          = stockset_update_entity
          ).
       IF stockset_update_entity IS NOT INITIAL.
*     Send specific entity data to the caller interface
          copy_data_to_ref(
            EXPORTING
              is_data = stockset_update_entity
            CHANGING
              cr_data = er_entity
          ).
        ELSE.
*         In case of initial values - unbind the entity reference
          er_entity = lr_entity.
        ENDIF.
      WHEN OTHERS.
        super->/iwbep/if_mgw_appl_srv_runtime~update_entity(
           EXPORTING
             iv_entity_name = iv_entity_name
             iv_entity_set_name = iv_entity_set_name
             iv_source_name = iv_source_name
             io_data_provider   = io_data_provider
             it_key_tab = it_key_tab
             it_navigation_path = it_navigation_path
          IMPORTING
            er_entity = er_entity
    ).
 ENDCASE.
  endmethod.


  method /IWBEP/IF_SB_DPC_COMM_SERVICES~COMMIT_WORK.
* Call RFC commit work functionality
DATA lt_message      TYPE bapiret2. "#EC NEEDED
DATA lv_message_text TYPE BAPI_MSG.
DATA lo_logger       TYPE REF TO /iwbep/cl_cos_logger.
DATA lv_subrc        TYPE syst-subrc.

lo_logger = /iwbep/if_mgw_conv_srv_runtime~get_logger( ).

  IF iv_rfc_dest IS INITIAL OR iv_rfc_dest EQ 'NONE'.
    CALL FUNCTION 'BAPI_TRANSACTION_COMMIT'
      EXPORTING
      wait   = abap_true
    IMPORTING
      return = lt_message.
  ELSE.
    CALL FUNCTION 'BAPI_TRANSACTION_COMMIT'
      DESTINATION iv_rfc_dest
    EXPORTING
      wait                  = abap_true
    IMPORTING
      return                = lt_message
    EXCEPTIONS
      communication_failure = 1000 MESSAGE lv_message_text
      system_failure        = 1001 MESSAGE lv_message_text
      OTHERS                = 1002.

  IF sy-subrc <> 0.
    lv_subrc = sy-subrc.
    /iwbep/cl_sb_gen_dpc_rt_util=>rfc_exception_handling(
        EXPORTING
          iv_subrc            = lv_subrc
          iv_exp_message_text = lv_message_text
          io_logger           = lo_logger ).
  ENDIF.
  ENDIF.
  endmethod.


  method /IWBEP/IF_SB_DPC_COMM_SERVICES~GET_GENERATION_STRATEGY.
* Get generation strategy
  rv_generation_strategy = '1'.
  endmethod.


  method /IWBEP/IF_SB_DPC_COMM_SERVICES~LOG_MESSAGE.
* Log message in the application log
DATA lo_logger TYPE REF TO /iwbep/cl_cos_logger.
DATA lv_text TYPE /iwbep/sup_msg_longtext.

  MESSAGE ID iv_msg_id TYPE iv_msg_type NUMBER iv_msg_number
    WITH iv_msg_v1 iv_msg_v2 iv_msg_v3 iv_msg_v4 INTO lv_text.

  lo_logger = mo_context->get_logger( ).
  lo_logger->log_message(
    EXPORTING
     iv_msg_type   = iv_msg_type
     iv_msg_id     = iv_msg_id
     iv_msg_number = iv_msg_number
     iv_msg_text   = lv_text
     iv_msg_v1     = iv_msg_v1
     iv_msg_v2     = iv_msg_v2
     iv_msg_v3     = iv_msg_v3
     iv_msg_v4     = iv_msg_v4
     iv_agent      = 'DPC' ).
  endmethod.


  method /IWBEP/IF_SB_DPC_COMM_SERVICES~RFC_EXCEPTION_HANDLING.
* RFC call exception handling
DATA lo_logger  TYPE REF TO /iwbep/cl_cos_logger.

lo_logger = /iwbep/if_mgw_conv_srv_runtime~get_logger( ).

/iwbep/cl_sb_gen_dpc_rt_util=>rfc_exception_handling(
  EXPORTING
    iv_subrc            = iv_subrc
    iv_exp_message_text = iv_exp_message_text
    io_logger           = lo_logger ).
  endmethod.


  method /IWBEP/IF_SB_DPC_COMM_SERVICES~RFC_SAVE_LOG.
  DATA lo_logger  TYPE REF TO /iwbep/cl_cos_logger.
  DATA lo_message_container TYPE REF TO /iwbep/if_message_container.

  lo_logger = /iwbep/if_mgw_conv_srv_runtime~get_logger( ).
  lo_message_container = /iwbep/if_mgw_conv_srv_runtime~get_message_container( ).

  " Save the RFC call log in the application log
  /iwbep/cl_sb_gen_dpc_rt_util=>rfc_save_log(
    EXPORTING
      is_return            = is_return
      iv_entity_type       = iv_entity_type
      it_return            = it_return
      it_key_tab           = it_key_tab
      io_logger            = lo_logger
      io_message_container = lo_message_container ).
  endmethod.


  method /IWBEP/IF_SB_DPC_COMM_SERVICES~SET_INJECTION.
* Unit test injection
  IF io_unit IS BOUND.
    mo_injection = io_unit.
  ELSE.
    mo_injection = me.
  ENDIF.
  endmethod.


  method CHECK_SUBSCRIPTION_AUTHORITY.
  RAISE EXCEPTION TYPE /iwbep/cx_mgw_not_impl_exc
    EXPORTING
      textid = /iwbep/cx_mgw_not_impl_exc=>method_not_implemented
      method = 'CHECK_SUBSCRIPTION_AUTHORITY'.
  endmethod.


  method STOCKSET_CREATE_ENTITY.
  RAISE EXCEPTION TYPE /iwbep/cx_mgw_not_impl_exc
    EXPORTING
      textid = /iwbep/cx_mgw_not_impl_exc=>method_not_implemented
      method = 'STOCKSET_CREATE_ENTITY'.
  endmethod.


  method STOCKSET_DELETE_ENTITY.
  RAISE EXCEPTION TYPE /iwbep/cx_mgw_not_impl_exc
    EXPORTING
      textid = /iwbep/cx_mgw_not_impl_exc=>method_not_implemented
      method = 'STOCKSET_DELETE_ENTITY'.
  endmethod.


  method STOCKSET_GET_ENTITY.
*-------------------------------------------------------------
*  Data declaration
*-------------------------------------------------------------
 DATA i_material TYPE zif_zca_matnrstock_getlist=>matnr.
 DATA et_allstock  TYPE zif_zca_matnrstock_getlist=>zca_commitstck_tt.
 DATA ls_et_allstock  TYPE LINE OF zif_zca_matnrstock_getlist=>zca_commitstck_tt.
 DATA lv_rfc_name TYPE tfdir-funcname.
 DATA lv_destination TYPE rfcdest.
 DATA lv_subrc TYPE syst-subrc.
 DATA lv_exc_msg TYPE /iwbep/mgw_bop_rfc_excep_text.
 DATA lx_root TYPE REF TO cx_root.
DATA ls_converted_keys LIKE er_entity.
DATA lv_source_entity_set_name TYPE string.
DATA lo_dp_facade TYPE REF TO /iwbep/if_mgw_dp_facade.

*-------------------------------------------------------------
*  Map the runtime request to the RFC - Only mapped attributes
*-------------------------------------------------------------
* Get all input information from the technical request context object
* Since DPC works with internal property names and runtime API interface holds external property names
* the process needs to get the all needed input information from the technical request context object
* Get key table information - for direct call
  io_tech_request_context->get_converted_keys(
    IMPORTING
      es_key_values = ls_converted_keys ).

* Maps key fields to function module parameters

    lv_source_entity_set_name = io_tech_request_context->get_source_entity_set_name( ).

    IF lv_source_entity_set_name = 'StockSet' AND
       lv_source_entity_set_name NE io_tech_request_context->get_entity_set_name( ).

      io_tech_request_context->get_converted_source_keys(
      IMPORTING es_key_values = ls_converted_keys ).

    ENDIF.

       i_material = ls_converted_keys-matnr.
* Get RFC destination
lo_dp_facade = /iwbep/if_mgw_conv_srv_runtime~get_dp_facade( ).
lv_destination = /iwbep/cl_sb_gen_dpc_rt_util=>get_rfc_destination( io_dp_facade = lo_dp_facade ).

*-------------------------------------------------------------
*  Call RFC function module
*-------------------------------------------------------------
lv_rfc_name = 'ZCA_MATNRSTOCK_GETLIST'.

IF lv_destination IS INITIAL OR lv_destination EQ 'NONE'.

  TRY.
      CALL FUNCTION lv_rfc_name
        EXPORTING
          i_material   =   i_material
        IMPORTING
          et_allstock   =   et_allstock
        EXCEPTIONS
          system_failure = 1000 message lv_exc_msg
          OTHERS = 1002.

      lv_subrc = sy-subrc.
*in case of co-deployment the exception is raised and needs to be caught
    CATCH cx_root INTO lx_root.
      lv_subrc = 1001.
      lv_exc_msg = lx_root->if_message~get_text( ).
  ENDTRY.

ELSE.

  CALL FUNCTION lv_rfc_name DESTINATION lv_destination
        EXPORTING
          i_material   =   i_material
        IMPORTING
          et_allstock   =   et_allstock
        EXCEPTIONS
          system_failure         = 1000 MESSAGE lv_exc_msg
          communication_failure  = 1001 MESSAGE lv_exc_msg
          OTHERS = 1002.

  lv_subrc = sy-subrc.

ENDIF.

*-------------------------------------------------------------
*  Map the RFC response to the caller interface - Only mapped attributes
*-------------------------------------------------------------
*-------------------------------------------------------------
* Error and exception handling
*-------------------------------------------------------------
IF lv_subrc <> 0.
* Execute the RFC exception handling process
  me->/iwbep/if_sb_dpc_comm_services~rfc_exception_handling(
    EXPORTING
      iv_subrc            = lv_subrc
      iv_exp_message_text = lv_exc_msg ).
ENDIF.

*-------------------------------------------------------------------------*
*             - Post Backend Call -
*-------------------------------------------------------------------------*
* Map properties from the backend to the Gateway output response structure


* In GetEntity operation we support only read for the first entry in the response table

        READ TABLE et_allstock INTO ls_et_allstock INDEX 1.
      er_entity-mandt = ls_et_allstock-mandt.
      er_entity-matnr = ls_et_allstock-matnr.
      er_entity-plant = ls_et_allstock-plant.
      er_entity-store_loc = ls_et_allstock-store_loc.
      er_entity-now_qty = ls_et_allstock-now_qty.
      er_entity-com_qty = ls_et_allstock-com_qty.
  endmethod.


  method STOCKSET_GET_ENTITYSET.
*-------------------------------------------------------------
*  Data declaration
*-------------------------------------------------------------
 DATA i_material TYPE zif_zca_matnrstock_getlist=>matnr.
 DATA i_plant TYPE zif_zca_matnrstock_getlist=>werks_d.
 DATA i_storeloc TYPE zif_zca_matnrstock_getlist=>lgort_d.
 DATA et_allstock  TYPE zif_zca_matnrstock_getlist=>zca_commitstck_tt.
 DATA ls_et_allstock  TYPE LINE OF zif_zca_matnrstock_getlist=>zca_commitstck_tt.
 DATA lv_rfc_name TYPE tfdir-funcname.
 DATA lv_destination TYPE rfcdest.
 DATA lv_subrc TYPE syst-subrc.
 DATA lv_exc_msg TYPE /iwbep/mgw_bop_rfc_excep_text.
 DATA lx_root TYPE REF TO cx_root.
DATA lo_filter TYPE  REF TO /iwbep/if_mgw_req_filter.
DATA lt_filter_select_options TYPE /iwbep/t_mgw_select_option.
DATA lv_filter_str TYPE string.
DATA ls_paging TYPE /iwbep/s_mgw_paging.
DATA ls_converted_keys LIKE LINE OF et_entityset.
DATA ls_filter TYPE /iwbep/s_mgw_select_option.
DATA ls_filter_range TYPE /iwbep/s_cod_select_option.
DATA lr_store_loc LIKE RANGE OF ls_converted_keys-store_loc.
DATA ls_store_loc LIKE LINE OF lr_store_loc.
DATA lr_plant LIKE RANGE OF ls_converted_keys-plant.
DATA ls_plant LIKE LINE OF lr_plant.
DATA lr_matnr LIKE RANGE OF ls_converted_keys-matnr.
DATA ls_matnr LIKE LINE OF lr_matnr.
DATA lo_dp_facade TYPE REF TO /iwbep/if_mgw_dp_facade.
DATA ls_gw_et_allstock LIKE LINE OF et_entityset.
DATA lv_skip     TYPE int4.
DATA lv_top      TYPE int4.

*-------------------------------------------------------------
*  Map the runtime request to the RFC - Only mapped attributes
*-------------------------------------------------------------
* Get all input information from the technical request context object
* Since DPC works with internal property names and runtime API interface holds external property names
* the process needs to get the all needed input information from the technical request context object
* Get filter or select option information
  lo_filter = io_tech_request_context->get_filter( ).
  lt_filter_select_options = lo_filter->get_filter_select_options( ).
  lv_filter_str = lo_filter->get_filter_string( ).

* Check if the supplied filter is supported by standard gateway runtime process
  IF  lv_filter_str            IS NOT INITIAL
  AND lt_filter_select_options IS INITIAL.
    " If the string of the Filter System Query Option is not automatically converted into
    " filter option table (lt_filter_select_options), then the filtering combination is not supported
    " Log message in the application log
    me->/iwbep/if_sb_dpc_comm_services~log_message(
      EXPORTING
        iv_msg_type   = 'E'
        iv_msg_id     = '/IWBEP/MC_SB_DPC_ADM'
        iv_msg_number = 025 ).
     " Raise Exception
     RAISE EXCEPTION TYPE /iwbep/cx_mgw_tech_exception
       EXPORTING
         textid = /iwbep/cx_mgw_tech_exception=>internal_error.
  ENDIF.

* Get key table information
  io_tech_request_context->get_converted_source_keys(
    IMPORTING
      es_key_values  = ls_converted_keys ).

  ls_paging-top = io_tech_request_context->get_top( ).
  ls_paging-skip = io_tech_request_context->get_skip( ).

* Maps filter table lines to function module parameters
  LOOP AT lt_filter_select_options INTO ls_filter.

    LOOP AT ls_filter-select_options INTO ls_filter_range.
      CASE ls_filter-property.
      WHEN 'STORE_LOC'.
        lo_filter->convert_select_option(
          EXPORTING
            is_select_option = ls_filter
          IMPORTING
            et_select_option = lr_store_loc ).

        READ TABLE lr_store_loc INTO ls_store_loc INDEX 1.
        IF sy-subrc = 0.
          i_storeloc = ls_store_loc-low.
        ENDIF.
      WHEN 'PLANT'.
        lo_filter->convert_select_option(
          EXPORTING
            is_select_option = ls_filter
          IMPORTING
            et_select_option = lr_plant ).

        READ TABLE lr_plant INTO ls_plant INDEX 1.
        IF sy-subrc = 0.
          i_plant = ls_plant-low.
        ENDIF.
      WHEN 'MATNR'.
        lo_filter->convert_select_option(
          EXPORTING
            is_select_option = ls_filter
          IMPORTING
            et_select_option = lr_matnr ).

        READ TABLE lr_matnr INTO ls_matnr INDEX 1.
        IF sy-subrc = 0.
          i_material = ls_matnr-low.
        ENDIF.
        WHEN OTHERS.
          " Log message in the application log
          me->/iwbep/if_sb_dpc_comm_services~log_message(
            EXPORTING
              iv_msg_type   = 'E'
              iv_msg_id     = '/IWBEP/MC_SB_DPC_ADM'
              iv_msg_number = 020
              iv_msg_v1     = ls_filter-property ).
          " Raise Exception
          RAISE EXCEPTION TYPE /iwbep/cx_mgw_tech_exception
            EXPORTING
              textid = /iwbep/cx_mgw_tech_exception=>internal_error.
        ENDCASE.
    ENDLOOP.

  ENDLOOP.

* Get RFC destination
lo_dp_facade = /iwbep/if_mgw_conv_srv_runtime~get_dp_facade( ).
lv_destination = /iwbep/cl_sb_gen_dpc_rt_util=>get_rfc_destination( io_dp_facade = lo_dp_facade ).

*-------------------------------------------------------------
*  Call RFC function module
*-------------------------------------------------------------
lv_rfc_name = 'ZCA_MATNRSTOCK_GETLIST'.

IF lv_destination IS INITIAL OR lv_destination EQ 'NONE'.

  TRY.
      CALL FUNCTION lv_rfc_name
        EXPORTING
          i_storeloc   =   i_storeloc
          i_plant      =   i_plant
          i_material   =   i_material
        IMPORTING
          et_allstock   =   et_allstock
        EXCEPTIONS
          system_failure = 1000 message lv_exc_msg
          OTHERS = 1002.

      lv_subrc = sy-subrc.
*in case of co-deployment the exception is raised and needs to be caught
    CATCH cx_root INTO lx_root.
      lv_subrc = 1001.
      lv_exc_msg = lx_root->if_message~get_text( ).
  ENDTRY.

ELSE.

  CALL FUNCTION lv_rfc_name DESTINATION lv_destination
        EXPORTING
          i_storeloc   =   i_storeloc
          i_plant      =   i_plant
          i_material   =   i_material
        IMPORTING
          et_allstock   =   et_allstock
        EXCEPTIONS
          system_failure         = 1000 MESSAGE lv_exc_msg
          communication_failure  = 1001 MESSAGE lv_exc_msg
          OTHERS = 1002.

  lv_subrc = sy-subrc.

ENDIF.

*-------------------------------------------------------------
*  Map the RFC response to the caller interface - Only mapped attributes
*-------------------------------------------------------------
*-------------------------------------------------------------
* Error and exception handling
*-------------------------------------------------------------
IF lv_subrc <> 0.
* Execute the RFC exception handling process
  me->/iwbep/if_sb_dpc_comm_services~rfc_exception_handling(
    EXPORTING
      iv_subrc            = lv_subrc
      iv_exp_message_text = lv_exc_msg ).
ENDIF.

*-------------------------------------------------------------------------*
*             - Post Backend Call -
*-------------------------------------------------------------------------*
IF ls_paging-skip IS NOT INITIAL.
*  If the Skip value was requested at runtime
*  the response table will provide backend entries from skip + 1, meaning start from skip +1
*  for example: skip=5 means to start get results from the 6th row
  lv_skip = ls_paging-skip + 1.
ENDIF.
*  The Top value was requested at runtime but was not handled as part of the function interface
IF  ls_paging-top <> 0
AND lv_skip IS NOT INITIAL.
*  if lv_skip > 0 retrieve the entries from lv_skip + Top - 1
*  for example: skip=5 and top=2 means to start get results from the 6th row and end in row number 7
lv_top = ls_paging-top + lv_skip - 1.
ELSEIF ls_paging-top <> 0
AND    lv_skip IS INITIAL.
  lv_top = ls_paging-top.
ELSE.
  lv_top = lines( et_allstock ).
ENDIF.

*  - Map properties from the backend to the Gateway output response table -

LOOP AT et_allstock INTO ls_et_allstock
*  Provide the response entries according to the Top and Skip parameters that were provided at runtime
     FROM lv_skip TO lv_top.
*  Only fields that were mapped will be delivered to the response table
 ls_gw_et_allstock-com_qty = ls_et_allstock-com_qty.
 ls_gw_et_allstock-now_qty = ls_et_allstock-now_qty.
 ls_gw_et_allstock-store_loc = ls_et_allstock-store_loc.
 ls_gw_et_allstock-plant = ls_et_allstock-plant.
 ls_gw_et_allstock-matnr = ls_et_allstock-matnr.
 ls_gw_et_allstock-mandt = ls_et_allstock-mandt.
APPEND ls_gw_et_allstock TO et_entityset.
CLEAR ls_gw_et_allstock.
ENDLOOP.

  endmethod.


  method STOCKSET_UPDATE_ENTITY.
  RAISE EXCEPTION TYPE /iwbep/cx_mgw_not_impl_exc
    EXPORTING
      textid = /iwbep/cx_mgw_not_impl_exc=>method_not_implemented
      method = 'STOCKSET_UPDATE_ENTITY'.
  endmethod.
ENDCLASS.
