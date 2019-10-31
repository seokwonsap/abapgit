class ZCL_ZCAGW_BL_DPC definition
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

  methods BILLINGSET_CREATE_ENTITY
    importing
      !IV_ENTITY_NAME type STRING
      !IV_ENTITY_SET_NAME type STRING
      !IV_SOURCE_NAME type STRING
      !IT_KEY_TAB type /IWBEP/T_MGW_NAME_VALUE_PAIR
      !IO_TECH_REQUEST_CONTEXT type ref to /IWBEP/IF_MGW_REQ_ENTITY_C optional
      !IT_NAVIGATION_PATH type /IWBEP/T_MGW_NAVIGATION_PATH
      !IO_DATA_PROVIDER type ref to /IWBEP/IF_MGW_ENTRY_PROVIDER optional
    exporting
      !ER_ENTITY type ZCL_ZCAGW_BL_MPC=>TS_BILLING
    raising
      /IWBEP/CX_MGW_BUSI_EXCEPTION
      /IWBEP/CX_MGW_TECH_EXCEPTION .
  methods BILLINGSET_DELETE_ENTITY
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
  methods BILLINGSET_GET_ENTITY
    importing
      !IV_ENTITY_NAME type STRING
      !IV_ENTITY_SET_NAME type STRING
      !IV_SOURCE_NAME type STRING
      !IT_KEY_TAB type /IWBEP/T_MGW_NAME_VALUE_PAIR
      !IO_REQUEST_OBJECT type ref to /IWBEP/IF_MGW_REQ_ENTITY optional
      !IO_TECH_REQUEST_CONTEXT type ref to /IWBEP/IF_MGW_REQ_ENTITY optional
      !IT_NAVIGATION_PATH type /IWBEP/T_MGW_NAVIGATION_PATH
    exporting
      !ER_ENTITY type ZCL_ZCAGW_BL_MPC=>TS_BILLING
      !ES_RESPONSE_CONTEXT type /IWBEP/IF_MGW_APPL_SRV_RUNTIME=>TY_S_MGW_RESPONSE_ENTITY_CNTXT
    raising
      /IWBEP/CX_MGW_BUSI_EXCEPTION
      /IWBEP/CX_MGW_TECH_EXCEPTION .
  methods BILLINGSET_GET_ENTITYSET
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
      !ET_ENTITYSET type ZCL_ZCAGW_BL_MPC=>TT_BILLING
      !ES_RESPONSE_CONTEXT type /IWBEP/IF_MGW_APPL_SRV_RUNTIME=>TY_S_MGW_RESPONSE_CONTEXT
    raising
      /IWBEP/CX_MGW_BUSI_EXCEPTION
      /IWBEP/CX_MGW_TECH_EXCEPTION .
  methods BILLINGSET_UPDATE_ENTITY
    importing
      !IV_ENTITY_NAME type STRING
      !IV_ENTITY_SET_NAME type STRING
      !IV_SOURCE_NAME type STRING
      !IT_KEY_TAB type /IWBEP/T_MGW_NAME_VALUE_PAIR
      !IO_TECH_REQUEST_CONTEXT type ref to /IWBEP/IF_MGW_REQ_ENTITY_U optional
      !IT_NAVIGATION_PATH type /IWBEP/T_MGW_NAVIGATION_PATH
      !IO_DATA_PROVIDER type ref to /IWBEP/IF_MGW_ENTRY_PROVIDER optional
    exporting
      !ER_ENTITY type ZCL_ZCAGW_BL_MPC=>TS_BILLING
    raising
      /IWBEP/CX_MGW_BUSI_EXCEPTION
      /IWBEP/CX_MGW_TECH_EXCEPTION .

  methods CHECK_SUBSCRIPTION_AUTHORITY
    redefinition .
private section.
ENDCLASS.



CLASS ZCL_ZCAGW_BL_DPC IMPLEMENTATION.


  method /IWBEP/IF_MGW_APPL_SRV_RUNTIME~CREATE_ENTITY.
