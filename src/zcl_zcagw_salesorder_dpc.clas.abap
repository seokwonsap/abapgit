class ZCL_ZCAGW_SALESORDER_DPC definition
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

  methods SALESORDERSET_CREATE_ENTITY
    importing
      !IV_ENTITY_NAME type STRING
      !IV_ENTITY_SET_NAME type STRING
      !IV_SOURCE_NAME type STRING
      !IT_KEY_TAB type /IWBEP/T_MGW_NAME_VALUE_PAIR
      !IO_TECH_REQUEST_CONTEXT type ref to /IWBEP/IF_MGW_REQ_ENTITY_C optional
      !IT_NAVIGATION_PATH type /IWBEP/T_MGW_NAVIGATION_PATH
      !IO_DATA_PROVIDER type ref to /IWBEP/IF_MGW_ENTRY_PROVIDER optional
    exporting
      !ER_ENTITY type ZCL_ZCAGW_SALESORDER_MPC=>TS_SALESORDER
    raising
      /IWBEP/CX_MGW_BUSI_EXCEPTION
      /IWBEP/CX_MGW_TECH_EXCEPTION .
  methods SALESORDERSET_DELETE_ENTITY
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
  methods SALESORDERSET_GET_ENTITY
    importing
      !IV_ENTITY_NAME type STRING
      !IV_ENTITY_SET_NAME type STRING
      !IV_SOURCE_NAME type STRING
      !IT_KEY_TAB type /IWBEP/T_MGW_NAME_VALUE_PAIR
      !IO_REQUEST_OBJECT type ref to /IWBEP/IF_MGW_REQ_ENTITY optional
      !IO_TECH_REQUEST_CONTEXT type ref to /IWBEP/IF_MGW_REQ_ENTITY optional
      !IT_NAVIGATION_PATH type /IWBEP/T_MGW_NAVIGATION_PATH
    exporting
      !ER_ENTITY type ZCL_ZCAGW_SALESORDER_MPC=>TS_SALESORDER
      !ES_RESPONSE_CONTEXT type /IWBEP/IF_MGW_APPL_SRV_RUNTIME=>TY_S_MGW_RESPONSE_ENTITY_CNTXT
    raising
      /IWBEP/CX_MGW_BUSI_EXCEPTION
      /IWBEP/CX_MGW_TECH_EXCEPTION .
  methods SALESORDERSET_GET_ENTITYSET
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
      !ET_ENTITYSET type ZCL_ZCAGW_SALESORDER_MPC=>TT_SALESORDER
      !ES_RESPONSE_CONTEXT type /IWBEP/IF_MGW_APPL_SRV_RUNTIME=>TY_S_MGW_RESPONSE_CONTEXT
    raising
      /IWBEP/CX_MGW_BUSI_EXCEPTION
      /IWBEP/CX_MGW_TECH_EXCEPTION .
  methods SALESORDERSET_UPDATE_ENTITY
    importing
      !IV_ENTITY_NAME type STRING
      !IV_ENTITY_SET_NAME type STRING
      !IV_SOURCE_NAME type STRING
      !IT_KEY_TAB type /IWBEP/T_MGW_NAME_VALUE_PAIR
      !IO_TECH_REQUEST_CONTEXT type ref to /IWBEP/IF_MGW_REQ_ENTITY_U optional
      !IT_NAVIGATION_PATH type /IWBEP/T_MGW_NAVIGATION_PATH
      !IO_DATA_PROVIDER type ref to /IWBEP/IF_MGW_ENTRY_PROVIDER optional
    exporting
      !ER_ENTITY type ZCL_ZCAGW_SALESORDER_MPC=>TS_SALESORDER
    raising
      /IWBEP/CX_MGW_BUSI_EXCEPTION
      /IWBEP/CX_MGW_TECH_EXCEPTION .

  methods CHECK_SUBSCRIPTION_AUTHORITY
    redefinition .
