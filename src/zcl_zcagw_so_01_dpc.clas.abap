class ZCL_ZCAGW_SO_01_DPC definition
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

  methods SALESORDERHEADER_CREATE_ENTITY
    importing
      !IV_ENTITY_NAME type STRING
      !IV_ENTITY_SET_NAME type STRING
      !IV_SOURCE_NAME type STRING
      !IT_KEY_TAB type /IWBEP/T_MGW_NAME_VALUE_PAIR
      !IO_TECH_REQUEST_CONTEXT type ref to /IWBEP/IF_MGW_REQ_ENTITY_C optional
      !IT_NAVIGATION_PATH type /IWBEP/T_MGW_NAVIGATION_PATH
      !IO_DATA_PROVIDER type ref to /IWBEP/IF_MGW_ENTRY_PROVIDER optional
    exporting
      !ER_ENTITY type ZCL_ZCAGW_SO_01_MPC=>TS_SALESORDERHEADER
    raising
      /IWBEP/CX_MGW_BUSI_EXCEPTION
      /IWBEP/CX_MGW_TECH_EXCEPTION .
  methods SALESORDERHEADER_DELETE_ENTITY
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
  methods SALESORDERHEADER_GET_ENTITY
    importing
      !IV_ENTITY_NAME type STRING
      !IV_ENTITY_SET_NAME type STRING
      !IV_SOURCE_NAME type STRING
      !IT_KEY_TAB type /IWBEP/T_MGW_NAME_VALUE_PAIR
      !IO_REQUEST_OBJECT type ref to /IWBEP/IF_MGW_REQ_ENTITY optional
      !IO_TECH_REQUEST_CONTEXT type ref to /IWBEP/IF_MGW_REQ_ENTITY optional
      !IT_NAVIGATION_PATH type /IWBEP/T_MGW_NAVIGATION_PATH
    exporting
      !ER_ENTITY type ZCL_ZCAGW_SO_01_MPC=>TS_SALESORDERHEADER
      !ES_RESPONSE_CONTEXT type /IWBEP/IF_MGW_APPL_SRV_RUNTIME=>TY_S_MGW_RESPONSE_ENTITY_CNTXT
    raising
      /IWBEP/CX_MGW_BUSI_EXCEPTION
      /IWBEP/CX_MGW_TECH_EXCEPTION .
  methods SALESORDERHEADER_GET_ENTITYSET
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
      !ET_ENTITYSET type ZCL_ZCAGW_SO_01_MPC=>TT_SALESORDERHEADER
      !ES_RESPONSE_CONTEXT type /IWBEP/IF_MGW_APPL_SRV_RUNTIME=>TY_S_MGW_RESPONSE_CONTEXT
    raising
      /IWBEP/CX_MGW_BUSI_EXCEPTION
      /IWBEP/CX_MGW_TECH_EXCEPTION .
  methods SALESORDERHEADER_UPDATE_ENTITY
    importing
      !IV_ENTITY_NAME type STRING
      !IV_ENTITY_SET_NAME type STRING
      !IV_SOURCE_NAME type STRING
      !IT_KEY_TAB type /IWBEP/T_MGW_NAME_VALUE_PAIR
      !IO_TECH_REQUEST_CONTEXT type ref to /IWBEP/IF_MGW_REQ_ENTITY_U optional
      !IT_NAVIGATION_PATH type /IWBEP/T_MGW_NAVIGATION_PATH
      !IO_DATA_PROVIDER type ref to /IWBEP/IF_MGW_ENTRY_PROVIDER optional
    exporting
      !ER_ENTITY type ZCL_ZCAGW_SO_01_MPC=>TS_SALESORDERHEADER
    raising
      /IWBEP/CX_MGW_BUSI_EXCEPTION
      /IWBEP/CX_MGW_TECH_EXCEPTION .
  methods TSALESORDERSSET_CREATE_ENTITY
    importing
      !IV_ENTITY_NAME type STRING
      !IV_ENTITY_SET_NAME type STRING
      !IV_SOURCE_NAME type STRING
      !IT_KEY_TAB type /IWBEP/T_MGW_NAME_VALUE_PAIR
      !IO_TECH_REQUEST_CONTEXT type ref to /IWBEP/IF_MGW_REQ_ENTITY_C optional
      !IT_NAVIGATION_PATH type /IWBEP/T_MGW_NAVIGATION_PATH
      !IO_DATA_PROVIDER type ref to /IWBEP/IF_MGW_ENTRY_PROVIDER optional
    exporting
      !ER_ENTITY type ZCL_ZCAGW_SO_01_MPC=>TS_TSALESORDERS
    raising
      /IWBEP/CX_MGW_BUSI_EXCEPTION
      /IWBEP/CX_MGW_TECH_EXCEPTION .
  methods TSALESORDERSSET_DELETE_ENTITY
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
  methods TSALESORDERSSET_GET_ENTITY
    importing
      !IV_ENTITY_NAME type STRING
      !IV_ENTITY_SET_NAME type STRING
      !IV_SOURCE_NAME type STRING
      !IT_KEY_TAB type /IWBEP/T_MGW_NAME_VALUE_PAIR
      !IO_REQUEST_OBJECT type ref to /IWBEP/IF_MGW_REQ_ENTITY optional
      !IO_TECH_REQUEST_CONTEXT type ref to /IWBEP/IF_MGW_REQ_ENTITY optional
      !IT_NAVIGATION_PATH type /IWBEP/T_MGW_NAVIGATION_PATH
    exporting
      !ER_ENTITY type ZCL_ZCAGW_SO_01_MPC=>TS_TSALESORDERS
      !ES_RESPONSE_CONTEXT type /IWBEP/IF_MGW_APPL_SRV_RUNTIME=>TY_S_MGW_RESPONSE_ENTITY_CNTXT
    raising
      /IWBEP/CX_MGW_BUSI_EXCEPTION
      /IWBEP/CX_MGW_TECH_EXCEPTION .
  methods TSALESORDERSSET_GET_ENTITYSET
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
      !ET_ENTITYSET type ZCL_ZCAGW_SO_01_MPC=>TT_TSALESORDERS
      !ES_RESPONSE_CONTEXT type /IWBEP/IF_MGW_APPL_SRV_RUNTIME=>TY_S_MGW_RESPONSE_CONTEXT
    raising
      /IWBEP/CX_MGW_BUSI_EXCEPTION
      /IWBEP/CX_MGW_TECH_EXCEPTION .
  methods TSALESORDERSSET_UPDATE_ENTITY
    importing
      !IV_ENTITY_NAME type STRING
      !IV_ENTITY_SET_NAME type STRING
      !IV_SOURCE_NAME type STRING
      !IT_KEY_TAB type /IWBEP/T_MGW_NAME_VALUE_PAIR
      !IO_TECH_REQUEST_CONTEXT type ref to /IWBEP/IF_MGW_REQ_ENTITY_U optional
      !IT_NAVIGATION_PATH type /IWBEP/T_MGW_NAVIGATION_PATH
      !IO_DATA_PROVIDER type ref to /IWBEP/IF_MGW_ENTRY_PROVIDER optional
    exporting
      !ER_ENTITY type ZCL_ZCAGW_SO_01_MPC=>TS_TSALESORDERS
    raising
      /IWBEP/CX_MGW_BUSI_EXCEPTION
      /IWBEP/CX_MGW_TECH_EXCEPTION .

  methods CHECK_SUBSCRIPTION_AUTHORITY
    redefinition .