*&----------------------------------------------------------------------------------------------*
*&  Include           /IWBEP/DPC_TEMP_CRT_ENTITY_BASE
*&* This class has been generated on 2019.10.31 10:28:19 in client 400
*&*
*&*       WARNING--> NEVER MODIFY THIS CLASS <--WARNING
*&*   If you want to change the DPC implementation, use the
*&*   generated methods inside the DPC provider subclass - ZCL_ZCAGW_BL_DPC_EXT
*&-----------------------------------------------------------------------------------------------*

 DATA billingset_create_entity TYPE zcl_zcagw_bl_mpc=>ts_billing.
 DATA lv_entityset_name TYPE string.

lv_entityset_name = io_tech_request_context->get_entity_set_name( ).

CASE lv_entityset_name.
*-------------------------------------------------------------------------*
*             EntitySet -  BillingSet
*-------------------------------------------------------------------------*
     WHEN 'BillingSet'.
*     Call the entity set generated method
    billingset_create_entity(
         EXPORTING iv_entity_name     = iv_entity_name
                   iv_entity_set_name = iv_entity_set_name
                   iv_source_name     = iv_source_name
                   io_data_provider   = io_data_provider
                   it_key_tab         = it_key_tab
                   it_navigation_path = it_navigation_path
                   io_tech_request_context = io_tech_request_context
       	 IMPORTING er_entity          = billingset_create_entity
    ).