private section.
ENDCLASS.



CLASS ZCL_ZCAGW_SALESORDER_DPC IMPLEMENTATION.


  method /IWBEP/IF_MGW_APPL_SRV_RUNTIME~CREATE_ENTITY.
*&----------------------------------------------------------------------------------------------*
*&  Include           /IWBEP/DPC_TEMP_CRT_ENTITY_BASE
*&* This class has been generated on 2019.10.24 09:07:55 in client 400
*&*
*&*       WARNING--> NEVER MODIFY THIS CLASS <--WARNING
*&*   If you want to change the DPC implementation, use the
*&*   generated methods inside the DPC provider subclass - ZCL_ZCAGW_SALESORDER_DPC_EXT
*&-----------------------------------------------------------------------------------------------*

 DATA salesorderset_create_entity TYPE zcl_zcagw_salesorder_mpc=>ts_salesorder.
 DATA lv_entityset_name TYPE string.

lv_entityset_name = io_tech_request_context->get_entity_set_name( ).

CASE lv_entityset_name.
*-------------------------------------------------------------------------*
*             EntitySet -  salesorderSet
*-------------------------------------------------------------------------*
     WHEN 'salesorderSet'.
*     Call the entity set generated method
    salesorderset_create_entity(
         EXPORTING iv_entity_name     = iv_entity_name
                   iv_entity_set_name = iv_entity_set_name
                   iv_source_name     = iv_source_name
                   io_data_provider   = io_data_provider
                   it_key_tab         = it_key_tab
                   it_navigation_path = it_navigation_path
                   io_tech_request_context = io_tech_request_context
       	 IMPORTING er_entity          = salesorderset_create_entity
    ).