private section.
ENDCLASS.



CLASS ZCL_ZCAGW_SO_01_DPC IMPLEMENTATION.


  method /IWBEP/IF_MGW_APPL_SRV_RUNTIME~CREATE_ENTITY.
*&----------------------------------------------------------------------------------------------*
*&  Include           /IWBEP/DPC_TEMP_CRT_ENTITY_BASE
*&* This class has been generated on 2019.10.17 13:37:50 in client 400
*&*
*&*       WARNING--> NEVER MODIFY THIS CLASS <--WARNING
*&*   If you want to change the DPC implementation, use the
*&*   generated methods inside the DPC provider subclass - ZCL_ZCAGW_SO_01_DPC_EXT
*&-----------------------------------------------------------------------------------------------*

 DATA salesorderheader_create_entity TYPE zcl_zcagw_so_01_mpc=>ts_salesorderheader.
 DATA tsalesordersset_create_entity TYPE zcl_zcagw_so_01_mpc=>ts_tsalesorders.
 DATA lv_entityset_name TYPE string.

lv_entityset_name = io_tech_request_context->get_entity_set_name( ).

CASE lv_entityset_name.
*-------------------------------------------------------------------------*
*             EntitySet -  SalesOrderHeaderSet
*-------------------------------------------------------------------------*
     WHEN 'SalesOrderHeaderSet'.
*     Call the entity set generated method
    salesorderheader_create_entity(
         EXPORTING iv_entity_name     = iv_entity_name
                   iv_entity_set_name = iv_entity_set_name
                   iv_source_name     = iv_source_name
                   io_data_provider   = io_data_provider
                   it_key_tab         = it_key_tab
                   it_navigation_path = it_navigation_path
                   io_tech_request_context = io_tech_request_context
       	 IMPORTING er_entity          = salesorderheader_create_entity
    ).
*     Send specific entity data to the caller interfaces
    copy_data_to_ref(
      EXPORTING
        is_data = salesorderheader_create_entity
      CHANGING
        cr_data = er_entity
   ).

*-------------------------------------------------------------------------*
*             EntitySet -  TSalesOrdersSet
*-------------------------------------------------------------------------*
     WHEN 'TSalesOrdersSet'.
*     Call the entity set generated method
    tsalesordersset_create_entity(
         EXPORTING iv_entity_name     = iv_entity_name
                   iv_entity_set_name = iv_entity_set_name
                   iv_source_name     = iv_source_name
                   io_data_provider   = io_data_provider
                   it_key_tab         = it_key_tab
                   it_navigation_path = it_navigation_path
                   io_tech_request_context = io_tech_request_context
       	 IMPORTING er_entity          = tsalesordersset_create_entity
    ).
