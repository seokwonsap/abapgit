class ZCL_ZCAGW_OD_DPC definition
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

  methods ETODLISTSET_CREATE_ENTITY
    importing
      !IV_ENTITY_NAME type STRING
      !IV_ENTITY_SET_NAME type STRING
      !IV_SOURCE_NAME type STRING
      !IT_KEY_TAB type /IWBEP/T_MGW_NAME_VALUE_PAIR
      !IO_TECH_REQUEST_CONTEXT type ref to /IWBEP/IF_MGW_REQ_ENTITY_C optional
      !IT_NAVIGATION_PATH type /IWBEP/T_MGW_NAVIGATION_PATH
      !IO_DATA_PROVIDER type ref to /IWBEP/IF_MGW_ENTRY_PROVIDER optional
    exporting
      !ER_ENTITY type ZCL_ZCAGW_OD_MPC=>TS_ETODLIST
    raising
      /IWBEP/CX_MGW_BUSI_EXCEPTION
      /IWBEP/CX_MGW_TECH_EXCEPTION .
  methods ETODLISTSET_DELETE_ENTITY
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
  methods ETODLISTSET_GET_ENTITY
    importing
      !IV_ENTITY_NAME type STRING
      !IV_ENTITY_SET_NAME type STRING
      !IV_SOURCE_NAME type STRING
      !IT_KEY_TAB type /IWBEP/T_MGW_NAME_VALUE_PAIR
      !IO_REQUEST_OBJECT type ref to /IWBEP/IF_MGW_REQ_ENTITY optional
      !IO_TECH_REQUEST_CONTEXT type ref to /IWBEP/IF_MGW_REQ_ENTITY optional
      !IT_NAVIGATION_PATH type /IWBEP/T_MGW_NAVIGATION_PATH
    exporting
      !ER_ENTITY type ZCL_ZCAGW_OD_MPC=>TS_ETODLIST
      !ES_RESPONSE_CONTEXT type /IWBEP/IF_MGW_APPL_SRV_RUNTIME=>TY_S_MGW_RESPONSE_ENTITY_CNTXT
    raising
      /IWBEP/CX_MGW_BUSI_EXCEPTION
      /IWBEP/CX_MGW_TECH_EXCEPTION .
  methods ETODLISTSET_GET_ENTITYSET
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
      !ET_ENTITYSET type ZCL_ZCAGW_OD_MPC=>TT_ETODLIST
      !ES_RESPONSE_CONTEXT type /IWBEP/IF_MGW_APPL_SRV_RUNTIME=>TY_S_MGW_RESPONSE_CONTEXT
    raising
      /IWBEP/CX_MGW_BUSI_EXCEPTION
      /IWBEP/CX_MGW_TECH_EXCEPTION .
  methods ETODLISTSET_UPDATE_ENTITY
    importing
      !IV_ENTITY_NAME type STRING
      !IV_ENTITY_SET_NAME type STRING
      !IV_SOURCE_NAME type STRING
      !IT_KEY_TAB type /IWBEP/T_MGW_NAME_VALUE_PAIR
      !IO_TECH_REQUEST_CONTEXT type ref to /IWBEP/IF_MGW_REQ_ENTITY_U optional
      !IT_NAVIGATION_PATH type /IWBEP/T_MGW_NAVIGATION_PATH
      !IO_DATA_PROVIDER type ref to /IWBEP/IF_MGW_ENTRY_PROVIDER optional
    exporting
      !ER_ENTITY type ZCL_ZCAGW_OD_MPC=>TS_ETODLIST
    raising
      /IWBEP/CX_MGW_BUSI_EXCEPTION
      /IWBEP/CX_MGW_TECH_EXCEPTION .

  methods CHECK_SUBSCRIPTION_AUTHORITY
    redefinition .
private section.
ENDCLASS.



CLASS ZCL_ZCAGW_OD_DPC IMPLEMENTATION.


  method /IWBEP/IF_MGW_APPL_SRV_RUNTIME~CREATE_ENTITY.
*&----------------------------------------------------------------------------------------------*
*&  Include           /IWBEP/DPC_TEMP_CRT_ENTITY_BASE
*&* This class has been generated on 2019.10.29 17:20:41 in client 400
*&*
*&*       WARNING--> NEVER MODIFY THIS CLASS <--WARNING
*&*   If you want to change the DPC implementation, use the
*&*   generated methods inside the DPC provider subclass - ZCL_ZCAGW_OD_DPC_EXT
*&-----------------------------------------------------------------------------------------------*

 DATA etodlistset_create_entity TYPE zcl_zcagw_od_mpc=>ts_etodlist.
 DATA lv_entityset_name TYPE string.