*     Send specific entity data to the caller interfaces
    copy_data_to_ref(
      EXPORTING
        is_data = salesorderset_create_entity
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
*&* This class has been generated on 2019.10.24 09:07:55 in client 400
*&*
*&*       WARNING--> NEVER MODIFY THIS CLASS <--WARNING
*&*   If you want to change the DPC implementation, use the
*&*   generated methods inside the DPC provider subclass - ZCL_ZCAGW_SALESORDER_DPC_EXT
*&-----------------------------------------------------------------------------------------------*

 DATA lv_entityset_name TYPE string.

lv_entityset_name = io_tech_request_context->get_entity_set_name( ).

CASE lv_entityset_name.
*-------------------------------------------------------------------------*
*             EntitySet -  salesorderSet
*-------------------------------------------------------------------------*
      when 'salesorderSet'.
*     Call the entity set generated method
     salesorderset_delete_entity(
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
*&* This class has been generated  on 2019.10.24 09:07:55 in client 400
*&*
*&*       WARNING--> NEVER MODIFY THIS CLASS <--WARNING
*&*   If you want to change the DPC implementation, use the
*&*   generated methods inside the DPC provider subclass - ZCL_ZCAGW_SALESORDER_DPC_EXT
*&-----------------------------------------------------------------------------------------------*

 DATA salesorderset_get_entity TYPE zcl_zcagw_salesorder_mpc=>ts_salesorder.
 DATA lv_entityset_name TYPE string.
 DATA lr_entity TYPE REF TO data.       "#EC NEEDED

lv_entityset_name = io_tech_request_context->get_entity_set_name( ).

CASE lv_entityset_name.
*-------------------------------------------------------------------------*
*             EntitySet -  salesorderSet
*-------------------------------------------------------------------------*
      WHEN 'salesorderSet'.
*     Call the entity set generated method
          salesorderset_get_entity(
               EXPORTING iv_entity_name     = iv_entity_name
                         iv_entity_set_name = iv_entity_set_name
                         iv_source_name     = iv_source_name
                         it_key_tab         = it_key_tab
                         it_navigation_path = it_navigation_path
                         io_tech_request_context = io_tech_request_context
             	 IMPORTING er_entity          = salesorderset_get_entity
                         es_response_context = es_response_context
          ).

        IF salesorderset_get_entity IS NOT INITIAL.
*     Send specific entity data to the caller interface
          copy_data_to_ref(
            EXPORTING
              is_data = salesorderset_get_entity
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
*&* This class has been generated on 2019.10.24 09:07:55 in client 400
*&*
*&*       WARNING--> NEVER MODIFY THIS CLASS <--WARNING
*&*   If you want to change the DPC implementation, use the
*&*   generated methods inside the DPC provider subclass - ZCL_ZCAGW_SALESORDER_DPC_EXT
*&-----------------------------------------------------------------------------------------------*
 DATA salesorderset_get_entityset TYPE zcl_zcagw_salesorder_mpc=>tt_salesorder.
 DATA lv_entityset_name TYPE string.

lv_entityset_name = io_tech_request_context->get_entity_set_name( ).

CASE lv_entityset_name.
*-------------------------------------------------------------------------*
*             EntitySet -  salesorderSet
*-------------------------------------------------------------------------*
   WHEN 'salesorderSet'.
*     Call the entity set generated method
      salesorderset_get_entityset(
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
         et_entityset = salesorderset_get_entityset
         es_response_context = es_response_context
       ).
*     Send specific entity data to the caller interface
      copy_data_to_ref(
        EXPORTING
          is_data = salesorderset_get_entityset
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
*&* This class has been generated on 2019.10.24 09:07:55 in client 400
*&*
*&*       WARNING--> NEVER MODIFY THIS CLASS <--WARNING
*&*   If you want to change the DPC implementation, use the
*&*   generated methods inside the DPC provider subclass - ZCL_ZCAGW_SALESORDER_DPC_EXT
*&-----------------------------------------------------------------------------------------------*

 DATA salesorderset_update_entity TYPE zcl_zcagw_salesorder_mpc=>ts_salesorder.
 DATA lv_entityset_name TYPE string.
 DATA lr_entity TYPE REF TO data. "#EC NEEDED

lv_entityset_name = io_tech_request_context->get_entity_set_name( ).

CASE lv_entityset_name.
*-------------------------------------------------------------------------*
*             EntitySet -  salesorderSet
*-------------------------------------------------------------------------*
      WHEN 'salesorderSet'.
*     Call the entity set generated method
          salesorderset_update_entity(
               EXPORTING iv_entity_name     = iv_entity_name
                         iv_entity_set_name = iv_entity_set_name
                         iv_source_name     = iv_source_name
                         io_data_provider   = io_data_provider
                         it_key_tab         = it_key_tab
                         it_navigation_path = it_navigation_path
                         io_tech_request_context = io_tech_request_context
             	 IMPORTING er_entity          = salesorderset_update_entity
          ).
       IF salesorderset_update_entity IS NOT INITIAL.
*     Send specific entity data to the caller interface
          copy_data_to_ref(
            EXPORTING
              is_data = salesorderset_update_entity
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


  method SALESORDERSET_CREATE_ENTITY.
*-------------------------------------------------------------
*  Data declaration
*-------------------------------------------------------------
 DATA i_customer TYPE zif_zca_salesorder_create6=>kunnr.
 DATA i_reqdat TYPE zif_zca_salesorder_create6=>edatu_vbak.
 DATA i_vbeln TYPE zif_zca_salesorder_create6=>vbeln_va.
 DATA it_orderitems  TYPE zif_zca_salesorder_create6=>zca_in_salesorder_tt.
 DATA t_return  TYPE zif_zca_salesorder_create6=>__bapiret2.
 DATA ls_it_orderitems  TYPE LINE OF zif_zca_salesorder_create6=>zca_in_salesorder_tt.
 DATA ls_t_return  TYPE LINE OF zif_zca_salesorder_create6=>__bapiret2.
 DATA lv_rfc_name TYPE tfdir-funcname.
 DATA lv_destination TYPE rfcdest.
 DATA lv_subrc TYPE syst-subrc.
 DATA lv_exc_msg TYPE /iwbep/mgw_bop_rfc_excep_text.
 DATA lx_root TYPE REF TO cx_root.
DATA ls_request_input_data TYPE zcl_zcagw_salesorder_mpc=>ts_salesorder.
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
       i_vbeln = ls_request_input_data-sd_doc.
       i_reqdat = ls_request_input_data-req_date.
       i_customer = ls_request_input_data-sold_to.
       ls_it_orderitems-itm_number = ls_request_input_data-itm_number.
       ls_it_orderitems-material = ls_request_input_data-material.
       ls_it_orderitems-req_qty = ls_request_input_data-req_qty.
       ls_it_orderitems-plant = ls_request_input_data-plant.
       ls_it_orderitems-store_loc = ls_request_input_data-store_loc.

* Append lines of table parameters in the function call
  IF ls_it_orderitems IS NOT INITIAL.
    APPEND ls_it_orderitems TO it_orderitems.
  ENDIF.

* Get RFC destination
lo_dp_facade = /iwbep/if_mgw_conv_srv_runtime~get_dp_facade( ).
lv_destination = /iwbep/cl_sb_gen_dpc_rt_util=>get_rfc_destination( io_dp_facade = lo_dp_facade ).

*-------------------------------------------------------------
*  Call RFC function module
*-------------------------------------------------------------
lv_rfc_name = 'ZCA_SALESORDER_CREATE'.

IF lv_destination IS INITIAL OR lv_destination EQ 'NONE'.

  TRY.
      CALL FUNCTION lv_rfc_name
        EXPORTING
          i_vbeln         =   i_vbeln
          it_orderitems   =   it_orderitems
          i_reqdat        =   i_reqdat
          i_customer      =   i_customer
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
          i_vbeln         =   i_vbeln
          it_orderitems   =   it_orderitems
          i_reqdat        =   i_reqdat
          i_customer      =   i_customer
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

READ TABLE it_orderitems INTO ls_it_orderitems INDEX 1.
* Create key table for the read operation

        ls_key-name = 'SD_DOC'.
        ls_key-value = i_vbeln.
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


  method SALESORDERSET_DELETE_ENTITY.
  RAISE EXCEPTION TYPE /iwbep/cx_mgw_not_impl_exc
    EXPORTING
      textid = /iwbep/cx_mgw_not_impl_exc=>method_not_implemented
      method = 'SALESORDERSET_DELETE_ENTITY'.
  endmethod.


  method SALESORDERSET_GET_ENTITY.
*-------------------------------------------------------------
*  Data declaration
*-------------------------------------------------------------
 DATA i_vbeln TYPE zif_zca_salesorder_getlist7=>vbeln.
 DATA et_so_list  TYPE zif_zca_salesorder_getlist7=>zca_salesorder_tt.
 DATA ls_et_so_list  TYPE LINE OF zif_zca_salesorder_getlist7=>zca_salesorder_tt.
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

    IF lv_source_entity_set_name = 'salesorderSet' AND
       lv_source_entity_set_name NE io_tech_request_context->get_entity_set_name( ).

      io_tech_request_context->get_converted_source_keys(
      IMPORTING es_key_values = ls_converted_keys ).

    ENDIF.

       i_vbeln = ls_converted_keys-sd_doc.
* Get RFC destination
lo_dp_facade = /iwbep/if_mgw_conv_srv_runtime~get_dp_facade( ).
lv_destination = /iwbep/cl_sb_gen_dpc_rt_util=>get_rfc_destination( io_dp_facade = lo_dp_facade ).

*-------------------------------------------------------------
*  Call RFC function module
*-------------------------------------------------------------
lv_rfc_name = 'ZCA_SALESORDER_GETLIST'.

IF lv_destination IS INITIAL OR lv_destination EQ 'NONE'.

  TRY.
      CALL FUNCTION lv_rfc_name
        EXPORTING
          i_vbeln   =   i_vbeln
        IMPORTING
          et_so_list   =   et_so_list
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
          i_vbeln   =   i_vbeln
        IMPORTING
          et_so_list   =   et_so_list
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

        READ TABLE et_so_list INTO ls_et_so_list INDEX 1.
      er_entity-mandt = ls_et_so_list-mandt.
      er_entity-sd_doc = ls_et_so_list-sd_doc.
      er_entity-itm_number = ls_et_so_list-itm_number.
      er_entity-material = ls_et_so_list-material.
      er_entity-short_text = ls_et_so_list-short_text.
      er_entity-doc_type = ls_et_so_list-doc_type.
      er_entity-doc_date = ls_et_so_list-doc_date.
      er_entity-req_qty = ls_et_so_list-req_qty.
      er_entity-req_date = ls_et_so_list-req_date.
      er_entity-purch_no = ls_et_so_list-purch_no.
      er_entity-valid_from = ls_et_so_list-valid_from.
      er_entity-valid_to = ls_et_so_list-valid_to.
      er_entity-bill_block = ls_et_so_list-bill_block.
      er_entity-dlv_block = ls_et_so_list-dlv_block.
      er_entity-sold_to = ls_et_so_list-sold_to.
      er_entity-name = ls_et_so_list-name.
      er_entity-exchg_rate = ls_et_so_list-exchg_rate.
      er_entity-dlv_qty = ls_et_so_list-dlv_qty.
      er_entity-base_uom = ls_et_so_list-base_uom.
      er_entity-net_price = ls_et_so_list-net_price.
      er_entity-cond_p_unt = ls_et_so_list-cond_p_unt.
      er_entity-cond_unit = ls_et_so_list-cond_unit.
      er_entity-net_value = ls_et_so_list-net_value.
      er_entity-division = ls_et_so_list-division.
      er_entity-doc_status = ls_et_so_list-doc_status.
      er_entity-sales_org = ls_et_so_list-sales_org.
      er_entity-sales_unit = ls_et_so_list-sales_unit.
      er_entity-ship_point = ls_et_so_list-ship_point.
      er_entity-distr_chan = ls_et_so_list-distr_chan.
      er_entity-gi_date = ls_et_so_list-gi_date.
      er_entity-currency = ls_et_so_list-currency.
      er_entity-plant = ls_et_so_list-plant.
      er_entity-store_loc = ls_et_so_list-store_loc.
      er_entity-ord_reason = ls_et_so_list-ord_reason.
      er_entity-reason_rej = ls_et_so_list-reason_rej.
      er_entity-b_uom_iso = ls_et_so_list-b_uom_iso.
      er_entity-cd_unt_iso = ls_et_so_list-cd_unt_iso.
      er_entity-s_unit_iso = ls_et_so_list-s_unit_iso.
      er_entity-curr_iso = ls_et_so_list-curr_iso.
      er_entity-purch_no_c = ls_et_so_list-purch_no_c.
  endmethod.


  method SALESORDERSET_GET_ENTITYSET.
  RAISE EXCEPTION TYPE /iwbep/cx_mgw_not_impl_exc
    EXPORTING
      textid = /iwbep/cx_mgw_not_impl_exc=>method_not_implemented
      method = 'SALESORDERSET_GET_ENTITYSET'.
  endmethod.


  method SALESORDERSET_UPDATE_ENTITY.
  RAISE EXCEPTION TYPE /iwbep/cx_mgw_not_impl_exc
    EXPORTING
      textid = /iwbep/cx_mgw_not_impl_exc=>method_not_implemented
      method = 'SALESORDERSET_UPDATE_ENTITY'.
  endmethod.
ENDCLASS.