*     Send specific entity data to the caller interfaces
    copy_data_to_ref(
      EXPORTING
        is_data = tsalesordersset_create_entity
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
*&* This class has been generated on 2019.10.17 13:37:50 in client 400
*&*
*&*       WARNING--> NEVER MODIFY THIS CLASS <--WARNING
*&*   If you want to change the DPC implementation, use the
*&*   generated methods inside the DPC provider subclass - ZCL_ZCAGW_SO_01_DPC_EXT
*&-----------------------------------------------------------------------------------------------*

 DATA lv_entityset_name TYPE string.

lv_entityset_name = io_tech_request_context->get_entity_set_name( ).

CASE lv_entityset_name.
*-------------------------------------------------------------------------*
*             EntitySet -  SalesOrderHeaderSet
*-------------------------------------------------------------------------*
      when 'SalesOrderHeaderSet'.
*     Call the entity set generated method
     salesorderheader_delete_entity(
          EXPORTING iv_entity_name     = iv_entity_name
                    iv_entity_set_name = iv_entity_set_name
                    iv_source_name     = iv_source_name
                    it_key_tab         = it_key_tab
                    it_navigation_path = it_navigation_path
                    io_tech_request_context = io_tech_request_context
     ).

*-------------------------------------------------------------------------*
*             EntitySet -  TSalesOrdersSet
*-------------------------------------------------------------------------*
      when 'TSalesOrdersSet'.
*     Call the entity set generated method
     tsalesordersset_delete_entity(
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
*&* This class has been generated  on 2019.10.17 13:37:50 in client 400
*&*
*&*       WARNING--> NEVER MODIFY THIS CLASS <--WARNING
*&*   If you want to change the DPC implementation, use the
*&*   generated methods inside the DPC provider subclass - ZCL_ZCAGW_SO_01_DPC_EXT
*&-----------------------------------------------------------------------------------------------*

 DATA salesorderheader_get_entity TYPE zcl_zcagw_so_01_mpc=>ts_salesorderheader.
 DATA tsalesordersset_get_entity TYPE zcl_zcagw_so_01_mpc=>ts_tsalesorders.
 DATA lv_entityset_name TYPE string.
 DATA lr_entity TYPE REF TO data.       "#EC NEEDED

lv_entityset_name = io_tech_request_context->get_entity_set_name( ).

CASE lv_entityset_name.
*-------------------------------------------------------------------------*
*             EntitySet -  SalesOrderHeaderSet
*-------------------------------------------------------------------------*
      WHEN 'SalesOrderHeaderSet'.
*     Call the entity set generated method
          salesorderheader_get_entity(
               EXPORTING iv_entity_name     = iv_entity_name
                         iv_entity_set_name = iv_entity_set_name
                         iv_source_name     = iv_source_name
                         it_key_tab         = it_key_tab
                         it_navigation_path = it_navigation_path
                         io_tech_request_context = io_tech_request_context
             	 IMPORTING er_entity          = salesorderheader_get_entity
                         es_response_context = es_response_context
          ).

        IF salesorderheader_get_entity IS NOT INITIAL.
*     Send specific entity data to the caller interface
          copy_data_to_ref(
            EXPORTING
              is_data = salesorderheader_get_entity
            CHANGING
              cr_data = er_entity
          ).
        ELSE.
*         In case of initial values - unbind the entity reference
          er_entity = lr_entity.
        ENDIF.
*-------------------------------------------------------------------------*
*             EntitySet -  TSalesOrdersSet
*-------------------------------------------------------------------------*
      WHEN 'TSalesOrdersSet'.
*     Call the entity set generated method
          tsalesordersset_get_entity(
               EXPORTING iv_entity_name     = iv_entity_name
                         iv_entity_set_name = iv_entity_set_name
                         iv_source_name     = iv_source_name
                         it_key_tab         = it_key_tab
                         it_navigation_path = it_navigation_path
                         io_tech_request_context = io_tech_request_context
             	 IMPORTING er_entity          = tsalesordersset_get_entity
                         es_response_context = es_response_context
          ).

        IF tsalesordersset_get_entity IS NOT INITIAL.
*     Send specific entity data to the caller interface
          copy_data_to_ref(
            EXPORTING
              is_data = tsalesordersset_get_entity
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
*&* This class has been generated on 2019.10.17 13:37:50 in client 400
*&*
*&*       WARNING--> NEVER MODIFY THIS CLASS <--WARNING
*&*   If you want to change the DPC implementation, use the
*&*   generated methods inside the DPC provider subclass - ZCL_ZCAGW_SO_01_DPC_EXT
*&-----------------------------------------------------------------------------------------------*
 DATA salesorderheader_get_entityset TYPE zcl_zcagw_so_01_mpc=>tt_salesorderheader.
 DATA tsalesordersset_get_entityset TYPE zcl_zcagw_so_01_mpc=>tt_tsalesorders.
 DATA lv_entityset_name TYPE string.

lv_entityset_name = io_tech_request_context->get_entity_set_name( ).

CASE lv_entityset_name.
*-------------------------------------------------------------------------*
*             EntitySet -  SalesOrderHeaderSet
*-------------------------------------------------------------------------*
   WHEN 'SalesOrderHeaderSet'.
*     Call the entity set generated method
      salesorderheader_get_entityset(
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
         et_entityset = salesorderheader_get_entityset
         es_response_context = es_response_context
       ).
*     Send specific entity data to the caller interface
      copy_data_to_ref(
        EXPORTING
          is_data = salesorderheader_get_entityset
        CHANGING
          cr_data = er_entityset
      ).

*-------------------------------------------------------------------------*
*             EntitySet -  TSalesOrdersSet
*-------------------------------------------------------------------------*
   WHEN 'TSalesOrdersSet'.
*     Call the entity set generated method
      tsalesordersset_get_entityset(
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
         et_entityset = tsalesordersset_get_entityset
         es_response_context = es_response_context
       ).
*     Send specific entity data to the caller interface
      copy_data_to_ref(
        EXPORTING
          is_data = tsalesordersset_get_entityset
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
*&* This class has been generated on 2019.10.17 13:37:50 in client 400
*&*
*&*       WARNING--> NEVER MODIFY THIS CLASS <--WARNING
*&*   If you want to change the DPC implementation, use the
*&*   generated methods inside the DPC provider subclass - ZCL_ZCAGW_SO_01_DPC_EXT
*&-----------------------------------------------------------------------------------------------*

 DATA salesorderheader_update_entity TYPE zcl_zcagw_so_01_mpc=>ts_salesorderheader.
 DATA tsalesordersset_update_entity TYPE zcl_zcagw_so_01_mpc=>ts_tsalesorders.
 DATA lv_entityset_name TYPE string.
 DATA lr_entity TYPE REF TO data. "#EC NEEDED

lv_entityset_name = io_tech_request_context->get_entity_set_name( ).

CASE lv_entityset_name.
*-------------------------------------------------------------------------*
*             EntitySet -  SalesOrderHeaderSet
*-------------------------------------------------------------------------*
      WHEN 'SalesOrderHeaderSet'.
*     Call the entity set generated method
          salesorderheader_update_entity(
               EXPORTING iv_entity_name     = iv_entity_name
                         iv_entity_set_name = iv_entity_set_name
                         iv_source_name     = iv_source_name
                         io_data_provider   = io_data_provider
                         it_key_tab         = it_key_tab
                         it_navigation_path = it_navigation_path
                         io_tech_request_context = io_tech_request_context
             	 IMPORTING er_entity          = salesorderheader_update_entity
          ).
       IF salesorderheader_update_entity IS NOT INITIAL.
*     Send specific entity data to the caller interface
          copy_data_to_ref(
            EXPORTING
              is_data = salesorderheader_update_entity
            CHANGING
              cr_data = er_entity
          ).
        ELSE.
*         In case of initial values - unbind the entity reference
          er_entity = lr_entity.
        ENDIF.
*-------------------------------------------------------------------------*
*             EntitySet -  TSalesOrdersSet
*-------------------------------------------------------------------------*
      WHEN 'TSalesOrdersSet'.
*     Call the entity set generated method
          tsalesordersset_update_entity(
               EXPORTING iv_entity_name     = iv_entity_name
                         iv_entity_set_name = iv_entity_set_name
                         iv_source_name     = iv_source_name
                         io_data_provider   = io_data_provider
                         it_key_tab         = it_key_tab
                         it_navigation_path = it_navigation_path
                         io_tech_request_context = io_tech_request_context
             	 IMPORTING er_entity          = tsalesordersset_update_entity
          ).
       IF tsalesordersset_update_entity IS NOT INITIAL.
*     Send specific entity data to the caller interface
          copy_data_to_ref(
            EXPORTING
              is_data = tsalesordersset_update_entity
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


  method SALESORDERHEADER_CREATE_ENTITY.
  RAISE EXCEPTION TYPE /iwbep/cx_mgw_not_impl_exc
    EXPORTING
      textid = /iwbep/cx_mgw_not_impl_exc=>method_not_implemented
      method = 'SALESORDERHEADER_CREATE_ENTITY'.
  endmethod.


  method SALESORDERHEADER_DELETE_ENTITY.
  RAISE EXCEPTION TYPE /iwbep/cx_mgw_not_impl_exc
    EXPORTING
      textid = /iwbep/cx_mgw_not_impl_exc=>method_not_implemented
      method = 'SALESORDERHEADER_DELETE_ENTITY'.
  endmethod.


  method SALESORDERHEADER_GET_ENTITY.
*-------------------------------------------------------------
*  Data declaration
*-------------------------------------------------------------
 DATA e_return TYPE zif_zca_salesorder_getlist=>bapireturn.
 DATA i_custnum TYPE zif_zca_salesorder_getlist=>bapi1007-customer.
 DATA i_saleorg TYPE zif_zca_salesorder_getlist=>bapiorders-sales_org.
 DATA t_sales_orders  TYPE zif_zca_salesorder_getlist=>__bapiorders.
 DATA ls_t_sales_orders  TYPE LINE OF zif_zca_salesorder_getlist=>__bapiorders.
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

    IF lv_source_entity_set_name = 'SalesOrderHeaderSet' AND
       lv_source_entity_set_name NE io_tech_request_context->get_entity_set_name( ).

      io_tech_request_context->get_converted_source_keys(
      IMPORTING es_key_values = ls_converted_keys ).

    ENDIF.

       i_custnum = ls_converted_keys-i_custnum.
       i_saleorg = ls_converted_keys-i_saleorg.
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
          i_custnum   =   i_custnum
          i_saleorg   =   i_saleorg
        IMPORTING
          e_return   =   e_return
        TABLES
          t_sales_orders   =   t_sales_orders
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
          i_custnum   =   i_custnum
          i_saleorg   =   i_saleorg
        IMPORTING
          e_return   =   e_return
        TABLES
          t_sales_orders   =   t_sales_orders
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

IF e_return IS NOT INITIAL.
* Call RFC call exception handling
  me->/iwbep/if_sb_dpc_comm_services~rfc_save_log(
    EXPORTING
      is_return      = e_return
      iv_entity_type = iv_entity_name
      it_key_tab     = it_key_tab ).
ENDIF.

*-------------------------------------------------------------------------*
*             - Post Backend Call -
*-------------------------------------------------------------------------*
* Map properties from the backend to the Gateway output response structure


* In GetEntity operation we support only read for the first entry in the response table

        READ TABLE t_sales_orders INTO ls_t_sales_orders INDEX 1.
      er_entity-i_saleorg = ls_t_sales_orders-sales_org.
      er_entity-i_custnum = ls_t_sales_orders-sold_to.
  endmethod.


  method SALESORDERHEADER_GET_ENTITYSET.
*-------------------------------------------------------------
*  Data declaration
*-------------------------------------------------------------
 DATA e_return TYPE zif_zca_salesorder_getlist=>bapireturn.
 DATA i_custnum TYPE zif_zca_salesorder_getlist=>bapi1007-customer.
 DATA i_datefrom TYPE zif_zca_salesorder_getlist=>bapiorders-doc_date.
 DATA i_dateto TYPE zif_zca_salesorder_getlist=>bapiorders-doc_date.
 DATA i_material TYPE zif_zca_salesorder_getlist=>bapiorders-material.
 DATA i_saleorg TYPE zif_zca_salesorder_getlist=>bapiorders-sales_org.
 DATA t_sales_orders  TYPE zif_zca_salesorder_getlist=>__bapiorders.
 DATA ls_t_sales_orders  TYPE LINE OF zif_zca_salesorder_getlist=>__bapiorders.
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
DATA lr_i_saleorg LIKE RANGE OF ls_converted_keys-i_saleorg.
DATA ls_i_saleorg LIKE LINE OF lr_i_saleorg.
DATA lr_i_material LIKE RANGE OF ls_converted_keys-i_material.
DATA ls_i_material LIKE LINE OF lr_i_material.
DATA lr_i_custnum LIKE RANGE OF ls_converted_keys-i_custnum.
DATA ls_i_custnum LIKE LINE OF lr_i_custnum.
DATA lr_i_datefrom LIKE RANGE OF ls_converted_keys-i_datefrom.
DATA ls_i_datefrom LIKE LINE OF lr_i_datefrom.
DATA lr_i_dateto LIKE RANGE OF ls_converted_keys-i_dateto.
DATA ls_i_dateto LIKE LINE OF lr_i_dateto.
DATA lo_dp_facade TYPE REF TO /iwbep/if_mgw_dp_facade.
DATA ls_gw_t_sales_orders LIKE LINE OF et_entityset.
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
      WHEN 'I_SALEORG'.
        lo_filter->convert_select_option(
          EXPORTING
            is_select_option = ls_filter
          IMPORTING
            et_select_option = lr_i_saleorg ).

        READ TABLE lr_i_saleorg INTO ls_i_saleorg INDEX 1.
        IF sy-subrc = 0.
          i_saleorg = ls_i_saleorg-low.
        ENDIF.
      WHEN 'I_MATERIAL'.
        lo_filter->convert_select_option(
          EXPORTING
            is_select_option = ls_filter
          IMPORTING
            et_select_option = lr_i_material ).

        READ TABLE lr_i_material INTO ls_i_material INDEX 1.
        IF sy-subrc = 0.
          i_material = ls_i_material-low.
        ENDIF.
      WHEN 'I_CUSTNUM'.
        lo_filter->convert_select_option(
          EXPORTING
            is_select_option = ls_filter
          IMPORTING
            et_select_option = lr_i_custnum ).

        READ TABLE lr_i_custnum INTO ls_i_custnum INDEX 1.
        IF sy-subrc = 0.
          i_custnum = ls_i_custnum-low.
        ENDIF.
      WHEN 'I_DATEFROM'.
        lo_filter->convert_select_option(
          EXPORTING
            is_select_option = ls_filter
          IMPORTING
            et_select_option = lr_i_datefrom ).

        READ TABLE lr_i_datefrom INTO ls_i_datefrom INDEX 1.
        IF sy-subrc = 0.
          i_datefrom = ls_i_datefrom-low.
        ENDIF.
      WHEN 'I_DATETO'.
        lo_filter->convert_select_option(
          EXPORTING
            is_select_option = ls_filter
          IMPORTING
            et_select_option = lr_i_dateto ).

        READ TABLE lr_i_dateto INTO ls_i_dateto INDEX 1.
        IF sy-subrc = 0.
          i_dateto = ls_i_dateto-low.
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
lv_rfc_name = 'ZCA_SALESORDER_GETLIST'.

IF lv_destination IS INITIAL OR lv_destination EQ 'NONE'.

  TRY.
      CALL FUNCTION lv_rfc_name
        EXPORTING
          i_saleorg    =   i_saleorg
          i_material   =   i_material
          i_custnum    =   i_custnum
          i_datefrom   =   i_datefrom
          i_dateto     =   i_dateto
        IMPORTING
          e_return   =   e_return
        TABLES
          t_sales_orders   =   t_sales_orders
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
          i_saleorg    =   i_saleorg
          i_material   =   i_material
          i_custnum    =   i_custnum
          i_datefrom   =   i_datefrom
          i_dateto     =   i_dateto
        IMPORTING
          e_return   =   e_return
        TABLES
          t_sales_orders   =   t_sales_orders
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

IF e_return IS NOT INITIAL.
* Call RFC call exception handling
  me->/iwbep/if_sb_dpc_comm_services~rfc_save_log(
    EXPORTING
      is_return      = e_return
      iv_entity_type = iv_entity_name
      it_key_tab     = it_key_tab ).
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
  lv_top = lines( t_sales_orders ).
ENDIF.

*  - Map properties from the backend to the Gateway output response table -

LOOP AT t_sales_orders INTO ls_t_sales_orders
*  Provide the response entries according to the Top and Skip parameters that were provided at runtime
     FROM lv_skip TO lv_top.
*  Only fields that were mapped will be delivered to the response table
 ls_gw_t_sales_orders-i_saleorg = ls_t_sales_orders-sales_org.
 ls_gw_t_sales_orders-i_custnum = ls_t_sales_orders-sold_to.
APPEND ls_gw_t_sales_orders TO et_entityset.
CLEAR ls_gw_t_sales_orders.
ENDLOOP.

  endmethod.


  method SALESORDERHEADER_UPDATE_ENTITY.
  RAISE EXCEPTION TYPE /iwbep/cx_mgw_not_impl_exc
    EXPORTING
      textid = /iwbep/cx_mgw_not_impl_exc=>method_not_implemented
      method = 'SALESORDERHEADER_UPDATE_ENTITY'.
  endmethod.


  method TSALESORDERSSET_CREATE_ENTITY.
  RAISE EXCEPTION TYPE /iwbep/cx_mgw_not_impl_exc
    EXPORTING
      textid = /iwbep/cx_mgw_not_impl_exc=>method_not_implemented
      method = 'TSALESORDERSSET_CREATE_ENTITY'.
  endmethod.


  method TSALESORDERSSET_DELETE_ENTITY.
  RAISE EXCEPTION TYPE /iwbep/cx_mgw_not_impl_exc
    EXPORTING
      textid = /iwbep/cx_mgw_not_impl_exc=>method_not_implemented
      method = 'TSALESORDERSSET_DELETE_ENTITY'.
  endmethod.


  method TSALESORDERSSET_GET_ENTITY.
*-------------------------------------------------------------
*  Data declaration
*-------------------------------------------------------------
 DATA e_return TYPE zif_zca_salesorder_getlist=>bapireturn.
 DATA i_custnum TYPE zif_zca_salesorder_getlist=>bapi1007-customer.
 DATA i_saleorg TYPE zif_zca_salesorder_getlist=>bapiorders-sales_org.
 DATA t_sales_orders  TYPE zif_zca_salesorder_getlist=>__bapiorders.
 DATA ls_t_sales_orders  TYPE LINE OF zif_zca_salesorder_getlist=>__bapiorders.
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

    IF lv_source_entity_set_name = 'TSalesOrdersSet' AND
       lv_source_entity_set_name NE io_tech_request_context->get_entity_set_name( ).

      io_tech_request_context->get_converted_source_keys(
      IMPORTING es_key_values = ls_converted_keys ).

    ENDIF.

       i_custnum = ls_converted_keys-sold_to.
       i_saleorg = ls_converted_keys-sales_org.
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
          i_custnum   =   i_custnum
          i_saleorg   =   i_saleorg
        IMPORTING
          e_return   =   e_return
        TABLES
          t_sales_orders   =   t_sales_orders
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
          i_custnum   =   i_custnum
          i_saleorg   =   i_saleorg
        IMPORTING
          e_return   =   e_return
        TABLES
          t_sales_orders   =   t_sales_orders
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

IF e_return IS NOT INITIAL.
* Call RFC call exception handling
  me->/iwbep/if_sb_dpc_comm_services~rfc_save_log(
    EXPORTING
      is_return      = e_return
      iv_entity_type = iv_entity_name
      it_key_tab     = it_key_tab ).
ENDIF.

*-------------------------------------------------------------------------*
*             - Post Backend Call -
*-------------------------------------------------------------------------*
* Map properties from the backend to the Gateway output response structure


* In GetEntity operation we support only read for the first entry in the response table

        READ TABLE t_sales_orders INTO ls_t_sales_orders INDEX 1.
      er_entity-db_cr_ind = ls_t_sales_orders-db_cr_ind.
      er_entity-material_long = ls_t_sales_orders-material_long.
      er_entity-req_segment = ls_t_sales_orders-req_segment.
      er_entity-status_doc = ls_t_sales_orders-status_doc.
      er_entity-creation_time = ls_t_sales_orders-creation_time.
      er_entity-creation_date = ls_t_sales_orders-creation_date.
      er_entity-mat_vers = ls_t_sales_orders-mat_vers.
      er_entity-mat_guid = ls_t_sales_orders-mat_guid.
      er_entity-mat_ext = ls_t_sales_orders-mat_ext.
      er_entity-exchg_rate_v = ls_t_sales_orders-exchg_rate_v.
      er_entity-purch_no_c = ls_t_sales_orders-purch_no_c.
      er_entity-curr_iso = ls_t_sales_orders-curr_iso.
      er_entity-s_unit_iso = ls_t_sales_orders-s_unit_iso.
      er_entity-cd_unt_iso = ls_t_sales_orders-cd_unt_iso.
      er_entity-b_uom_iso = ls_t_sales_orders-b_uom_iso.
      er_entity-reason_rej = ls_t_sales_orders-reason_rej.
      er_entity-ord_reason = ls_t_sales_orders-ord_reason.
      er_entity-store_loc = ls_t_sales_orders-store_loc.
      er_entity-plant = ls_t_sales_orders-plant.
      er_entity-currency = ls_t_sales_orders-currency.
      er_entity-gi_date = ls_t_sales_orders-gi_date.
      er_entity-distr_chan = ls_t_sales_orders-distr_chan.
      er_entity-ship_point = ls_t_sales_orders-ship_point.
      er_entity-sales_unit = ls_t_sales_orders-sales_unit.
      er_entity-sales_org = ls_t_sales_orders-sales_org.
      er_entity-sales_off = ls_t_sales_orders-sales_off.
      er_entity-sales_grp = ls_t_sales_orders-sales_grp.
      er_entity-doc_status = ls_t_sales_orders-doc_status.
      er_entity-division = ls_t_sales_orders-division.
      er_entity-net_value = ls_t_sales_orders-net_value.
      er_entity-net_val_hd = ls_t_sales_orders-net_val_hd.
      er_entity-cond_unit = ls_t_sales_orders-cond_unit.
      er_entity-cond_p_unt = ls_t_sales_orders-cond_p_unt.
      er_entity-net_price = ls_t_sales_orders-net_price.
      er_entity-base_uom = ls_t_sales_orders-base_uom.
      er_entity-dlv_qty = ls_t_sales_orders-dlv_qty.
      er_entity-exchg_rate = ls_t_sales_orders-exchg_rate.
      er_entity-name = ls_t_sales_orders-name.
      er_entity-sold_to = ls_t_sales_orders-sold_to.
      er_entity-dlv_block = ls_t_sales_orders-dlv_block.
      er_entity-bill_block = ls_t_sales_orders-bill_block.
      er_entity-valid_to = ls_t_sales_orders-valid_to.
      er_entity-valid_from = ls_t_sales_orders-valid_from.
      er_entity-batch = ls_t_sales_orders-batch.
      er_entity-purch_no = ls_t_sales_orders-purch_no.
      er_entity-req_date = ls_t_sales_orders-req_date.
      er_entity-req_qty = ls_t_sales_orders-req_qty.
      er_entity-doc_date = ls_t_sales_orders-doc_date.
      er_entity-doc_type = ls_t_sales_orders-doc_type.
      er_entity-short_text = ls_t_sales_orders-short_text.
      er_entity-material = ls_t_sales_orders-material.
      er_entity-itm_number = ls_t_sales_orders-itm_number.
      er_entity-sd_doc = ls_t_sales_orders-sd_doc.
  endmethod.


  method TSALESORDERSSET_GET_ENTITYSET.
*-------------------------------------------------------------
*  Data declaration
*-------------------------------------------------------------
 DATA e_return TYPE zif_zca_salesorder_getlist=>bapireturn.
 DATA i_datefrom TYPE zif_zca_salesorder_getlist=>bapiorders-doc_date.
 DATA i_material TYPE zif_zca_salesorder_getlist=>bapiorders-material.
 DATA t_sales_orders  TYPE zif_zca_salesorder_getlist=>__bapiorders.
 DATA ls_t_sales_orders  TYPE LINE OF zif_zca_salesorder_getlist=>__bapiorders.
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
DATA lv_source_entity_set_name TYPE string.
DATA salesorderheader_get_entityset TYPE LINE OF zcl_zcagw_so_01_mpc=>tt_salesorderheader.
DATA ls_filter TYPE /iwbep/s_mgw_select_option.
DATA ls_filter_range TYPE /iwbep/s_cod_select_option.
DATA lr_doc_date LIKE RANGE OF ls_converted_keys-doc_date.
DATA ls_doc_date LIKE LINE OF lr_doc_date.
DATA lr_material LIKE RANGE OF ls_converted_keys-material.
DATA ls_material LIKE LINE OF lr_material.
DATA lo_dp_facade TYPE REF TO /iwbep/if_mgw_dp_facade.
DATA ls_gw_t_sales_orders LIKE LINE OF et_entityset.
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

* Maps key fields to function module parameters
  IF it_key_tab IS NOT INITIAL.

    lv_source_entity_set_name = io_tech_request_context->get_source_entity_set_name( ).

    IF  lv_source_entity_set_name = 'SalesOrderHeaderSet'.
      " Convert keys to appropriate entity set structure
      io_tech_request_context->get_converted_source_keys(
        IMPORTING
          es_key_values  = salesorderheader_get_entityset ).
  ENDIF.

   ENDIF.

   IF it_filter_select_options IS NOT INITIAL.

* Maps filter table lines to function module parameters
  LOOP AT lt_filter_select_options INTO ls_filter.

    LOOP AT ls_filter-select_options INTO ls_filter_range.
      CASE ls_filter-property.
      WHEN 'DOC_DATE'.
        lo_filter->convert_select_option(
          EXPORTING
            is_select_option = ls_filter
          IMPORTING
            et_select_option = lr_doc_date ).

        READ TABLE lr_doc_date INTO ls_doc_date INDEX 1.
        IF sy-subrc = 0.
          i_datefrom = ls_doc_date-low.
        ENDIF.
      WHEN 'MATERIAL'.
        lo_filter->convert_select_option(
          EXPORTING
            is_select_option = ls_filter
          IMPORTING
            et_select_option = lr_material ).

        READ TABLE lr_material INTO ls_material INDEX 1.
        IF sy-subrc = 0.
          i_material = ls_material-low.
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

    ENDIF.

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
          i_datefrom   =   i_datefrom
          i_material   =   i_material
        IMPORTING
          e_return   =   e_return
        TABLES
          t_sales_orders   =   t_sales_orders
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
          i_datefrom   =   i_datefrom
          i_material   =   i_material
        IMPORTING
          e_return   =   e_return
        TABLES
          t_sales_orders   =   t_sales_orders
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

IF e_return IS NOT INITIAL.
* Call RFC call exception handling
  me->/iwbep/if_sb_dpc_comm_services~rfc_save_log(
    EXPORTING
      is_return      = e_return
      iv_entity_type = iv_entity_name
      it_key_tab     = it_key_tab ).
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
  lv_top = lines( t_sales_orders ).
ENDIF.

*  - Map properties from the backend to the Gateway output response table -

LOOP AT t_sales_orders INTO ls_t_sales_orders
*  Provide the response entries according to the Top and Skip parameters that were provided at runtime
     FROM lv_skip TO lv_top.
*  Only fields that were mapped will be delivered to the response table
 ls_gw_t_sales_orders-division = ls_t_sales_orders-division.
 ls_gw_t_sales_orders-net_value = ls_t_sales_orders-net_value.
 ls_gw_t_sales_orders-net_val_hd = ls_t_sales_orders-net_val_hd.
 ls_gw_t_sales_orders-cond_unit = ls_t_sales_orders-cond_unit.
 ls_gw_t_sales_orders-cond_p_unt = ls_t_sales_orders-cond_p_unt.
 ls_gw_t_sales_orders-net_price = ls_t_sales_orders-net_price.
 ls_gw_t_sales_orders-base_uom = ls_t_sales_orders-base_uom.
 ls_gw_t_sales_orders-dlv_qty = ls_t_sales_orders-dlv_qty.
 ls_gw_t_sales_orders-exchg_rate = ls_t_sales_orders-exchg_rate.
 ls_gw_t_sales_orders-name = ls_t_sales_orders-name.
 ls_gw_t_sales_orders-sold_to = ls_t_sales_orders-sold_to.
 ls_gw_t_sales_orders-dlv_block = ls_t_sales_orders-dlv_block.
 ls_gw_t_sales_orders-bill_block = ls_t_sales_orders-bill_block.
 ls_gw_t_sales_orders-valid_to = ls_t_sales_orders-valid_to.
 ls_gw_t_sales_orders-valid_from = ls_t_sales_orders-valid_from.
 ls_gw_t_sales_orders-batch = ls_t_sales_orders-batch.
 ls_gw_t_sales_orders-purch_no = ls_t_sales_orders-purch_no.
 ls_gw_t_sales_orders-req_date = ls_t_sales_orders-req_date.
 ls_gw_t_sales_orders-req_qty = ls_t_sales_orders-req_qty.
 ls_gw_t_sales_orders-doc_date = ls_t_sales_orders-doc_date.
 ls_gw_t_sales_orders-doc_type = ls_t_sales_orders-doc_type.
 ls_gw_t_sales_orders-short_text = ls_t_sales_orders-short_text.
 ls_gw_t_sales_orders-material = ls_t_sales_orders-material.
 ls_gw_t_sales_orders-itm_number = ls_t_sales_orders-itm_number.
 ls_gw_t_sales_orders-sd_doc = ls_t_sales_orders-sd_doc.
 ls_gw_t_sales_orders-doc_status = ls_t_sales_orders-doc_status.
 ls_gw_t_sales_orders-sales_grp = ls_t_sales_orders-sales_grp.
 ls_gw_t_sales_orders-sales_off = ls_t_sales_orders-sales_off.
 ls_gw_t_sales_orders-sales_org = ls_t_sales_orders-sales_org.
 ls_gw_t_sales_orders-sales_unit = ls_t_sales_orders-sales_unit.
 ls_gw_t_sales_orders-db_cr_ind = ls_t_sales_orders-db_cr_ind.
 ls_gw_t_sales_orders-ship_point = ls_t_sales_orders-ship_point.
 ls_gw_t_sales_orders-distr_chan = ls_t_sales_orders-distr_chan.
 ls_gw_t_sales_orders-material_long = ls_t_sales_orders-material_long.
 ls_gw_t_sales_orders-gi_date = ls_t_sales_orders-gi_date.
 ls_gw_t_sales_orders-req_segment = ls_t_sales_orders-req_segment.
 ls_gw_t_sales_orders-currency = ls_t_sales_orders-currency.
 ls_gw_t_sales_orders-plant = ls_t_sales_orders-plant.
 ls_gw_t_sales_orders-status_doc = ls_t_sales_orders-status_doc.
 ls_gw_t_sales_orders-store_loc = ls_t_sales_orders-store_loc.
 ls_gw_t_sales_orders-creation_time = ls_t_sales_orders-creation_time.
 ls_gw_t_sales_orders-ord_reason = ls_t_sales_orders-ord_reason.
 ls_gw_t_sales_orders-reason_rej = ls_t_sales_orders-reason_rej.
 ls_gw_t_sales_orders-creation_date = ls_t_sales_orders-creation_date.
 ls_gw_t_sales_orders-b_uom_iso = ls_t_sales_orders-b_uom_iso.
 ls_gw_t_sales_orders-mat_vers = ls_t_sales_orders-mat_vers.
 ls_gw_t_sales_orders-cd_unt_iso = ls_t_sales_orders-cd_unt_iso.
 ls_gw_t_sales_orders-s_unit_iso = ls_t_sales_orders-s_unit_iso.
 ls_gw_t_sales_orders-mat_guid = ls_t_sales_orders-mat_guid.
 ls_gw_t_sales_orders-curr_iso = ls_t_sales_orders-curr_iso.
 ls_gw_t_sales_orders-mat_ext = ls_t_sales_orders-mat_ext.
 ls_gw_t_sales_orders-purch_no_c = ls_t_sales_orders-purch_no_c.
 ls_gw_t_sales_orders-exchg_rate_v = ls_t_sales_orders-exchg_rate_v.
APPEND ls_gw_t_sales_orders TO et_entityset.
CLEAR ls_gw_t_sales_orders.
ENDLOOP.

  endmethod.


  method TSALESORDERSSET_UPDATE_ENTITY.
  RAISE EXCEPTION TYPE /iwbep/cx_mgw_not_impl_exc
    EXPORTING
      textid = /iwbep/cx_mgw_not_impl_exc=>method_not_implemented
      method = 'TSALESORDERSSET_UPDATE_ENTITY'.
  endmethod.
ENDCLASS.