lv_entityset_name = io_tech_request_context->get_entity_set_name( ).

CASE lv_entityset_name.
*-------------------------------------------------------------------------*
*             EntitySet -  EtOdListSet
*-------------------------------------------------------------------------*
     WHEN 'EtOdListSet'.
*     Call the entity set generated method
    etodlistset_create_entity(
         EXPORTING iv_entity_name     = iv_entity_name
                   iv_entity_set_name = iv_entity_set_name
                   iv_source_name     = iv_source_name
                   io_data_provider   = io_data_provider
                   it_key_tab         = it_key_tab
                   it_navigation_path = it_navigation_path
                   io_tech_request_context = io_tech_request_context
       	 IMPORTING er_entity          = etodlistset_create_entity
    ).
*     Send specific entity data to the caller interfaces
    copy_data_to_ref(
      EXPORTING
        is_data = etodlistset_create_entity
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
*&* This class has been generated on 2019.10.29 17:20:41 in client 400
*&*
*&*       WARNING--> NEVER MODIFY THIS CLASS <--WARNING
*&*   If you want to change the DPC implementation, use the
*&*   generated methods inside the DPC provider subclass - ZCL_ZCAGW_OD_DPC_EXT
*&-----------------------------------------------------------------------------------------------*

 DATA lv_entityset_name TYPE string.

lv_entityset_name = io_tech_request_context->get_entity_set_name( ).

CASE lv_entityset_name.
*-------------------------------------------------------------------------*
*             EntitySet -  EtOdListSet
*-------------------------------------------------------------------------*
      when 'EtOdListSet'.
*     Call the entity set generated method
     etodlistset_delete_entity(
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
*&* This class has been generated  on 2019.10.29 17:20:41 in client 400
*&*
*&*       WARNING--> NEVER MODIFY THIS CLASS <--WARNING
*&*   If you want to change the DPC implementation, use the
*&*   generated methods inside the DPC provider subclass - ZCL_ZCAGW_OD_DPC_EXT
*&-----------------------------------------------------------------------------------------------*

 DATA etodlistset_get_entity TYPE zcl_zcagw_od_mpc=>ts_etodlist.
 DATA lv_entityset_name TYPE string.
 DATA lr_entity TYPE REF TO data.       "#EC NEEDED

lv_entityset_name = io_tech_request_context->get_entity_set_name( ).

CASE lv_entityset_name.
*-------------------------------------------------------------------------*
*             EntitySet -  EtOdListSet
*-------------------------------------------------------------------------*
      WHEN 'EtOdListSet'.
*     Call the entity set generated method
          etodlistset_get_entity(
               EXPORTING iv_entity_name     = iv_entity_name
                         iv_entity_set_name = iv_entity_set_name
                         iv_source_name     = iv_source_name
                         it_key_tab         = it_key_tab
                         it_navigation_path = it_navigation_path
                         io_tech_request_context = io_tech_request_context
             	 IMPORTING er_entity          = etodlistset_get_entity
                         es_response_context = es_response_context
          ).

        IF etodlistset_get_entity IS NOT INITIAL.
*     Send specific entity data to the caller interface
          copy_data_to_ref(
            EXPORTING
              is_data = etodlistset_get_entity
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
*&* This class has been generated on 2019.10.29 17:20:41 in client 400
*&*
*&*       WARNING--> NEVER MODIFY THIS CLASS <--WARNING
*&*   If you want to change the DPC implementation, use the
*&*   generated methods inside the DPC provider subclass - ZCL_ZCAGW_OD_DPC_EXT
*&-----------------------------------------------------------------------------------------------*
 DATA etodlistset_get_entityset TYPE zcl_zcagw_od_mpc=>tt_etodlist.
 DATA lv_entityset_name TYPE string.

lv_entityset_name = io_tech_request_context->get_entity_set_name( ).

CASE lv_entityset_name.
*-------------------------------------------------------------------------*
*             EntitySet -  EtOdListSet
*-------------------------------------------------------------------------*
   WHEN 'EtOdListSet'.
*     Call the entity set generated method
      etodlistset_get_entityset(
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
         et_entityset = etodlistset_get_entityset
         es_response_context = es_response_context
       ).
*     Send specific entity data to the caller interface
      copy_data_to_ref(
        EXPORTING
          is_data = etodlistset_get_entityset
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
*&* This class has been generated on 2019.10.29 17:20:41 in client 400
*&*
*&*       WARNING--> NEVER MODIFY THIS CLASS <--WARNING
*&*   If you want to change the DPC implementation, use the
*&*   generated methods inside the DPC provider subclass - ZCL_ZCAGW_OD_DPC_EXT
*&-----------------------------------------------------------------------------------------------*

 DATA etodlistset_update_entity TYPE zcl_zcagw_od_mpc=>ts_etodlist.
 DATA lv_entityset_name TYPE string.
 DATA lr_entity TYPE REF TO data. "#EC NEEDED

lv_entityset_name = io_tech_request_context->get_entity_set_name( ).

CASE lv_entityset_name.
*-------------------------------------------------------------------------*
*             EntitySet -  EtOdListSet
*-------------------------------------------------------------------------*
      WHEN 'EtOdListSet'.
*     Call the entity set generated method
          etodlistset_update_entity(
               EXPORTING iv_entity_name     = iv_entity_name
                         iv_entity_set_name = iv_entity_set_name
                         iv_source_name     = iv_source_name
                         io_data_provider   = io_data_provider
                         it_key_tab         = it_key_tab
                         it_navigation_path = it_navigation_path
                         io_tech_request_context = io_tech_request_context
             	 IMPORTING er_entity          = etodlistset_update_entity
          ).
       IF etodlistset_update_entity IS NOT INITIAL.
*     Send specific entity data to the caller interface
          copy_data_to_ref(
            EXPORTING
              is_data = etodlistset_update_entity
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


  method ETODLISTSET_CREATE_ENTITY.
*-------------------------------------------------------------
*  Data declaration
*-------------------------------------------------------------
 DATA i_itmnum TYPE zif_zca_outboundry_create=>posnr.
 DATA i_salesdoc TYPE zif_zca_outboundry_create=>rfbel_vl.
 DATA e_delivery TYPE zif_zca_outboundry_create=>bapishpdelivnumb-deliv_numb.
 DATA i_shippoint TYPE zif_zca_outboundry_create=>bapidlvcreateheader-ship_point.
 DATA t_return  TYPE zif_zca_outboundry_create=>__bapiret2.
 DATA ls_t_return  TYPE LINE OF zif_zca_outboundry_create=>__bapiret2.
 DATA lv_rfc_name TYPE tfdir-funcname.
 DATA lv_destination TYPE rfcdest.
 DATA lv_subrc TYPE syst-subrc.
 DATA lv_exc_msg TYPE /iwbep/mgw_bop_rfc_excep_text.
 DATA lx_root TYPE REF TO cx_root.
DATA ls_request_input_data TYPE zcl_zcagw_od_mpc=>ts_etodlist.
DATA ls_entity TYPE REF TO data.
DATA lo_tech_read_request_context TYPE REF TO /iwbep/cl_sb_gen_read_aftr_crt.
DATA ls_key TYPE /iwbep/s_mgw_tech_pair.
DATA lt_keys TYPE /iwbep/t_mgw_tech_pairs.
DATA lv_entityset_name TYPE string.
DATA lv_entity_name TYPE string.
FIELD-SYMBOLS: <ls_data> TYPE any.
DATA ls_converted_keys LIKE er_entity.
DATA lo_dp_facade TYPE REF TO /iwbep/if_mgw_dp_facade.

*-------------------------------------------------------------
*  Map the runtime request to the RFC - Only mapped attributes
*-------------------------------------------------------------
* Get all input information from the technical request context object
* Since DPC works with internal property names and runtime API interface holds external property names
* the process needs to get the all needed input information from the technical request context object
* Get request input data
  io_data_provider->read_entry_data( IMPORTING es_data = ls_request_input_data ).

* Map request input fields to function module parameters
       i_shippoint = ls_request_input_data-ship_point.
       i_itmnum = ls_request_input_data-dl_num.
       i_salesdoc = ls_request_input_data-sd_doc.

* Get RFC destination
lo_dp_facade = /iwbep/if_mgw_conv_srv_runtime~get_dp_facade( ).
lv_destination = /iwbep/cl_sb_gen_dpc_rt_util=>get_rfc_destination( io_dp_facade = lo_dp_facade ).

*-------------------------------------------------------------
*  Call RFC function module
*-------------------------------------------------------------
lv_rfc_name = 'ZCA_OUTBOUNDRY_CREATE'.

IF lv_destination IS INITIAL OR lv_destination EQ 'NONE'.

  TRY.
      CALL FUNCTION lv_rfc_name
        EXPORTING
          i_shippoint   =   i_shippoint
          i_itmnum      =   i_itmnum
          i_salesdoc    =   i_salesdoc
        IMPORTING
          e_delivery   =   e_delivery
        TABLES
          t_return   =   t_return
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
          i_shippoint   =   i_shippoint
          i_itmnum      =   i_itmnum
          i_salesdoc    =   i_salesdoc
        IMPORTING
          e_delivery   =   e_delivery
        TABLES
          t_return   =   t_return
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

IF t_return IS NOT INITIAL.
  me->/iwbep/if_sb_dpc_comm_services~rfc_save_log(
    EXPORTING
      iv_entity_type = iv_entity_name
      it_return      = t_return
      it_key_tab     = it_key_tab ).
ENDIF.

* Call RFC commit work
  me->/iwbep/if_sb_dpc_comm_services~commit_work(
         EXPORTING
           iv_rfc_dest = lv_destination
      ) .
*-------------------------------------------------------------------------*
*             - Read After Create -
*-------------------------------------------------------------------------*
CREATE OBJECT lo_tech_read_request_context.

* Create key table for the read operation

        ls_key-name = 'DL_NUM'.
        ls_key-value = i_itmnum.
         IF ls_key-value IS NOT INITIAL.
         APPEND ls_key TO lt_keys.
         ENDIF.

        ls_key-name = 'DL_DOC'.
        ls_key-value = e_delivery.
         IF ls_key-value IS NOT INITIAL.
         APPEND ls_key TO lt_keys.
         ENDIF.

* Set into request context object the key table and the entity set name
lo_tech_read_request_context->set_keys( EXPORTING  it_keys = lt_keys ).
lv_entityset_name = io_tech_request_context->get_entity_set_name( ).
lo_tech_read_request_context->set_entityset_name( EXPORTING iv_entityset_name = lv_entityset_name ).
lv_entity_name = io_tech_request_context->get_entity_type_name( ).
lo_tech_read_request_context->set_entity_type_name( EXPORTING iv_entity_name = lv_entity_name ).

* Call read after create
/iwbep/if_mgw_appl_srv_runtime~get_entity(
  EXPORTING
    iv_entity_name     = iv_entity_name
    iv_entity_set_name = iv_entity_set_name
    iv_source_name     = iv_source_name
    it_key_tab         = it_key_tab
    io_tech_request_context = lo_tech_read_request_context
    it_navigation_path = it_navigation_path
  IMPORTING
    er_entity          = ls_entity ).

* Send the read response to the caller interface
  ASSIGN ls_entity->* TO <ls_data>.
  er_entity = <ls_data>.
  endmethod.


  method ETODLISTSET_DELETE_ENTITY.
  RAISE EXCEPTION TYPE /iwbep/cx_mgw_not_impl_exc
    EXPORTING
      textid = /iwbep/cx_mgw_not_impl_exc=>method_not_implemented
      method = 'ETODLISTSET_DELETE_ENTITY'.
  endmethod.


  method ETODLISTSET_GET_ENTITY.
*-------------------------------------------------------------
*  Data declaration
*-------------------------------------------------------------
 DATA i_itmnum TYPE zif_zca_outboundry_getlist=>posnr.
 DATA i_vbeln TYPE zif_zca_outboundry_getlist=>vbeln.
 DATA et_od_list  TYPE zif_zca_outboundry_getlist=>zca_outboundry_tt.
 DATA ls_et_od_list  TYPE LINE OF zif_zca_outboundry_getlist=>zca_outboundry_tt.
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

    IF lv_source_entity_set_name = 'EtOdListSet' AND
       lv_source_entity_set_name NE io_tech_request_context->get_entity_set_name( ).

      io_tech_request_context->get_converted_source_keys(
      IMPORTING es_key_values = ls_converted_keys ).

    ENDIF.

       i_vbeln = ls_converted_keys-dl_doc.
       i_itmnum = ls_converted_keys-dl_num.
* Get RFC destination
lo_dp_facade = /iwbep/if_mgw_conv_srv_runtime~get_dp_facade( ).
lv_destination = /iwbep/cl_sb_gen_dpc_rt_util=>get_rfc_destination( io_dp_facade = lo_dp_facade ).

*-------------------------------------------------------------
*  Call RFC function module
*-------------------------------------------------------------
lv_rfc_name = 'ZCA_OUTBOUNDRY_GETLIST'.

IF lv_destination IS INITIAL OR lv_destination EQ 'NONE'.

  TRY.
      CALL FUNCTION lv_rfc_name
        EXPORTING
          i_vbeln    =   i_vbeln
          i_itmnum   =   i_itmnum
        IMPORTING
          et_od_list   =   et_od_list
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
          i_vbeln    =   i_vbeln
          i_itmnum   =   i_itmnum
        IMPORTING
          et_od_list   =   et_od_list
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

        READ TABLE et_od_list INTO ls_et_od_list INDEX 1.
      er_entity-dblv_status = ls_et_od_list-dblv_status.
      er_entity-bblk_status = ls_et_od_list-bblk_status.
      er_entity-ablk_status = ls_et_od_list-ablk_status.
      er_entity-gm_date = ls_et_od_list-gm_date.
      er_entity-a_dlv_qty = ls_et_od_list-a_dlv_qty.
      er_entity-unit = ls_et_od_list-unit.
      er_entity-net_value = ls_et_od_list-net_value.
      er_entity-sold_to = ls_et_od_list-sold_to.
      er_entity-ship_to = ls_et_od_list-ship_to.
      er_entity-good_status = ls_et_od_list-good_status.
      er_entity-pick_status = ls_et_od_list-pick_status.
      er_entity-oall_status = ls_et_od_list-oall_status.
      er_entity-bill_status = ls_et_od_list-bill_status.
      er_entity-doc_date = ls_et_od_list-doc_date.
      er_entity-weight_unit = ls_et_od_list-weight_unit.
      er_entity-weight = ls_et_od_list-weight.
      er_entity-base_uom = ls_et_od_list-base_uom.
      er_entity-net_curr = ls_et_od_list-net_curr.
      er_entity-dlv_qty = ls_et_od_list-dlv_qty.
      er_entity-short_text = ls_et_od_list-short_text.
      er_entity-ematn = ls_et_od_list-ematn.
      er_entity-material = ls_et_od_list-material.
      er_entity-plant = ls_et_od_list-plant.
      er_entity-ship_point = ls_et_od_list-ship_point.
      er_entity-itm_value = ls_et_od_list-itm_value.
      er_entity-itm_curr = ls_et_od_list-itm_curr.
      er_entity-sd_doc = ls_et_od_list-sd_doc.
      er_entity-mandt = ls_et_od_list-mandt.
      er_entity-dl_num = ls_et_od_list-dl_num.
      er_entity-dl_doc = ls_et_od_list-dl_doc.
  endmethod.


  method ETODLISTSET_GET_ENTITYSET.
*-------------------------------------------------------------
*  Data declaration
*-------------------------------------------------------------
 DATA i_billblcok TYPE zif_zca_outboundry_getlist=>faksk.
 DATA i_billstatus TYPE zif_zca_outboundry_getlist=>fkstk.
 DATA i_customer TYPE zif_zca_outboundry_getlist=>kunnr.
 DATA i_delvblock TYPE zif_zca_outboundry_getlist=>lifsk.
 DATA i_docdate TYPE zif_zca_outboundry_getlist=>zca_docdate_wa.
 DATA i_goodstatus TYPE zif_zca_outboundry_getlist=>wbstk.
 DATA i_itmnum TYPE zif_zca_outboundry_getlist=>posnr.
 DATA i_matnr TYPE zif_zca_outboundry_getlist=>matnr.
 DATA i_oallblock TYPE zif_zca_outboundry_getlist=>spstg.
 DATA i_oallstatus TYPE zif_zca_outboundry_getlist=>gbstk.
 DATA i_pickstatus TYPE zif_zca_outboundry_getlist=>kostk.
 DATA i_sddoc TYPE zif_zca_outboundry_getlist=>vbeln.
 DATA i_vbeln TYPE zif_zca_outboundry_getlist=>vbeln.
 DATA et_od_list  TYPE zif_zca_outboundry_getlist=>zca_outboundry_tt.
 DATA ls_et_od_list  TYPE LINE OF zif_zca_outboundry_getlist=>zca_outboundry_tt.
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
DATA lr_dl_num LIKE RANGE OF ls_converted_keys-dl_num.
DATA ls_dl_num LIKE LINE OF lr_dl_num.
DATA lr_dl_doc LIKE RANGE OF ls_converted_keys-dl_doc.
DATA ls_dl_doc LIKE LINE OF lr_dl_doc.
DATA lr_sold_to LIKE RANGE OF ls_converted_keys-sold_to.
DATA ls_sold_to LIKE LINE OF lr_sold_to.
DATA lr_sd_doc LIKE RANGE OF ls_converted_keys-sd_doc.
DATA ls_sd_doc LIKE LINE OF lr_sd_doc.
DATA lr_dblv_status LIKE RANGE OF ls_converted_keys-dblv_status.
DATA ls_dblv_status LIKE LINE OF lr_dblv_status.
DATA lr_ablk_status LIKE RANGE OF ls_converted_keys-ablk_status.
DATA ls_ablk_status LIKE LINE OF lr_ablk_status.
DATA lr_bblk_status LIKE RANGE OF ls_converted_keys-bblk_status.
DATA ls_bblk_status LIKE LINE OF lr_bblk_status.
DATA lr_good_status LIKE RANGE OF ls_converted_keys-good_status.
DATA ls_good_status LIKE LINE OF lr_good_status.
DATA lr_bill_status LIKE RANGE OF ls_converted_keys-bill_status.
DATA ls_bill_status LIKE LINE OF lr_bill_status.
DATA lr_material LIKE RANGE OF ls_converted_keys-material.
DATA ls_material LIKE LINE OF lr_material.
DATA lr_oall_status LIKE RANGE OF ls_converted_keys-oall_status.
DATA ls_oall_status LIKE LINE OF lr_oall_status.
DATA lr_pick_status LIKE RANGE OF ls_converted_keys-pick_status.
DATA ls_pick_status LIKE LINE OF lr_pick_status.
DATA lr_doc_date LIKE RANGE OF ls_converted_keys-doc_date.
DATA ls_doc_date LIKE LINE OF lr_doc_date.
DATA lo_dp_facade TYPE REF TO /iwbep/if_mgw_dp_facade.
DATA ls_gw_et_od_list LIKE LINE OF et_entityset.
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
      WHEN 'DL_NUM'.
        lo_filter->convert_select_option(
          EXPORTING
            is_select_option = ls_filter
          IMPORTING
            et_select_option = lr_dl_num ).

        READ TABLE lr_dl_num INTO ls_dl_num INDEX 1.
        IF sy-subrc = 0.
          i_itmnum = ls_dl_num-low.
        ENDIF.
      WHEN 'DL_DOC'.
        lo_filter->convert_select_option(
          EXPORTING
            is_select_option = ls_filter
          IMPORTING
            et_select_option = lr_dl_doc ).

        READ TABLE lr_dl_doc INTO ls_dl_doc INDEX 1.
        IF sy-subrc = 0.
          i_vbeln = ls_dl_doc-low.
        ENDIF.
      WHEN 'SOLD_TO'.
        lo_filter->convert_select_option(
          EXPORTING
            is_select_option = ls_filter
          IMPORTING
            et_select_option = lr_sold_to ).

        READ TABLE lr_sold_to INTO ls_sold_to INDEX 1.
        IF sy-subrc = 0.
          i_customer = ls_sold_to-low.
        ENDIF.
      WHEN 'SD_DOC'.
        lo_filter->convert_select_option(
          EXPORTING
            is_select_option = ls_filter
          IMPORTING
            et_select_option = lr_sd_doc ).

        READ TABLE lr_sd_doc INTO ls_sd_doc INDEX 1.
        IF sy-subrc = 0.
          i_sddoc = ls_sd_doc-low.
        ENDIF.
      WHEN 'DBLV_STATUS'.
        lo_filter->convert_select_option(
          EXPORTING
            is_select_option = ls_filter
          IMPORTING
            et_select_option = lr_dblv_status ).

        READ TABLE lr_dblv_status INTO ls_dblv_status INDEX 1.
        IF sy-subrc = 0.
          i_delvblock = ls_dblv_status-low.
        ENDIF.
      WHEN 'ABLK_STATUS'.
        lo_filter->convert_select_option(
          EXPORTING
            is_select_option = ls_filter
          IMPORTING
            et_select_option = lr_ablk_status ).

        READ TABLE lr_ablk_status INTO ls_ablk_status INDEX 1.
        IF sy-subrc = 0.
          i_oallblock = ls_ablk_status-low.
        ENDIF.
      WHEN 'BBLK_STATUS'.
        lo_filter->convert_select_option(
          EXPORTING
            is_select_option = ls_filter
          IMPORTING
            et_select_option = lr_bblk_status ).

        READ TABLE lr_bblk_status INTO ls_bblk_status INDEX 1.
        IF sy-subrc = 0.
          i_billblcok = ls_bblk_status-low.
        ENDIF.
      WHEN 'GOOD_STATUS'.
        lo_filter->convert_select_option(
          EXPORTING
            is_select_option = ls_filter
          IMPORTING
            et_select_option = lr_good_status ).

        READ TABLE lr_good_status INTO ls_good_status INDEX 1.
        IF sy-subrc = 0.
          i_goodstatus = ls_good_status-low.
        ENDIF.
      WHEN 'BILL_STATUS'.
        lo_filter->convert_select_option(
          EXPORTING
            is_select_option = ls_filter
          IMPORTING
            et_select_option = lr_bill_status ).

        READ TABLE lr_bill_status INTO ls_bill_status INDEX 1.
        IF sy-subrc = 0.
          i_billstatus = ls_bill_status-low.
        ENDIF.
      WHEN 'MATERIAL'.
        lo_filter->convert_select_option(
          EXPORTING
            is_select_option = ls_filter
          IMPORTING
            et_select_option = lr_material ).

        READ TABLE lr_material INTO ls_material INDEX 1.
        IF sy-subrc = 0.
          i_matnr = ls_material-low.
        ENDIF.
      WHEN 'OALL_STATUS'.
        lo_filter->convert_select_option(
          EXPORTING
            is_select_option = ls_filter
          IMPORTING
            et_select_option = lr_oall_status ).

        READ TABLE lr_oall_status INTO ls_oall_status INDEX 1.
        IF sy-subrc = 0.
          i_oallstatus = ls_oall_status-low.
        ENDIF.
      WHEN 'PICK_STATUS'.
        lo_filter->convert_select_option(
          EXPORTING
            is_select_option = ls_filter
          IMPORTING
            et_select_option = lr_pick_status ).

        READ TABLE lr_pick_status INTO ls_pick_status INDEX 1.
        IF sy-subrc = 0.
          i_pickstatus = ls_pick_status-low.
        ENDIF.
    WHEN 'DOC_DATE'.              " Equivalent to 'DocDate' property in the service
      lo_filter->convert_select_option(
        EXPORTING
          is_select_option = ls_filter
        IMPORTING
          et_select_option = lr_doc_date ).

        LOOP AT lr_doc_date INTO ls_doc_date.
               i_docdate-option = ls_doc_date-option.
               i_docdate-sales_date_high = ls_doc_date-high.
               i_docdate-sales_date_low = ls_doc_date-low.
               i_docdate-sign = ls_doc_date-sign.
          ENDLOOP.

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
lv_rfc_name = 'ZCA_OUTBOUNDRY_GETLIST'.

IF lv_destination IS INITIAL OR lv_destination EQ 'NONE'.

  TRY.
      CALL FUNCTION lv_rfc_name
        EXPORTING
          i_itmnum       =   i_itmnum
          i_vbeln        =   i_vbeln
          i_docdate      =   i_docdate
          i_customer     =   i_customer
          i_sddoc        =   i_sddoc
          i_delvblock    =   i_delvblock
          i_oallblock    =   i_oallblock
          i_billblcok    =   i_billblcok
          i_goodstatus   =   i_goodstatus
          i_billstatus   =   i_billstatus
          i_matnr        =   i_matnr
          i_oallstatus   =   i_oallstatus
          i_pickstatus   =   i_pickstatus
        IMPORTING
          et_od_list   =   et_od_list
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
          i_itmnum       =   i_itmnum
          i_vbeln        =   i_vbeln
          i_docdate      =   i_docdate
          i_customer     =   i_customer
          i_sddoc        =   i_sddoc
          i_delvblock    =   i_delvblock
          i_oallblock    =   i_oallblock
          i_billblcok    =   i_billblcok
          i_goodstatus   =   i_goodstatus
          i_billstatus   =   i_billstatus
          i_matnr        =   i_matnr
          i_oallstatus   =   i_oallstatus
          i_pickstatus   =   i_pickstatus
        IMPORTING
          et_od_list   =   et_od_list
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
  lv_top = lines( et_od_list ).
ENDIF.

*  - Map properties from the backend to the Gateway output response table -

LOOP AT et_od_list INTO ls_et_od_list
*  Provide the response entries according to the Top and Skip parameters that were provided at runtime
     FROM lv_skip TO lv_top.
*  Only fields that were mapped will be delivered to the response table
 ls_gw_et_od_list-mandt = ls_et_od_list-mandt.
 ls_gw_et_od_list-sd_doc = ls_et_od_list-sd_doc.
 ls_gw_et_od_list-dl_doc = ls_et_od_list-dl_doc.
 ls_gw_et_od_list-dl_num = ls_et_od_list-dl_num.
 ls_gw_et_od_list-ship_point = ls_et_od_list-ship_point.
 ls_gw_et_od_list-plant = ls_et_od_list-plant.
 ls_gw_et_od_list-material = ls_et_od_list-material.
 ls_gw_et_od_list-ematn = ls_et_od_list-ematn.
 ls_gw_et_od_list-short_text = ls_et_od_list-short_text.
 ls_gw_et_od_list-dlv_qty = ls_et_od_list-dlv_qty.
 ls_gw_et_od_list-itm_curr = ls_et_od_list-itm_curr.
 ls_gw_et_od_list-base_uom = ls_et_od_list-base_uom.
 ls_gw_et_od_list-weight = ls_et_od_list-weight.
 ls_gw_et_od_list-weight_unit = ls_et_od_list-weight_unit.
 ls_gw_et_od_list-doc_date = ls_et_od_list-doc_date.
 ls_gw_et_od_list-bill_status = ls_et_od_list-bill_status.
 ls_gw_et_od_list-oall_status = ls_et_od_list-oall_status.
 ls_gw_et_od_list-pick_status = ls_et_od_list-pick_status.
 ls_gw_et_od_list-good_status = ls_et_od_list-good_status.
 ls_gw_et_od_list-ship_to = ls_et_od_list-ship_to.
 ls_gw_et_od_list-sold_to = ls_et_od_list-sold_to.
 ls_gw_et_od_list-net_value = ls_et_od_list-net_value.
 ls_gw_et_od_list-a_dlv_qty = ls_et_od_list-a_dlv_qty.
 ls_gw_et_od_list-gm_date = ls_et_od_list-gm_date.
 ls_gw_et_od_list-ablk_status = ls_et_od_list-ablk_status.
 ls_gw_et_od_list-bblk_status = ls_et_od_list-bblk_status.
 ls_gw_et_od_list-dblv_status = ls_et_od_list-dblv_status.
 ls_gw_et_od_list-unit = ls_et_od_list-unit.
 ls_gw_et_od_list-net_curr = ls_et_od_list-net_curr.
 ls_gw_et_od_list-itm_value = ls_et_od_list-itm_value.
APPEND ls_gw_et_od_list TO et_entityset.
CLEAR ls_gw_et_od_list.
ENDLOOP.

  endmethod.


  method ETODLISTSET_UPDATE_ENTITY.
*-------------------------------------------------------------
*  Data declaration
*-------------------------------------------------------------
 DATA i_itmnum TYPE zif_zca_outboundry_change=>posnr.
 DATA i_picking TYPE zif_zca_outboundry_change=>kostk.
 DATA i_postgood TYPE zif_zca_outboundry_change=>wbstk.
 DATA i_vbeln TYPE zif_zca_outboundry_change=>vbeln.
 DATA t_return  TYPE zif_zca_outboundry_change=>__bapiret2.
 DATA ls_t_return  TYPE LINE OF zif_zca_outboundry_change=>__bapiret2.
 DATA lv_rfc_name TYPE tfdir-funcname.
 DATA lv_destination TYPE rfcdest.
 DATA lv_subrc TYPE syst-subrc.
 DATA lv_exc_msg TYPE /iwbep/mgw_bop_rfc_excep_text.
 DATA lx_root TYPE REF TO cx_root.
DATA ls_request_input_data TYPE zcl_zcagw_od_mpc=>ts_etodlist.
DATA ls_converted_keys LIKE er_entity.
DATA lv_source_entity_set_name TYPE string.
DATA lo_dp_facade TYPE REF TO /iwbep/if_mgw_dp_facade.

*-------------------------------------------------------------
*  Map the runtime request to the RFC - Only mapped attributes
*-------------------------------------------------------------
* Get all input information from the technical request context object
* Since DPC works with internal property names and runtime API interface holds external property names
* the process needs to get the all needed input information from the technical request context object
* Get request input data
  io_data_provider->read_entry_data( IMPORTING es_data = ls_request_input_data ).
* Get key table information
  io_tech_request_context->get_converted_keys(
    IMPORTING
      es_key_values  = ls_converted_keys ).

* Maps key fields to function module parameters

       i_itmnum = ls_converted_keys-dl_num.
       i_vbeln = ls_converted_keys-dl_doc.
* Map request input fields to function module parameters
       i_postgood = ls_request_input_data-good_status.
       i_picking = ls_request_input_data-pick_status.

* Get RFC destination
lo_dp_facade = /iwbep/if_mgw_conv_srv_runtime~get_dp_facade( ).
lv_destination = /iwbep/cl_sb_gen_dpc_rt_util=>get_rfc_destination( io_dp_facade = lo_dp_facade ).

*-------------------------------------------------------------
*  Call RFC function module
*-------------------------------------------------------------
lv_rfc_name = 'ZCA_OUTBOUNDRY_CHANGE'.

IF lv_destination IS INITIAL OR lv_destination EQ 'NONE'.

  TRY.
      CALL FUNCTION lv_rfc_name
        EXPORTING
          i_postgood   =   i_postgood
          i_picking    =   i_picking
          i_itmnum     =   i_itmnum
          i_vbeln      =   i_vbeln
        TABLES
          t_return   =   t_return
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
          i_postgood   =   i_postgood
          i_picking    =   i_picking
          i_itmnum     =   i_itmnum
          i_vbeln      =   i_vbeln
        TABLES
          t_return   =   t_return
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

IF t_return IS NOT INITIAL.
  me->/iwbep/if_sb_dpc_comm_services~rfc_save_log(
    EXPORTING
      iv_entity_type = iv_entity_name
      it_return      = t_return
      it_key_tab     = it_key_tab ).
ENDIF.

* Call RFC commit work
  me->/iwbep/if_sb_dpc_comm_services~commit_work(
         EXPORTING
           iv_rfc_dest = lv_destination
      ) .
  endmethod.
ENDCLASS.