*     Send specific entity data to the caller interfaces
    copy_data_to_ref(
      EXPORTING
        is_data = billingset_create_entity
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
*&* This class has been generated on 2019.10.31 10:28:19 in client 400
*&*
*&*       WARNING--> NEVER MODIFY THIS CLASS <--WARNING
*&*   If you want to change the DPC implementation, use the
*&*   generated methods inside the DPC provider subclass - ZCL_ZCAGW_BL_DPC_EXT
*&-----------------------------------------------------------------------------------------------*

 DATA lv_entityset_name TYPE string.

lv_entityset_name = io_tech_request_context->get_entity_set_name( ).

CASE lv_entityset_name.
*-------------------------------------------------------------------------*
*             EntitySet -  BillingSet
*-------------------------------------------------------------------------*
      when 'BillingSet'.
*     Call the entity set generated method
     billingset_delete_entity(
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
*&* This class has been generated  on 2019.10.31 10:28:19 in client 400
*&*
*&*       WARNING--> NEVER MODIFY THIS CLASS <--WARNING
*&*   If you want to change the DPC implementation, use the
*&*   generated methods inside the DPC provider subclass - ZCL_ZCAGW_BL_DPC_EXT
*&-----------------------------------------------------------------------------------------------*

 DATA billingset_get_entity TYPE zcl_zcagw_bl_mpc=>ts_billing.
 DATA lv_entityset_name TYPE string.
 DATA lr_entity TYPE REF TO data.       "#EC NEEDED

lv_entityset_name = io_tech_request_context->get_entity_set_name( ).

CASE lv_entityset_name.
*-------------------------------------------------------------------------*
*             EntitySet -  BillingSet
*-------------------------------------------------------------------------*
      WHEN 'BillingSet'.
*     Call the entity set generated method
          billingset_get_entity(
               EXPORTING iv_entity_name     = iv_entity_name
                         iv_entity_set_name = iv_entity_set_name
                         iv_source_name     = iv_source_name
                         it_key_tab         = it_key_tab
                         it_navigation_path = it_navigation_path
                         io_tech_request_context = io_tech_request_context
             	 IMPORTING er_entity          = billingset_get_entity
                         es_response_context = es_response_context
          ).

        IF billingset_get_entity IS NOT INITIAL.
*     Send specific entity data to the caller interface
          copy_data_to_ref(
            EXPORTING
              is_data = billingset_get_entity
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
*&* This class has been generated on 2019.10.31 10:28:19 in client 400
*&*
*&*       WARNING--> NEVER MODIFY THIS CLASS <--WARNING
*&*   If you want to change the DPC implementation, use the
*&*   generated methods inside the DPC provider subclass - ZCL_ZCAGW_BL_DPC_EXT
*&-----------------------------------------------------------------------------------------------*
 DATA billingset_get_entityset TYPE zcl_zcagw_bl_mpc=>tt_billing.
 DATA lv_entityset_name TYPE string.

lv_entityset_name = io_tech_request_context->get_entity_set_name( ).

CASE lv_entityset_name.
*-------------------------------------------------------------------------*
*             EntitySet -  BillingSet
*-------------------------------------------------------------------------*
   WHEN 'BillingSet'.
*     Call the entity set generated method
      billingset_get_entityset(
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
         et_entityset = billingset_get_entityset
         es_response_context = es_response_context
       ).
*     Send specific entity data to the caller interface
      copy_data_to_ref(
        EXPORTING
          is_data = billingset_get_entityset
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
*&* This class has been generated on 2019.10.31 10:28:19 in client 400
*&*
*&*       WARNING--> NEVER MODIFY THIS CLASS <--WARNING
*&*   If you want to change the DPC implementation, use the
*&*   generated methods inside the DPC provider subclass - ZCL_ZCAGW_BL_DPC_EXT
*&-----------------------------------------------------------------------------------------------*

 DATA billingset_update_entity TYPE zcl_zcagw_bl_mpc=>ts_billing.
 DATA lv_entityset_name TYPE string.
 DATA lr_entity TYPE REF TO data. "#EC NEEDED

lv_entityset_name = io_tech_request_context->get_entity_set_name( ).

CASE lv_entityset_name.
*-------------------------------------------------------------------------*
*             EntitySet -  BillingSet
*-------------------------------------------------------------------------*
      WHEN 'BillingSet'.
*     Call the entity set generated method
          billingset_update_entity(
               EXPORTING iv_entity_name     = iv_entity_name
                         iv_entity_set_name = iv_entity_set_name
                         iv_source_name     = iv_source_name
                         io_data_provider   = io_data_provider
                         it_key_tab         = it_key_tab
                         it_navigation_path = it_navigation_path
                         io_tech_request_context = io_tech_request_context
             	 IMPORTING er_entity          = billingset_update_entity
          ).
       IF billingset_update_entity IS NOT INITIAL.
*     Send specific entity data to the caller interface
          copy_data_to_ref(
            EXPORTING
              is_data = billingset_update_entity
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


  method BILLINGSET_CREATE_ENTITY.
*-------------------------------------------------------------
*  Data declaration
*-------------------------------------------------------------
 DATA i_delivery TYPE zif_zca_billingdoc_create=>vbeln.
 DATA i_itmnum TYPE zif_zca_billingdoc_create=>posnr.
 DATA t_return  TYPE zif_zca_billingdoc_create=>__bapiret1.
 DATA ls_t_return  TYPE LINE OF zif_zca_billingdoc_create=>__bapiret1.
 DATA lv_rfc_name TYPE tfdir-funcname.
 DATA lv_destination TYPE rfcdest.
 DATA lv_subrc TYPE syst-subrc.
 DATA lv_exc_msg TYPE /iwbep/mgw_bop_rfc_excep_text.
 DATA lx_root TYPE REF TO cx_root.
DATA ls_request_input_data TYPE zcl_zcagw_bl_mpc=>ts_billing.
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
       i_itmnum = ls_request_input_data-bl_num.
       i_delivery = ls_request_input_data-bl_doc.

* Get RFC destination
lo_dp_facade = /iwbep/if_mgw_conv_srv_runtime~get_dp_facade( ).
lv_destination = /iwbep/cl_sb_gen_dpc_rt_util=>get_rfc_destination( io_dp_facade = lo_dp_facade ).

*-------------------------------------------------------------
*  Call RFC function module
*-------------------------------------------------------------
lv_rfc_name = 'ZCA_BILLINGDOC_CREATE'.

IF lv_destination IS INITIAL OR lv_destination EQ 'NONE'.

  TRY.
      CALL FUNCTION lv_rfc_name
        EXPORTING
          i_itmnum     =   i_itmnum
          i_delivery   =   i_delivery
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
          i_itmnum     =   i_itmnum
          i_delivery   =   i_delivery
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

        ls_key-name = 'BL_NUM'.
        ls_key-value = i_itmnum.
         IF ls_key-value IS NOT INITIAL.
         APPEND ls_key TO lt_keys.
         ENDIF.

        ls_key-name = 'BL_DOC'.
        ls_key-value = i_delivery.
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


  method BILLINGSET_DELETE_ENTITY.
  RAISE EXCEPTION TYPE /iwbep/cx_mgw_not_impl_exc
    EXPORTING
      textid = /iwbep/cx_mgw_not_impl_exc=>method_not_implemented
      method = 'BILLINGSET_DELETE_ENTITY'.
  endmethod.


  method BILLINGSET_GET_ENTITY.
*-------------------------------------------------------------
*  Data declaration
*-------------------------------------------------------------
 DATA i_bldoc TYPE zif_zca_billingdoc_getlist=>vbeln.
 DATA i_itmnum TYPE zif_zca_billingdoc_getlist=>posnr.
 DATA et_billingdoc  TYPE zif_zca_billingdoc_getlist=>zca_billingdoc_tt.
 DATA ls_et_billingdoc  TYPE LINE OF zif_zca_billingdoc_getlist=>zca_billingdoc_tt.
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

    IF lv_source_entity_set_name = 'BillingSet' AND
       lv_source_entity_set_name NE io_tech_request_context->get_entity_set_name( ).

      io_tech_request_context->get_converted_source_keys(
      IMPORTING es_key_values = ls_converted_keys ).

    ENDIF.

       i_bldoc = ls_converted_keys-bl_doc.
       i_itmnum = ls_converted_keys-bl_num.
* Get RFC destination
lo_dp_facade = /iwbep/if_mgw_conv_srv_runtime~get_dp_facade( ).
lv_destination = /iwbep/cl_sb_gen_dpc_rt_util=>get_rfc_destination( io_dp_facade = lo_dp_facade ).

*-------------------------------------------------------------
*  Call RFC function module
*-------------------------------------------------------------
lv_rfc_name = 'ZCA_BILLINGDOC_GETLIST'.

IF lv_destination IS INITIAL OR lv_destination EQ 'NONE'.

  TRY.
      CALL FUNCTION lv_rfc_name
        EXPORTING
          i_bldoc    =   i_bldoc
          i_itmnum   =   i_itmnum
        IMPORTING
          et_billingdoc   =   et_billingdoc
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
          i_bldoc    =   i_bldoc
          i_itmnum   =   i_itmnum
        IMPORTING
          et_billingdoc   =   et_billingdoc
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

        READ TABLE et_billingdoc INTO ls_et_billingdoc INDEX 1.
      er_entity-mandt = ls_et_billingdoc-mandt.
      er_entity-bl_doc = ls_et_billingdoc-bl_doc.
      er_entity-bl_num = ls_et_billingdoc-bl_num.
      er_entity-dl_doc = ls_et_billingdoc-dl_doc.
      er_entity-dl_num = ls_et_billingdoc-dl_num.
      er_entity-sd_doc = ls_et_billingdoc-sd_doc.
      er_entity-sd_num = ls_et_billingdoc-sd_num.
      er_entity-bill_type = ls_et_billingdoc-bill_type.
      er_entity-doc_date = ls_et_billingdoc-doc_date.
      er_entity-bill_date = ls_et_billingdoc-bill_date.
      er_entity-company = ls_et_billingdoc-company.
      er_entity-sales_org = ls_et_billingdoc-sales_org.
      er_entity-dist_chn = ls_et_billingdoc-dist_chn.
      er_entity-payer = ls_et_billingdoc-payer.
      er_entity-sold_to = ls_et_billingdoc-sold_to.
      er_entity-matnr = ls_et_billingdoc-matnr.
      er_entity-description = ls_et_billingdoc-description.
      er_entity-aqty = ls_et_billingdoc-aqty.
      er_entity-unit = ls_et_billingdoc-unit.
      er_entity-netvalue = ls_et_billingdoc-netvalue.
      er_entity-itmvalue = ls_et_billingdoc-itmvalue.
      er_entity-currency = ls_et_billingdoc-currency.
      er_entity-oall_status = ls_et_billingdoc-oall_status.
      er_entity-invc_status = ls_et_billingdoc-invc_status.
      er_entity-country = ls_et_billingdoc-country.
      er_entity-region = ls_et_billingdoc-region.
  endmethod.


  method BILLINGSET_GET_ENTITYSET.
*-------------------------------------------------------------
*  Data declaration
*-------------------------------------------------------------
 DATA i_bldoc TYPE zif_zca_billingdoc_getlist=>vbeln.
 DATA i_company TYPE zif_zca_billingdoc_getlist=>bukrs.
 DATA i_dldoc TYPE zif_zca_billingdoc_getlist=>vbeln.
 DATA i_docdate TYPE zif_zca_billingdoc_getlist=>zca_docdate_wa.
 DATA i_invcstatus TYPE zif_zca_billingdoc_getlist=>relik.
 DATA i_itmnum TYPE zif_zca_billingdoc_getlist=>posnr.
 DATA i_material TYPE zif_zca_billingdoc_getlist=>matnr.
 DATA i_oallstatus TYPE zif_zca_billingdoc_getlist=>gbstk.
 DATA i_payer TYPE zif_zca_billingdoc_getlist=>kunrg.
 DATA i_salesorg TYPE zif_zca_billingdoc_getlist=>vkorg.
 DATA i_sddoc TYPE zif_zca_billingdoc_getlist=>vbeln.
 DATA i_soldto TYPE zif_zca_billingdoc_getlist=>kunag.
 DATA et_billingdoc  TYPE zif_zca_billingdoc_getlist=>zca_billingdoc_tt.
 DATA ls_et_billingdoc  TYPE LINE OF zif_zca_billingdoc_getlist=>zca_billingdoc_tt.
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
DATA lr_bl_doc LIKE RANGE OF ls_converted_keys-bl_doc.
DATA ls_bl_doc LIKE LINE OF lr_bl_doc.
DATA lr_bl_num LIKE RANGE OF ls_converted_keys-bl_num.
DATA ls_bl_num LIKE LINE OF lr_bl_num.
DATA lr_dl_doc LIKE RANGE OF ls_converted_keys-dl_doc.
DATA ls_dl_doc LIKE LINE OF lr_dl_doc.
DATA lr_sd_doc LIKE RANGE OF ls_converted_keys-sd_doc.
DATA ls_sd_doc LIKE LINE OF lr_sd_doc.
DATA lr_sold_to LIKE RANGE OF ls_converted_keys-sold_to.
DATA ls_sold_to LIKE LINE OF lr_sold_to.
DATA lr_payer LIKE RANGE OF ls_converted_keys-payer.
DATA ls_payer LIKE LINE OF lr_payer.
DATA lr_matnr LIKE RANGE OF ls_converted_keys-matnr.
DATA ls_matnr LIKE LINE OF lr_matnr.
DATA lr_invc_status LIKE RANGE OF ls_converted_keys-invc_status.
DATA ls_invc_status LIKE LINE OF lr_invc_status.
DATA lr_sales_org LIKE RANGE OF ls_converted_keys-sales_org.
DATA ls_sales_org LIKE LINE OF lr_sales_org.
DATA lr_company LIKE RANGE OF ls_converted_keys-company.
DATA ls_company LIKE LINE OF lr_company.
DATA lr_oall_status LIKE RANGE OF ls_converted_keys-oall_status.
DATA ls_oall_status LIKE LINE OF lr_oall_status.
DATA lr_doc_date LIKE RANGE OF ls_converted_keys-doc_date.
DATA ls_doc_date LIKE LINE OF lr_doc_date.
DATA lo_dp_facade TYPE REF TO /iwbep/if_mgw_dp_facade.
DATA ls_gw_et_billingdoc LIKE LINE OF et_entityset.
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
      WHEN 'BL_DOC'.
        lo_filter->convert_select_option(
          EXPORTING
            is_select_option = ls_filter
          IMPORTING
            et_select_option = lr_bl_doc ).

        READ TABLE lr_bl_doc INTO ls_bl_doc INDEX 1.
        IF sy-subrc = 0.
          i_bldoc = ls_bl_doc-low.
        ENDIF.
      WHEN 'BL_NUM'.
        lo_filter->convert_select_option(
          EXPORTING
            is_select_option = ls_filter
          IMPORTING
            et_select_option = lr_bl_num ).

        READ TABLE lr_bl_num INTO ls_bl_num INDEX 1.
        IF sy-subrc = 0.
          i_itmnum = ls_bl_num-low.
        ENDIF.
      WHEN 'DL_DOC'.
        lo_filter->convert_select_option(
          EXPORTING
            is_select_option = ls_filter
          IMPORTING
            et_select_option = lr_dl_doc ).

        READ TABLE lr_dl_doc INTO ls_dl_doc INDEX 1.
        IF sy-subrc = 0.
          i_dldoc = ls_dl_doc-low.
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
      WHEN 'SOLD_TO'.
        lo_filter->convert_select_option(
          EXPORTING
            is_select_option = ls_filter
          IMPORTING
            et_select_option = lr_sold_to ).

        READ TABLE lr_sold_to INTO ls_sold_to INDEX 1.
        IF sy-subrc = 0.
          i_soldto = ls_sold_to-low.
        ENDIF.
      WHEN 'PAYER'.
        lo_filter->convert_select_option(
          EXPORTING
            is_select_option = ls_filter
          IMPORTING
            et_select_option = lr_payer ).

        READ TABLE lr_payer INTO ls_payer INDEX 1.
        IF sy-subrc = 0.
          i_payer = ls_payer-low.
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
      WHEN 'INVC_STATUS'.
        lo_filter->convert_select_option(
          EXPORTING
            is_select_option = ls_filter
          IMPORTING
            et_select_option = lr_invc_status ).

        READ TABLE lr_invc_status INTO ls_invc_status INDEX 1.
        IF sy-subrc = 0.
          i_invcstatus = ls_invc_status-low.
        ENDIF.
      WHEN 'SALES_ORG'.
        lo_filter->convert_select_option(
          EXPORTING
            is_select_option = ls_filter
          IMPORTING
            et_select_option = lr_sales_org ).

        READ TABLE lr_sales_org INTO ls_sales_org INDEX 1.
        IF sy-subrc = 0.
          i_salesorg = ls_sales_org-low.
        ENDIF.
      WHEN 'COMPANY'.
        lo_filter->convert_select_option(
          EXPORTING
            is_select_option = ls_filter
          IMPORTING
            et_select_option = lr_company ).

        READ TABLE lr_company INTO ls_company INDEX 1.
        IF sy-subrc = 0.
          i_company = ls_company-low.
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
    WHEN 'DOC_DATE'.              " Equivalent to 'DocDate' property in the service
      lo_filter->convert_select_option(
        EXPORTING
          is_select_option = ls_filter
        IMPORTING
          et_select_option = lr_doc_date ).

        LOOP AT lr_doc_date INTO ls_doc_date.
               i_docdate-sign = ls_doc_date-sign.
               i_docdate-option = ls_doc_date-option.
               i_docdate-sales_date_low = ls_doc_date-low.
               i_docdate-sales_date_high = ls_doc_date-high.
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
lv_rfc_name = 'ZCA_BILLINGDOC_GETLIST'.

IF lv_destination IS INITIAL OR lv_destination EQ 'NONE'.

  TRY.
      CALL FUNCTION lv_rfc_name
        EXPORTING
          i_bldoc        =   i_bldoc
          i_itmnum       =   i_itmnum
          i_dldoc        =   i_dldoc
          i_sddoc        =   i_sddoc
          i_soldto       =   i_soldto
          i_payer        =   i_payer
          i_material     =   i_material
          i_invcstatus   =   i_invcstatus
          i_salesorg     =   i_salesorg
          i_company      =   i_company
          i_oallstatus   =   i_oallstatus
          i_docdate      =   i_docdate
        IMPORTING
          et_billingdoc   =   et_billingdoc
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
          i_bldoc        =   i_bldoc
          i_itmnum       =   i_itmnum
          i_dldoc        =   i_dldoc
          i_sddoc        =   i_sddoc
          i_soldto       =   i_soldto
          i_payer        =   i_payer
          i_material     =   i_material
          i_invcstatus   =   i_invcstatus
          i_salesorg     =   i_salesorg
          i_company      =   i_company
          i_oallstatus   =   i_oallstatus
          i_docdate      =   i_docdate
        IMPORTING
          et_billingdoc   =   et_billingdoc
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
  lv_top = lines( et_billingdoc ).
ENDIF.

*  - Map properties from the backend to the Gateway output response table -

LOOP AT et_billingdoc INTO ls_et_billingdoc
*  Provide the response entries according to the Top and Skip parameters that were provided at runtime
     FROM lv_skip TO lv_top.
*  Only fields that were mapped will be delivered to the response table
 ls_gw_et_billingdoc-mandt = ls_et_billingdoc-mandt.
 ls_gw_et_billingdoc-bl_doc = ls_et_billingdoc-bl_doc.
 ls_gw_et_billingdoc-bl_num = ls_et_billingdoc-bl_num.
 ls_gw_et_billingdoc-dl_doc = ls_et_billingdoc-dl_doc.
 ls_gw_et_billingdoc-dl_num = ls_et_billingdoc-dl_num.
 ls_gw_et_billingdoc-sd_doc = ls_et_billingdoc-sd_doc.
 ls_gw_et_billingdoc-sd_num = ls_et_billingdoc-sd_num.
 ls_gw_et_billingdoc-bill_type = ls_et_billingdoc-bill_type.
 ls_gw_et_billingdoc-doc_date = ls_et_billingdoc-doc_date.
 ls_gw_et_billingdoc-bill_date = ls_et_billingdoc-bill_date.
 ls_gw_et_billingdoc-company = ls_et_billingdoc-company.
 ls_gw_et_billingdoc-sales_org = ls_et_billingdoc-sales_org.
 ls_gw_et_billingdoc-dist_chn = ls_et_billingdoc-dist_chn.
 ls_gw_et_billingdoc-payer = ls_et_billingdoc-payer.
 ls_gw_et_billingdoc-sold_to = ls_et_billingdoc-sold_to.
 ls_gw_et_billingdoc-matnr = ls_et_billingdoc-matnr.
 ls_gw_et_billingdoc-description = ls_et_billingdoc-description.
 ls_gw_et_billingdoc-aqty = ls_et_billingdoc-aqty.
 ls_gw_et_billingdoc-unit = ls_et_billingdoc-unit.
 ls_gw_et_billingdoc-netvalue = ls_et_billingdoc-netvalue.
 ls_gw_et_billingdoc-itmvalue = ls_et_billingdoc-itmvalue.
 ls_gw_et_billingdoc-currency = ls_et_billingdoc-currency.
 ls_gw_et_billingdoc-oall_status = ls_et_billingdoc-oall_status.
 ls_gw_et_billingdoc-invc_status = ls_et_billingdoc-invc_status.
 ls_gw_et_billingdoc-country = ls_et_billingdoc-country.
 ls_gw_et_billingdoc-region = ls_et_billingdoc-region.
APPEND ls_gw_et_billingdoc TO et_entityset.
CLEAR ls_gw_et_billingdoc.
ENDLOOP.

  endmethod.


  method BILLINGSET_UPDATE_ENTITY.
  RAISE EXCEPTION TYPE /iwbep/cx_mgw_not_impl_exc
    EXPORTING
      textid = /iwbep/cx_mgw_not_impl_exc=>method_not_implemented
      method = 'BILLINGSET_UPDATE_ENTITY'.
  endmethod.


  method CHECK_SUBSCRIPTION_AUTHORITY.
  RAISE EXCEPTION TYPE /iwbep/cx_mgw_not_impl_exc
    EXPORTING
      textid = /iwbep/cx_mgw_not_impl_exc=>method_not_implemented
      method = 'CHECK_SUBSCRIPTION_AUTHORITY'.
  endmethod.
ENDCLASS.
