class ZCL_ZCAGW_SO_01_01_DPC definition
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

  methods ETSODETAILSET_CREATE_ENTITY
    importing
      !IV_ENTITY_NAME type STRING
      !IV_ENTITY_SET_NAME type STRING
      !IV_SOURCE_NAME type STRING
      !IT_KEY_TAB type /IWBEP/T_MGW_NAME_VALUE_PAIR
      !IO_TECH_REQUEST_CONTEXT type ref to /IWBEP/IF_MGW_REQ_ENTITY_C optional
      !IT_NAVIGATION_PATH type /IWBEP/T_MGW_NAVIGATION_PATH
      !IO_DATA_PROVIDER type ref to /IWBEP/IF_MGW_ENTRY_PROVIDER optional
    exporting
      !ER_ENTITY type ZCL_ZCAGW_SO_01_01_MPC=>TS_ETSODETAIL
    raising
      /IWBEP/CX_MGW_BUSI_EXCEPTION
      /IWBEP/CX_MGW_TECH_EXCEPTION .
  methods ETSODETAILSET_DELETE_ENTITY
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
  methods ETSODETAILSET_GET_ENTITY
    importing
      !IV_ENTITY_NAME type STRING
      !IV_ENTITY_SET_NAME type STRING
      !IV_SOURCE_NAME type STRING
      !IT_KEY_TAB type /IWBEP/T_MGW_NAME_VALUE_PAIR
      !IO_REQUEST_OBJECT type ref to /IWBEP/IF_MGW_REQ_ENTITY optional
      !IO_TECH_REQUEST_CONTEXT type ref to /IWBEP/IF_MGW_REQ_ENTITY optional
      !IT_NAVIGATION_PATH type /IWBEP/T_MGW_NAVIGATION_PATH
    exporting
      !ER_ENTITY type ZCL_ZCAGW_SO_01_01_MPC=>TS_ETSODETAIL
      !ES_RESPONSE_CONTEXT type /IWBEP/IF_MGW_APPL_SRV_RUNTIME=>TY_S_MGW_RESPONSE_ENTITY_CNTXT
    raising
      /IWBEP/CX_MGW_BUSI_EXCEPTION
      /IWBEP/CX_MGW_TECH_EXCEPTION .
  methods ETSODETAILSET_GET_ENTITYSET
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
      !ET_ENTITYSET type ZCL_ZCAGW_SO_01_01_MPC=>TT_ETSODETAIL
      !ES_RESPONSE_CONTEXT type /IWBEP/IF_MGW_APPL_SRV_RUNTIME=>TY_S_MGW_RESPONSE_CONTEXT
    raising
      /IWBEP/CX_MGW_BUSI_EXCEPTION
      /IWBEP/CX_MGW_TECH_EXCEPTION .
  methods ETSODETAILSET_UPDATE_ENTITY
    importing
      !IV_ENTITY_NAME type STRING
      !IV_ENTITY_SET_NAME type STRING
      !IV_SOURCE_NAME type STRING
      !IT_KEY_TAB type /IWBEP/T_MGW_NAME_VALUE_PAIR
      !IO_TECH_REQUEST_CONTEXT type ref to /IWBEP/IF_MGW_REQ_ENTITY_U optional
      !IT_NAVIGATION_PATH type /IWBEP/T_MGW_NAVIGATION_PATH
      !IO_DATA_PROVIDER type ref to /IWBEP/IF_MGW_ENTRY_PROVIDER optional
    exporting
      !ER_ENTITY type ZCL_ZCAGW_SO_01_01_MPC=>TS_ETSODETAIL
    raising
      /IWBEP/CX_MGW_BUSI_EXCEPTION
      /IWBEP/CX_MGW_TECH_EXCEPTION .
  methods ETSOLISTSET_CREATE_ENTITY
    importing
      !IV_ENTITY_NAME type STRING
      !IV_ENTITY_SET_NAME type STRING
      !IV_SOURCE_NAME type STRING
      !IT_KEY_TAB type /IWBEP/T_MGW_NAME_VALUE_PAIR
      !IO_TECH_REQUEST_CONTEXT type ref to /IWBEP/IF_MGW_REQ_ENTITY_C optional
      !IT_NAVIGATION_PATH type /IWBEP/T_MGW_NAVIGATION_PATH
      !IO_DATA_PROVIDER type ref to /IWBEP/IF_MGW_ENTRY_PROVIDER optional
    exporting
      !ER_ENTITY type ZCL_ZCAGW_SO_01_01_MPC=>TS_ETSOLIST
    raising
      /IWBEP/CX_MGW_BUSI_EXCEPTION
      /IWBEP/CX_MGW_TECH_EXCEPTION .
  methods ETSOLISTSET_DELETE_ENTITY
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
  methods ETSOLISTSET_GET_ENTITY
    importing
      !IV_ENTITY_NAME type STRING
      !IV_ENTITY_SET_NAME type STRING
      !IV_SOURCE_NAME type STRING
      !IT_KEY_TAB type /IWBEP/T_MGW_NAME_VALUE_PAIR
      !IO_REQUEST_OBJECT type ref to /IWBEP/IF_MGW_REQ_ENTITY optional
      !IO_TECH_REQUEST_CONTEXT type ref to /IWBEP/IF_MGW_REQ_ENTITY optional
      !IT_NAVIGATION_PATH type /IWBEP/T_MGW_NAVIGATION_PATH
    exporting
      !ER_ENTITY type ZCL_ZCAGW_SO_01_01_MPC=>TS_ETSOLIST
      !ES_RESPONSE_CONTEXT type /IWBEP/IF_MGW_APPL_SRV_RUNTIME=>TY_S_MGW_RESPONSE_ENTITY_CNTXT
    raising
      /IWBEP/CX_MGW_BUSI_EXCEPTION
      /IWBEP/CX_MGW_TECH_EXCEPTION .
  methods ETSOLISTSET_GET_ENTITYSET
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
      !ET_ENTITYSET type ZCL_ZCAGW_SO_01_01_MPC=>TT_ETSOLIST
      !ES_RESPONSE_CONTEXT type /IWBEP/IF_MGW_APPL_SRV_RUNTIME=>TY_S_MGW_RESPONSE_CONTEXT
    raising
      /IWBEP/CX_MGW_BUSI_EXCEPTION
      /IWBEP/CX_MGW_TECH_EXCEPTION .
  methods ETSOLISTSET_UPDATE_ENTITY
    importing
      !IV_ENTITY_NAME type STRING
      !IV_ENTITY_SET_NAME type STRING
      !IV_SOURCE_NAME type STRING
      !IT_KEY_TAB type /IWBEP/T_MGW_NAME_VALUE_PAIR
      !IO_TECH_REQUEST_CONTEXT type ref to /IWBEP/IF_MGW_REQ_ENTITY_U optional
      !IT_NAVIGATION_PATH type /IWBEP/T_MGW_NAVIGATION_PATH
      !IO_DATA_PROVIDER type ref to /IWBEP/IF_MGW_ENTRY_PROVIDER optional
    exporting
      !ER_ENTITY type ZCL_ZCAGW_SO_01_01_MPC=>TS_ETSOLIST
    raising
      /IWBEP/CX_MGW_BUSI_EXCEPTION
      /IWBEP/CX_MGW_TECH_EXCEPTION .
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
      !ER_ENTITY type ZCL_ZCAGW_SO_01_01_MPC=>TS_SALESORDER
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
      !ER_ENTITY type ZCL_ZCAGW_SO_01_01_MPC=>TS_SALESORDER
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
      !ET_ENTITYSET type ZCL_ZCAGW_SO_01_01_MPC=>TT_SALESORDER
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
      !ER_ENTITY type ZCL_ZCAGW_SO_01_01_MPC=>TS_SALESORDER
    raising
      /IWBEP/CX_MGW_BUSI_EXCEPTION
      /IWBEP/CX_MGW_TECH_EXCEPTION .

  methods CHECK_SUBSCRIPTION_AUTHORITY
    redefinition .
private section.
ENDCLASS.



CLASS ZCL_ZCAGW_SO_01_01_DPC IMPLEMENTATION.


  method /IWBEP/IF_MGW_APPL_SRV_RUNTIME~CREATE_ENTITY.
*&----------------------------------------------------------------------------------------------*
*&  Include           /IWBEP/DPC_TEMP_CRT_ENTITY_BASE
*&* This class has been generated on 2019.10.22 23:04:49 in client 400
*&*
*&*       WARNING--> NEVER MODIFY THIS CLASS <--WARNING
*&*   If you want to change the DPC implementation, use the
*&*   generated methods inside the DPC provider subclass - ZCL_ZCAGW_SO_01_01_DPC_EXT
*&-----------------------------------------------------------------------------------------------*

 DATA etsolistset_create_entity TYPE zcl_zcagw_so_01_01_mpc=>ts_etsolist.
 DATA etsodetailset_create_entity TYPE zcl_zcagw_so_01_01_mpc=>ts_etsodetail.
 DATA salesorderset_create_entity TYPE zcl_zcagw_so_01_01_mpc=>ts_salesorder.
 DATA lv_entityset_name TYPE string.

lv_entityset_name = io_tech_request_context->get_entity_set_name( ).

CASE lv_entityset_name.
*-------------------------------------------------------------------------*
*             EntitySet -  EtSoListSet
*-------------------------------------------------------------------------*
     WHEN 'EtSoListSet'.
*     Call the entity set generated method
    etsolistset_create_entity(
         EXPORTING iv_entity_name     = iv_entity_name
                   iv_entity_set_name = iv_entity_set_name
                   iv_source_name     = iv_source_name
                   io_data_provider   = io_data_provider
                   it_key_tab         = it_key_tab
                   it_navigation_path = it_navigation_path
                   io_tech_request_context = io_tech_request_context
       	 IMPORTING er_entity          = etsolistset_create_entity
    ).
*     Send specific entity data to the caller interfaces
    copy_data_to_ref(
      EXPORTING
        is_data = etsolistset_create_entity
      CHANGING
        cr_data = er_entity
   ).

*-------------------------------------------------------------------------*
*             EntitySet -  EtSoDetailSet
*-------------------------------------------------------------------------*
     WHEN 'EtSoDetailSet'.
*     Call the entity set generated method
    etsodetailset_create_entity(
         EXPORTING iv_entity_name     = iv_entity_name
                   iv_entity_set_name = iv_entity_set_name
                   iv_source_name     = iv_source_name
                   io_data_provider   = io_data_provider
                   it_key_tab         = it_key_tab
                   it_navigation_path = it_navigation_path
                   io_tech_request_context = io_tech_request_context
       	 IMPORTING er_entity          = etsodetailset_create_entity
    ).
*     Send specific entity data to the caller interfaces
    copy_data_to_ref(
      EXPORTING
        is_data = etsodetailset_create_entity
      CHANGING
        cr_data = er_entity
   ).

*-------------------------------------------------------------------------*
*             EntitySet -  SalesOrderSet
*-------------------------------------------------------------------------*
     WHEN 'SalesOrderSet'.
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
*&* This class has been generated on 2019.10.22 23:04:49 in client 400
*&*
*&*       WARNING--> NEVER MODIFY THIS CLASS <--WARNING
*&*   If you want to change the DPC implementation, use the
*&*   generated methods inside the DPC provider subclass - ZCL_ZCAGW_SO_01_01_DPC_EXT
*&-----------------------------------------------------------------------------------------------*

 DATA lv_entityset_name TYPE string.

lv_entityset_name = io_tech_request_context->get_entity_set_name( ).

CASE lv_entityset_name.
*-------------------------------------------------------------------------*
*             EntitySet -  EtSoListSet
*-------------------------------------------------------------------------*
      when 'EtSoListSet'.
*     Call the entity set generated method
     etsolistset_delete_entity(
          EXPORTING iv_entity_name     = iv_entity_name
                    iv_entity_set_name = iv_entity_set_name
                    iv_source_name     = iv_source_name
                    it_key_tab         = it_key_tab
                    it_navigation_path = it_navigation_path
                    io_tech_request_context = io_tech_request_context
     ).

*-------------------------------------------------------------------------*
*             EntitySet -  EtSoDetailSet
*-------------------------------------------------------------------------*
      when 'EtSoDetailSet'.
*     Call the entity set generated method
     etsodetailset_delete_entity(
          EXPORTING iv_entity_name     = iv_entity_name
                    iv_entity_set_name = iv_entity_set_name
                    iv_source_name     = iv_source_name
                    it_key_tab         = it_key_tab
                    it_navigation_path = it_navigation_path
                    io_tech_request_context = io_tech_request_context
     ).

*-------------------------------------------------------------------------*
*             EntitySet -  SalesOrderSet
*-------------------------------------------------------------------------*
      when 'SalesOrderSet'.
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
*&* This class has been generated  on 2019.10.22 23:04:49 in client 400
*&*
*&*       WARNING--> NEVER MODIFY THIS CLASS <--WARNING
*&*   If you want to change the DPC implementation, use the
*&*   generated methods inside the DPC provider subclass - ZCL_ZCAGW_SO_01_01_DPC_EXT
*&-----------------------------------------------------------------------------------------------*

 DATA etsolistset_get_entity TYPE zcl_zcagw_so_01_01_mpc=>ts_etsolist.
 DATA etsodetailset_get_entity TYPE zcl_zcagw_so_01_01_mpc=>ts_etsodetail.
 DATA salesorderset_get_entity TYPE zcl_zcagw_so_01_01_mpc=>ts_salesorder.
 DATA lv_entityset_name TYPE string.
 DATA lr_entity TYPE REF TO data.       "#EC NEEDED

lv_entityset_name = io_tech_request_context->get_entity_set_name( ).

CASE lv_entityset_name.
*-------------------------------------------------------------------------*
*             EntitySet -  EtSoListSet
*-------------------------------------------------------------------------*
      WHEN 'EtSoListSet'.
*     Call the entity set generated method
          etsolistset_get_entity(
               EXPORTING iv_entity_name     = iv_entity_name
                         iv_entity_set_name = iv_entity_set_name
                         iv_source_name     = iv_source_name
                         it_key_tab         = it_key_tab
                         it_navigation_path = it_navigation_path
                         io_tech_request_context = io_tech_request_context
             	 IMPORTING er_entity          = etsolistset_get_entity
                         es_response_context = es_response_context
          ).

        IF etsolistset_get_entity IS NOT INITIAL.
*     Send specific entity data to the caller interface
          copy_data_to_ref(
            EXPORTING
              is_data = etsolistset_get_entity
            CHANGING
              cr_data = er_entity
          ).
        ELSE.
*         In case of initial values - unbind the entity reference
          er_entity = lr_entity.
        ENDIF.
*-------------------------------------------------------------------------*
*             EntitySet -  EtSoDetailSet
*-------------------------------------------------------------------------*
      WHEN 'EtSoDetailSet'.
*     Call the entity set generated method
          etsodetailset_get_entity(
               EXPORTING iv_entity_name     = iv_entity_name
                         iv_entity_set_name = iv_entity_set_name
                         iv_source_name     = iv_source_name
                         it_key_tab         = it_key_tab
                         it_navigation_path = it_navigation_path
                         io_tech_request_context = io_tech_request_context
             	 IMPORTING er_entity          = etsodetailset_get_entity
                         es_response_context = es_response_context
          ).

        IF etsodetailset_get_entity IS NOT INITIAL.
*     Send specific entity data to the caller interface
          copy_data_to_ref(
            EXPORTING
              is_data = etsodetailset_get_entity
            CHANGING
              cr_data = er_entity
          ).
        ELSE.
*         In case of initial values - unbind the entity reference
          er_entity = lr_entity.
        ENDIF.
*-------------------------------------------------------------------------*
*             EntitySet -  SalesOrderSet
*-------------------------------------------------------------------------*
      WHEN 'SalesOrderSet'.
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
*&* This class has been generated on 2019.10.22 23:04:49 in client 400
*&*
*&*       WARNING--> NEVER MODIFY THIS CLASS <--WARNING
*&*   If you want to change the DPC implementation, use the
*&*   generated methods inside the DPC provider subclass - ZCL_ZCAGW_SO_01_01_DPC_EXT
*&-----------------------------------------------------------------------------------------------*
 DATA etsolistset_get_entityset TYPE zcl_zcagw_so_01_01_mpc=>tt_etsolist.
 DATA etsodetailset_get_entityset TYPE zcl_zcagw_so_01_01_mpc=>tt_etsodetail.
 DATA salesorderset_get_entityset TYPE zcl_zcagw_so_01_01_mpc=>tt_salesorder.
 DATA lv_entityset_name TYPE string.

lv_entityset_name = io_tech_request_context->get_entity_set_name( ).

CASE lv_entityset_name.
*-------------------------------------------------------------------------*
*             EntitySet -  EtSoListSet
*-------------------------------------------------------------------------*
   WHEN 'EtSoListSet'.
*     Call the entity set generated method
      etsolistset_get_entityset(
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
         et_entityset = etsolistset_get_entityset
         es_response_context = es_response_context
       ).
*     Send specific entity data to the caller interface
      copy_data_to_ref(
        EXPORTING
          is_data = etsolistset_get_entityset
        CHANGING
          cr_data = er_entityset
      ).

*-------------------------------------------------------------------------*
*             EntitySet -  EtSoDetailSet
*-------------------------------------------------------------------------*
   WHEN 'EtSoDetailSet'.
*     Call the entity set generated method
      etsodetailset_get_entityset(
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
         et_entityset = etsodetailset_get_entityset
         es_response_context = es_response_context
       ).
*     Send specific entity data to the caller interface
      copy_data_to_ref(
        EXPORTING
          is_data = etsodetailset_get_entityset
        CHANGING
          cr_data = er_entityset
      ).

*-------------------------------------------------------------------------*
*             EntitySet -  SalesOrderSet
*-------------------------------------------------------------------------*
   WHEN 'SalesOrderSet'.
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
*&* This class has been generated on 2019.10.22 23:04:49 in client 400
*&*
*&*       WARNING--> NEVER MODIFY THIS CLASS <--WARNING
*&*   If you want to change the DPC implementation, use the
*&*   generated methods inside the DPC provider subclass - ZCL_ZCAGW_SO_01_01_DPC_EXT
*&-----------------------------------------------------------------------------------------------*

 DATA etsolistset_update_entity TYPE zcl_zcagw_so_01_01_mpc=>ts_etsolist.
 DATA etsodetailset_update_entity TYPE zcl_zcagw_so_01_01_mpc=>ts_etsodetail.
 DATA salesorderset_update_entity TYPE zcl_zcagw_so_01_01_mpc=>ts_salesorder.
 DATA lv_entityset_name TYPE string.
 DATA lr_entity TYPE REF TO data. "#EC NEEDED

lv_entityset_name = io_tech_request_context->get_entity_set_name( ).

CASE lv_entityset_name.
*-------------------------------------------------------------------------*
*             EntitySet -  EtSoListSet
*-------------------------------------------------------------------------*
      WHEN 'EtSoListSet'.
*     Call the entity set generated method
          etsolistset_update_entity(
               EXPORTING iv_entity_name     = iv_entity_name
                         iv_entity_set_name = iv_entity_set_name
                         iv_source_name     = iv_source_name
                         io_data_provider   = io_data_provider
                         it_key_tab         = it_key_tab
                         it_navigation_path = it_navigation_path
                         io_tech_request_context = io_tech_request_context
             	 IMPORTING er_entity          = etsolistset_update_entity
          ).
       IF etsolistset_update_entity IS NOT INITIAL.
*     Send specific entity data to the caller interface
          copy_data_to_ref(
            EXPORTING
              is_data = etsolistset_update_entity
            CHANGING
              cr_data = er_entity
          ).
        ELSE.
*         In case of initial values - unbind the entity reference
          er_entity = lr_entity.
        ENDIF.
*-------------------------------------------------------------------------*
*             EntitySet -  EtSoDetailSet
*-------------------------------------------------------------------------*
      WHEN 'EtSoDetailSet'.
*     Call the entity set generated method
          etsodetailset_update_entity(
               EXPORTING iv_entity_name     = iv_entity_name
                         iv_entity_set_name = iv_entity_set_name
                         iv_source_name     = iv_source_name
                         io_data_provider   = io_data_provider
                         it_key_tab         = it_key_tab
                         it_navigation_path = it_navigation_path
                         io_tech_request_context = io_tech_request_context
             	 IMPORTING er_entity          = etsodetailset_update_entity
          ).
       IF etsodetailset_update_entity IS NOT INITIAL.
*     Send specific entity data to the caller interface
          copy_data_to_ref(
            EXPORTING
              is_data = etsodetailset_update_entity
            CHANGING
              cr_data = er_entity
          ).
        ELSE.
*         In case of initial values - unbind the entity reference
          er_entity = lr_entity.
        ENDIF.
*-------------------------------------------------------------------------*
*             EntitySet -  SalesOrderSet
*-------------------------------------------------------------------------*
      WHEN 'SalesOrderSet'.
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


  method ETSODETAILSET_CREATE_ENTITY.
  RAISE EXCEPTION TYPE /iwbep/cx_mgw_not_impl_exc
    EXPORTING
      textid = /iwbep/cx_mgw_not_impl_exc=>method_not_implemented
      method = 'ETSODETAILSET_CREATE_ENTITY'.
  endmethod.


  method ETSODETAILSET_DELETE_ENTITY.
  RAISE EXCEPTION TYPE /iwbep/cx_mgw_not_impl_exc
    EXPORTING
      textid = /iwbep/cx_mgw_not_impl_exc=>method_not_implemented
      method = 'ETSODETAILSET_DELETE_ENTITY'.
  endmethod.


  method ETSODETAILSET_GET_ENTITY.
*-------------------------------------------------------------
*  Data declaration
*-------------------------------------------------------------
 DATA i_saledoc TYPE zif_zca_salesorder_getdetail1=>bapivbeln-vbeln.
 DATA et_so_detail  TYPE zif_zca_salesorder_getdetail1=>__bapisditbos.
 DATA return  TYPE zif_zca_salesorder_getdetail1=>__bapiret2.
 DATA ls_et_so_detail  TYPE LINE OF zif_zca_salesorder_getdetail1=>__bapisditbos.
 DATA ls_return  TYPE LINE OF zif_zca_salesorder_getdetail1=>__bapiret2.
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

    IF lv_source_entity_set_name = 'EtSoDetailSet' AND
       lv_source_entity_set_name NE io_tech_request_context->get_entity_set_name( ).

      io_tech_request_context->get_converted_source_keys(
      IMPORTING es_key_values = ls_converted_keys ).

    ENDIF.

       i_saledoc = ls_converted_keys-doc_number.
* Get RFC destination
lo_dp_facade = /iwbep/if_mgw_conv_srv_runtime~get_dp_facade( ).
lv_destination = /iwbep/cl_sb_gen_dpc_rt_util=>get_rfc_destination( io_dp_facade = lo_dp_facade ).

*-------------------------------------------------------------
*  Call RFC function module
*-------------------------------------------------------------
lv_rfc_name = 'ZCA_SALESORDER_GETDETAIL'.

IF lv_destination IS INITIAL OR lv_destination EQ 'NONE'.

  TRY.
      CALL FUNCTION lv_rfc_name
        EXPORTING
          i_saledoc   =   i_saledoc
        TABLES
          return         =   return
          et_so_detail   =   et_so_detail
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
          i_saledoc   =   i_saledoc
        TABLES
          return         =   return
          et_so_detail   =   et_so_detail
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

IF return IS NOT INITIAL.
  me->/iwbep/if_sb_dpc_comm_services~rfc_save_log(
    EXPORTING
      iv_entity_type = iv_entity_name
      it_return      = return
      it_key_tab     = it_key_tab ).
ENDIF.

*-------------------------------------------------------------------------*
*             - Post Backend Call -
*-------------------------------------------------------------------------*
* Map properties from the backend to the Gateway output response structure


* In GetEntity operation we support only read for the first entry in the response table

        READ TABLE et_so_detail INTO ls_et_so_detail INDEX 1.
      er_entity-doc_cat_sd_long = ls_et_so_detail-doc_cat_sd_long.
      er_entity-price_ref_long = ls_et_so_detail-price_ref_long.
      er_entity-plng_matl_long = ls_et_so_detail-plng_matl_long.
      er_entity-pr_ref_mat_long = ls_et_so_detail-pr_ref_mat_long.
      er_entity-mat_entrd_long = ls_et_so_detail-mat_entrd_long.
      er_entity-material_long = ls_et_so_detail-material_long.
      er_entity-pr_ref_mat_version = ls_et_so_detail-pr_ref_mat_version.
      er_entity-pr_ref_mat_guid = ls_et_so_detail-pr_ref_mat_guid.
      er_entity-pr_ref_mat_external = ls_et_so_detail-pr_ref_mat_external.
      er_entity-price_ref_version = ls_et_so_detail-price_ref_version.
      er_entity-price_ref_guid = ls_et_so_detail-price_ref_guid.
      er_entity-price_ref_external = ls_et_so_detail-price_ref_external.
      er_entity-plng_matl_version = ls_et_so_detail-plng_matl_version.
      er_entity-plng_matl_guid = ls_et_so_detail-plng_matl_guid.
      er_entity-plng_matl_external = ls_et_so_detail-plng_matl_external.
      er_entity-mat_entrd_version = ls_et_so_detail-mat_entrd_version.
      er_entity-mat_entrd_guid = ls_et_so_detail-mat_entrd_guid.
      er_entity-mat_entrd_external = ls_et_so_detail-mat_entrd_external.
      er_entity-material_version = ls_et_so_detail-material_version.
      er_entity-material_guid = ls_et_so_detail-material_guid.
      er_entity-material_external = ls_et_so_detail-material_external.
      er_entity-pckg_no = ls_et_so_detail-pckg_no.
      er_entity-exchratest_v = ls_et_so_detail-exchratest_v.
      er_entity-cr_exchrat_v = ls_et_so_detail-cr_exchrat_v.
      er_entity-cust_mat35 = ls_et_so_detail-cust_mat35.
      er_entity-mrp_area = ls_et_so_detail-mrp_area.
      er_entity-tax_amount = ls_et_so_detail-tax_amount.
      er_entity-valid_obj = ls_et_so_detail-valid_obj.
      er_entity-free_goods = ls_et_so_detail-free_goods.
      er_entity-flgleaduni = ls_et_so_detail-flgleaduni.
      er_entity-sales_deal = ls_et_so_detail-sales_deal.
      er_entity-promotion = ls_et_so_detail-promotion.
      er_entity-matgrhie2 = ls_et_so_detail-matgrhie2.
      er_entity-matgrhie1 = ls_et_so_detail-matgrhie1.
      er_entity-valspecsto = ls_et_so_detail-valspecsto.
      er_entity-assort_mod = ls_et_so_detail-assort_mod.
      er_entity-valcontrit = ls_et_so_detail-valcontrit.
      er_entity-valcontrnr = ls_et_so_detail-valcontrnr.
      er_entity-sd_taxcode = ls_et_so_detail-sd_taxcode.
      er_entity-taxlawipi = ls_et_so_detail-taxlawipi.
      er_entity-taxlawicms = ls_et_so_detail-taxlawicms.
      er_entity-cfop_code = ls_et_so_detail-cfop_code.
      er_entity-guranteed = ls_et_so_detail-guranteed.
      er_entity-pay_guaran = ls_et_so_detail-pay_guaran.
      er_entity-credpric = ls_et_so_detail-credpric.
      er_entity-sequenceno = ls_et_so_detail-sequenceno.
      er_entity-plandlvsch = ls_et_so_detail-plandlvsch.
      er_entity-matfrgtgrp = ls_et_so_detail-matfrgtgrp.
      er_entity-matpricgrp = ls_et_so_detail-matpricgrp.
      er_entity-price_ref = ls_et_so_detail-price_ref.
      er_entity-prod_alloc = ls_et_so_detail-prod_alloc.
      er_entity-cstg_vrnt1 = ls_et_so_detail-cstg_vrnt1.
      er_entity-cstg_sheet = ls_et_so_detail-cstg_sheet.
      er_entity-overh_key = ls_et_so_detail-overh_key.
      er_entity-inconsconf = ls_et_so_detail-inconsconf.
      er_entity-counter = ls_et_so_detail-counter.
      er_entity-bom_it_nr = ls_et_so_detail-bom_it_nr.
      er_entity-bom_catego = ls_et_so_detail-bom_catego.
      er_entity-batch_exit = ls_et_so_detail-batch_exit.
      er_entity-intclassnr = ls_et_so_detail-intclassnr.
      er_entity-nrcondrec = ls_et_so_detail-nrcondrec.
      er_entity-pref_indic = ls_et_so_detail-pref_indic.
      er_entity-bus_transt = ls_et_so_detail-bus_transt.
      er_entity-stat_date = ls_et_so_detail-stat_date.
      er_entity-stat_val = ls_et_so_detail-stat_val.
      er_entity-bomitemnr = ls_et_so_detail-bomitemnr.
      er_entity-cstg_vrnt = ls_et_so_detail-cstg_vrnt.
      er_entity-costestnr = ls_et_so_detail-costestnr.
      er_entity-itusageid = ls_et_so_detail-itusageid.
      er_entity-matdeterid = ls_et_so_detail-matdeterid.
      er_entity-doc_cat_sd = ls_et_so_detail-doc_cat_sd.
      er_entity-man_pr_ch = ls_et_so_detail-man_pr_ch.
      er_entity-mat_grp_sm = ls_et_so_detail-mat_grp_sm.
      er_entity-nogrposted = ls_et_so_detail-nogrposted.
      er_entity-no_of_seri = ls_et_so_detail-no_of_seri.
      er_entity-serno_prof = ls_et_so_detail-serno_prof.
      er_entity-cond_updat = ls_et_so_detail-cond_updat.
      er_entity-stat_price = ls_et_so_detail-stat_price.
      er_entity-chclass_in = ls_et_so_detail-chclass_in.
      er_entity-config = ls_et_so_detail-config.
      er_entity-cr_exchrat = ls_et_so_detail-cr_exchrat.
      er_entity-actcredid = ls_et_so_detail-actcredid.
      er_entity-partrelid = ls_et_so_detail-partrelid.
      er_entity-credpricit = ls_et_so_detail-credpricit.
      er_entity-reqmtstyp = ls_et_so_detail-reqmtstyp.
      er_entity-res_anal = ls_et_so_detail-res_anal.
      er_entity-obj_nr_it = ls_et_so_detail-obj_nr_it.
      er_entity-bomexplno = ls_et_so_detail-bomexplno.
      er_entity-consumpt = ls_et_so_detail-consumpt.
      er_entity-acctasscat = ls_et_so_detail-acctasscat.
      er_entity-conv_fact = ls_et_so_detail-conv_fact.
      er_entity-isobasunit = ls_et_so_detail-isobasunit.
      er_entity-base_unit = ls_et_so_detail-base_unit.
      er_entity-plng_plant = ls_et_so_detail-plng_plant.
      er_entity-plng_matl = ls_et_so_detail-plng_matl.
      er_entity-orderid = ls_et_so_detail-orderid.
      er_entity-wbs_elem = ls_et_so_detail-wbs_elem.
      er_entity-profit_seg = ls_et_so_detail-profit_seg.
      er_entity-alloc_indi = ls_et_so_detail-alloc_indi.
      er_entity-spec_stock = ls_et_so_detail-spec_stock.
      er_entity-substreaso = ls_et_so_detail-substreaso.
      er_entity-compon_qty = ls_et_so_detail-compon_qty.
      er_entity-prc_group5 = ls_et_so_detail-prc_group5.
      er_entity-prc_group4 = ls_et_so_detail-prc_group4.
      er_entity-prc_group3 = ls_et_so_detail-prc_group3.
      er_entity-prc_group2 = ls_et_so_detail-prc_group2.
      er_entity-prc_group1 = ls_et_so_detail-prc_group1.
      er_entity-profit_ctr = ls_et_so_detail-profit_ctr.
      er_entity-fix_date = ls_et_so_detail-fix_date.
      er_entity-ean_upc = ls_et_so_detail-ean_upc.
      er_entity-ch_on = ls_et_so_detail-ch_on.
      er_entity-exch_rate = ls_et_so_detail-exch_rate.
      er_entity-subtot_pp6 = ls_et_so_detail-subtot_pp6.
      er_entity-subtot_pp5 = ls_et_so_detail-subtot_pp5.
      er_entity-subtot_pp4 = ls_et_so_detail-subtot_pp4.
      er_entity-subtot_pp3 = ls_et_so_detail-subtot_pp3.
      er_entity-subtot_pp2 = ls_et_so_detail-subtot_pp2.
      er_entity-subtot_pp1 = ls_et_so_detail-subtot_pp1.
      er_entity-cost_doc_c = ls_et_so_detail-cost_doc_c.
      er_entity-update_grp = ls_et_so_detail-update_grp.
      er_entity-min_dely = ls_et_so_detail-min_dely.
      er_entity-ind_btch = ls_et_so_detail-ind_btch.
      er_entity-batch_mgmt = ls_et_so_detail-batch_mgmt.
      er_entity-sep_valuat = ls_et_so_detail-sep_valuat.
      er_entity-val_type = ls_et_so_detail-val_type.
      er_entity-price_ok = ls_et_so_detail-price_ok.
      er_entity-eur_art_nr = ls_et_so_detail-eur_art_nr.
      er_entity-comm_group = ls_et_so_detail-comm_group.
      er_entity-rebate_grp = ls_et_so_detail-rebate_grp.
      er_entity-acct_assgt = ls_et_so_detail-acct_assgt.
      er_entity-mat_pr_grp = ls_et_so_detail-mat_pr_grp.
      er_entity-sum_requir = ls_et_so_detail-sum_requir.
      er_entity-availcheck = ls_et_so_detail-availcheck.
      er_entity-cash_disc = ls_et_so_detail-cash_disc.
      er_entity-retoure = ls_et_so_detail-retoure.
      er_entity-conisounit = ls_et_so_detail-conisounit.
      er_entity-cond_unit = ls_et_so_detail-cond_unit.
      er_entity-cond_p_unt = ls_et_so_detail-cond_p_unt.
      er_entity-net_price = ls_et_so_detail-net_price.
      er_entity-prec_doc = ls_et_so_detail-prec_doc.
      er_entity-var_sp_day = ls_et_so_detail-var_sp_day.
      er_entity-fix_sp_day = ls_et_so_detail-fix_sp_day.
      er_entity-tax_class9 = ls_et_so_detail-tax_class9.
      er_entity-tax_class8 = ls_et_so_detail-tax_class8.
      er_entity-tax_class7 = ls_et_so_detail-tax_class7.
      er_entity-tax_class6 = ls_et_so_detail-tax_class6.
      er_entity-tax_class5 = ls_et_so_detail-tax_class5.
      er_entity-tax_class4 = ls_et_so_detail-tax_class4.
      er_entity-tax_class3 = ls_et_so_detail-tax_class3.
      er_entity-tax_class2 = ls_et_so_detail-tax_class2.
      er_entity-tax_class1 = ls_et_so_detail-tax_class1.
      er_entity-rec_time = ls_et_so_detail-rec_time.
      er_entity-created_by = ls_et_so_detail-created_by.
      er_entity-creat_date = ls_et_so_detail-creat_date.
      er_entity-order_prob = ls_et_so_detail-order_prob.
      er_entity-stpos_vbap = ls_et_so_detail-stpos_vbap.
      er_entity-nbr_st = ls_et_so_detail-nbr_st.
      er_entity-date_st = ls_et_so_detail-date_st.
      er_entity-key_st = ls_et_so_detail-key_st.
      er_entity-route = ls_et_so_detail-route.
      er_entity-ship_point = ls_et_so_detail-ship_point.
      er_entity-stge_loc = ls_et_so_detail-stge_loc.
      er_entity-plant = ls_et_so_detail-plant.
      er_entity-dlv_prio = ls_et_so_detail-dlv_prio.
      er_entity-end_rule = ls_et_so_detail-end_rule.
      er_entity-updat_flag = ls_et_so_detail-updat_flag.
      er_entity-obj_copy = ls_et_so_detail-obj_copy.
      er_entity-posnr_vor = ls_et_so_detail-posnr_vor.
      er_entity-ref_doc = ls_et_so_detail-ref_doc.
      er_entity-cau_posnr = ls_et_so_detail-cau_posnr.
      er_entity-cau_vbeln = ls_et_so_detail-cau_vbeln.
      er_entity-volunitiso = ls_et_so_detail-volunitiso.
      er_entity-volumeunit = ls_et_so_detail-volumeunit.
      er_entity-volume = ls_et_so_detail-volume.
      er_entity-unit_wtiso = ls_et_so_detail-unit_wtiso.
      er_entity-unit_of_wt = ls_et_so_detail-unit_of_wt.
      er_entity-net_weight = ls_et_so_detail-net_weight.
      er_entity-gross_weig = ls_et_so_detail-gross_weig.
      er_entity-sales_qty2 = ls_et_so_detail-sales_qty2.
      er_entity-sales_qty1 = ls_et_so_detail-sales_qty1.
      er_entity-isocodunit = ls_et_so_detail-isocodunit.
      er_entity-sales_unit = ls_et_so_detail-sales_unit.
      er_entity-cum_con_qu = ls_et_so_detail-cum_con_qu.
      er_entity-cum_cf_qty = ls_et_so_detail-cum_cf_qty.
      er_entity-cum_req_de = ls_et_so_detail-cum_req_de.
      er_entity-req_qty = ls_et_so_detail-req_qty.
      er_entity-btch_split = ls_et_so_detail-btch_split.
      er_entity-part_dlv = ls_et_so_detail-part_dlv.
      er_entity-max_pl_dlv = ls_et_so_detail-max_pl_dlv.
      er_entity-curren_iso = ls_et_so_detail-curren_iso.
      er_entity-currency = ls_et_so_detail-currency.
      er_entity-net_value = ls_et_so_detail-net_value.
      er_entity-bus_area = ls_et_so_detail-bus_area.
      er_entity-division = ls_et_so_detail-division.
      er_entity-meth_bill = ls_et_so_detail-meth_bill.
      er_entity-replace_pt = ls_et_so_detail-replace_pt.
      er_entity-bill_block = ls_et_so_detail-bill_block.
      er_entity-under_dlv = ls_et_so_detail-under_dlv.
      er_entity-over_dlv_t = ls_et_so_detail-over_dlv_t.
      er_entity-deli_unlim = ls_et_so_detail-deli_unlim.
      er_entity-fixed_quan = ls_et_so_detail-fixed_quan.
      er_entity-dlv_group = ls_et_so_detail-dlv_group.
      er_entity-dlvschedus = ls_et_so_detail-dlvschedus.
      er_entity-repair_pro = ls_et_so_detail-repair_pro.
      er_entity-max_dev_da = ls_et_so_detail-max_dev_da.
      er_entity-max_dev_pe = ls_et_so_detail-max_dev_pe.
      er_entity-cust_mat22 = ls_et_so_detail-cust_mat22.
      er_entity-po_itm_no = ls_et_so_detail-po_itm_no.
      er_entity-max_deviat = ls_et_so_detail-max_deviat.
      er_entity-recon_date = ls_et_so_detail-recon_date.
      er_entity-round_dlv = ls_et_so_detail-round_dlv.
      er_entity-scale_quan = ls_et_so_detail-scale_quan.
      er_entity-t_bas_unit = ls_et_so_detail-t_bas_unit.
      er_entity-base_uom = ls_et_so_detail-base_uom.
      er_entity-targ_qty_d = ls_et_so_detail-targ_qty_d.
      er_entity-targ_qty_n = ls_et_so_detail-targ_qty_n.
      er_entity-t_unit_iso = ls_et_so_detail-t_unit_iso.
      er_entity-target_qu = ls_et_so_detail-target_qu.
      er_entity-target_qty = ls_et_so_detail-target_qty.
      er_entity-out_agr_ta = ls_et_so_detail-out_agr_ta.
      er_entity-prod_hier = ls_et_so_detail-prod_hier.
      er_entity-rea_for_re = ls_et_so_detail-rea_for_re.
      er_entity-altern_itm = ls_et_so_detail-altern_itm.
      er_entity-hg_lv_item = ls_et_so_detail-hg_lv_item.
      er_entity-rel_for_bi = ls_et_so_detail-rel_for_bi.
      er_entity-rel_for_de = ls_et_so_detail-rel_for_de.
      er_entity-item_type = ls_et_so_detail-item_type.
      er_entity-item_categ = ls_et_so_detail-item_categ.
      er_entity-short_text = ls_et_so_detail-short_text.
      er_entity-matl_group = ls_et_so_detail-matl_group.
      er_entity-batch = ls_et_so_detail-batch.
      er_entity-pr_ref_mat = ls_et_so_detail-pr_ref_mat.
      er_entity-mat_entrd = ls_et_so_detail-mat_entrd.
      er_entity-material = ls_et_so_detail-material.
      er_entity-itm_number = ls_et_so_detail-itm_number.
      er_entity-doc_number = ls_et_so_detail-doc_number.
      er_entity-operation = ls_et_so_detail-operation.
  endmethod.


  method ETSODETAILSET_GET_ENTITYSET.
*-------------------------------------------------------------
*  Data declaration
*-------------------------------------------------------------
 DATA i_saledoc TYPE zif_zca_salesorder_getdetail1=>bapivbeln-vbeln.
 DATA et_so_detail  TYPE zif_zca_salesorder_getdetail1=>__bapisditbos.
 DATA return  TYPE zif_zca_salesorder_getdetail1=>__bapiret2.
 DATA ls_et_so_detail  TYPE LINE OF zif_zca_salesorder_getdetail1=>__bapisditbos.
 DATA ls_return  TYPE LINE OF zif_zca_salesorder_getdetail1=>__bapiret2.
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
DATA lr_doc_number LIKE RANGE OF ls_converted_keys-doc_number.
DATA ls_doc_number LIKE LINE OF lr_doc_number.
DATA lo_dp_facade TYPE REF TO /iwbep/if_mgw_dp_facade.
DATA ls_gw_et_so_detail LIKE LINE OF et_entityset.
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
      WHEN 'DOC_NUMBER'.
        lo_filter->convert_select_option(
          EXPORTING
            is_select_option = ls_filter
          IMPORTING
            et_select_option = lr_doc_number ).

        READ TABLE lr_doc_number INTO ls_doc_number INDEX 1.
        IF sy-subrc = 0.
          i_saledoc = ls_doc_number-low.
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
lv_rfc_name = 'ZCA_SALESORDER_GETDETAIL'.

IF lv_destination IS INITIAL OR lv_destination EQ 'NONE'.

  TRY.
      CALL FUNCTION lv_rfc_name
        EXPORTING
          i_saledoc   =   i_saledoc
        TABLES
          return         =   return
          et_so_detail   =   et_so_detail
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
          i_saledoc   =   i_saledoc
        TABLES
          return         =   return
          et_so_detail   =   et_so_detail
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

IF return IS NOT INITIAL.
  me->/iwbep/if_sb_dpc_comm_services~rfc_save_log(
    EXPORTING
      iv_entity_type = iv_entity_name
      it_return      = return
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
  lv_top = lines( et_so_detail ).
ENDIF.

*  - Map properties from the backend to the Gateway output response table -

LOOP AT et_so_detail INTO ls_et_so_detail
*  Provide the response entries according to the Top and Skip parameters that were provided at runtime
     FROM lv_skip TO lv_top.
*  Only fields that were mapped will be delivered to the response table
 ls_gw_et_so_detail-doc_cat_sd_long = ls_et_so_detail-doc_cat_sd_long.
 ls_gw_et_so_detail-price_ref_long = ls_et_so_detail-price_ref_long.
 ls_gw_et_so_detail-plng_matl_long = ls_et_so_detail-plng_matl_long.
 ls_gw_et_so_detail-pr_ref_mat_long = ls_et_so_detail-pr_ref_mat_long.
 ls_gw_et_so_detail-mat_entrd_long = ls_et_so_detail-mat_entrd_long.
 ls_gw_et_so_detail-material_long = ls_et_so_detail-material_long.
 ls_gw_et_so_detail-pr_ref_mat_version = ls_et_so_detail-pr_ref_mat_version.
 ls_gw_et_so_detail-pr_ref_mat_guid = ls_et_so_detail-pr_ref_mat_guid.
 ls_gw_et_so_detail-pr_ref_mat_external = ls_et_so_detail-pr_ref_mat_external.
 ls_gw_et_so_detail-price_ref_version = ls_et_so_detail-price_ref_version.
 ls_gw_et_so_detail-price_ref_guid = ls_et_so_detail-price_ref_guid.
 ls_gw_et_so_detail-price_ref_external = ls_et_so_detail-price_ref_external.
 ls_gw_et_so_detail-plng_matl_version = ls_et_so_detail-plng_matl_version.
 ls_gw_et_so_detail-plng_matl_guid = ls_et_so_detail-plng_matl_guid.
 ls_gw_et_so_detail-plng_matl_external = ls_et_so_detail-plng_matl_external.
 ls_gw_et_so_detail-mat_entrd_version = ls_et_so_detail-mat_entrd_version.
 ls_gw_et_so_detail-mat_entrd_guid = ls_et_so_detail-mat_entrd_guid.
 ls_gw_et_so_detail-mat_entrd_external = ls_et_so_detail-mat_entrd_external.
 ls_gw_et_so_detail-material_version = ls_et_so_detail-material_version.
 ls_gw_et_so_detail-material_guid = ls_et_so_detail-material_guid.
 ls_gw_et_so_detail-material_external = ls_et_so_detail-material_external.
 ls_gw_et_so_detail-pckg_no = ls_et_so_detail-pckg_no.
 ls_gw_et_so_detail-exchratest_v = ls_et_so_detail-exchratest_v.
 ls_gw_et_so_detail-cr_exchrat_v = ls_et_so_detail-cr_exchrat_v.
 ls_gw_et_so_detail-cust_mat35 = ls_et_so_detail-cust_mat35.
 ls_gw_et_so_detail-mrp_area = ls_et_so_detail-mrp_area.
 ls_gw_et_so_detail-tax_amount = ls_et_so_detail-tax_amount.
 ls_gw_et_so_detail-valid_obj = ls_et_so_detail-valid_obj.
 ls_gw_et_so_detail-free_goods = ls_et_so_detail-free_goods.
 ls_gw_et_so_detail-flgleaduni = ls_et_so_detail-flgleaduni.
 ls_gw_et_so_detail-sales_deal = ls_et_so_detail-sales_deal.
 ls_gw_et_so_detail-promotion = ls_et_so_detail-promotion.
 ls_gw_et_so_detail-matgrhie2 = ls_et_so_detail-matgrhie2.
 ls_gw_et_so_detail-matgrhie1 = ls_et_so_detail-matgrhie1.
 ls_gw_et_so_detail-valspecsto = ls_et_so_detail-valspecsto.
 ls_gw_et_so_detail-assort_mod = ls_et_so_detail-assort_mod.
 ls_gw_et_so_detail-valcontrit = ls_et_so_detail-valcontrit.
 ls_gw_et_so_detail-valcontrnr = ls_et_so_detail-valcontrnr.
 ls_gw_et_so_detail-sd_taxcode = ls_et_so_detail-sd_taxcode.
 ls_gw_et_so_detail-taxlawipi = ls_et_so_detail-taxlawipi.
 ls_gw_et_so_detail-taxlawicms = ls_et_so_detail-taxlawicms.
 ls_gw_et_so_detail-cfop_code = ls_et_so_detail-cfop_code.
 ls_gw_et_so_detail-guranteed = ls_et_so_detail-guranteed.
 ls_gw_et_so_detail-pay_guaran = ls_et_so_detail-pay_guaran.
 ls_gw_et_so_detail-credpric = ls_et_so_detail-credpric.
 ls_gw_et_so_detail-sequenceno = ls_et_so_detail-sequenceno.
 ls_gw_et_so_detail-plandlvsch = ls_et_so_detail-plandlvsch.
 ls_gw_et_so_detail-matfrgtgrp = ls_et_so_detail-matfrgtgrp.
 ls_gw_et_so_detail-matpricgrp = ls_et_so_detail-matpricgrp.
 ls_gw_et_so_detail-price_ref = ls_et_so_detail-price_ref.
 ls_gw_et_so_detail-prod_alloc = ls_et_so_detail-prod_alloc.
 ls_gw_et_so_detail-cstg_vrnt1 = ls_et_so_detail-cstg_vrnt1.
 ls_gw_et_so_detail-cstg_sheet = ls_et_so_detail-cstg_sheet.
 ls_gw_et_so_detail-overh_key = ls_et_so_detail-overh_key.
 ls_gw_et_so_detail-inconsconf = ls_et_so_detail-inconsconf.
 ls_gw_et_so_detail-counter = ls_et_so_detail-counter.
 ls_gw_et_so_detail-bom_it_nr = ls_et_so_detail-bom_it_nr.
 ls_gw_et_so_detail-bom_catego = ls_et_so_detail-bom_catego.
 ls_gw_et_so_detail-batch_exit = ls_et_so_detail-batch_exit.
 ls_gw_et_so_detail-intclassnr = ls_et_so_detail-intclassnr.
 ls_gw_et_so_detail-nrcondrec = ls_et_so_detail-nrcondrec.
 ls_gw_et_so_detail-pref_indic = ls_et_so_detail-pref_indic.
 ls_gw_et_so_detail-bus_transt = ls_et_so_detail-bus_transt.
 ls_gw_et_so_detail-stat_date = ls_et_so_detail-stat_date.
 ls_gw_et_so_detail-stat_val = ls_et_so_detail-stat_val.
 ls_gw_et_so_detail-bomitemnr = ls_et_so_detail-bomitemnr.
 ls_gw_et_so_detail-cstg_vrnt = ls_et_so_detail-cstg_vrnt.
 ls_gw_et_so_detail-costestnr = ls_et_so_detail-costestnr.
 ls_gw_et_so_detail-itusageid = ls_et_so_detail-itusageid.
 ls_gw_et_so_detail-matdeterid = ls_et_so_detail-matdeterid.
 ls_gw_et_so_detail-doc_cat_sd = ls_et_so_detail-doc_cat_sd.
 ls_gw_et_so_detail-man_pr_ch = ls_et_so_detail-man_pr_ch.
 ls_gw_et_so_detail-mat_grp_sm = ls_et_so_detail-mat_grp_sm.
 ls_gw_et_so_detail-nogrposted = ls_et_so_detail-nogrposted.
 ls_gw_et_so_detail-no_of_seri = ls_et_so_detail-no_of_seri.
 ls_gw_et_so_detail-serno_prof = ls_et_so_detail-serno_prof.
 ls_gw_et_so_detail-cond_updat = ls_et_so_detail-cond_updat.
 ls_gw_et_so_detail-stat_price = ls_et_so_detail-stat_price.
 ls_gw_et_so_detail-chclass_in = ls_et_so_detail-chclass_in.
 ls_gw_et_so_detail-config = ls_et_so_detail-config.
 ls_gw_et_so_detail-cr_exchrat = ls_et_so_detail-cr_exchrat.
 ls_gw_et_so_detail-actcredid = ls_et_so_detail-actcredid.
 ls_gw_et_so_detail-partrelid = ls_et_so_detail-partrelid.
 ls_gw_et_so_detail-credpricit = ls_et_so_detail-credpricit.
 ls_gw_et_so_detail-reqmtstyp = ls_et_so_detail-reqmtstyp.
 ls_gw_et_so_detail-res_anal = ls_et_so_detail-res_anal.
 ls_gw_et_so_detail-obj_nr_it = ls_et_so_detail-obj_nr_it.
 ls_gw_et_so_detail-bomexplno = ls_et_so_detail-bomexplno.
 ls_gw_et_so_detail-consumpt = ls_et_so_detail-consumpt.
 ls_gw_et_so_detail-acctasscat = ls_et_so_detail-acctasscat.
 ls_gw_et_so_detail-conv_fact = ls_et_so_detail-conv_fact.
 ls_gw_et_so_detail-isobasunit = ls_et_so_detail-isobasunit.
 ls_gw_et_so_detail-base_unit = ls_et_so_detail-base_unit.
 ls_gw_et_so_detail-plng_plant = ls_et_so_detail-plng_plant.
 ls_gw_et_so_detail-plng_matl = ls_et_so_detail-plng_matl.
 ls_gw_et_so_detail-orderid = ls_et_so_detail-orderid.
 ls_gw_et_so_detail-wbs_elem = ls_et_so_detail-wbs_elem.
 ls_gw_et_so_detail-profit_seg = ls_et_so_detail-profit_seg.
 ls_gw_et_so_detail-alloc_indi = ls_et_so_detail-alloc_indi.
 ls_gw_et_so_detail-spec_stock = ls_et_so_detail-spec_stock.
 ls_gw_et_so_detail-substreaso = ls_et_so_detail-substreaso.
 ls_gw_et_so_detail-compon_qty = ls_et_so_detail-compon_qty.
 ls_gw_et_so_detail-prc_group5 = ls_et_so_detail-prc_group5.
 ls_gw_et_so_detail-prc_group4 = ls_et_so_detail-prc_group4.
 ls_gw_et_so_detail-prc_group3 = ls_et_so_detail-prc_group3.
 ls_gw_et_so_detail-prc_group2 = ls_et_so_detail-prc_group2.
 ls_gw_et_so_detail-prc_group1 = ls_et_so_detail-prc_group1.
 ls_gw_et_so_detail-profit_ctr = ls_et_so_detail-profit_ctr.
 ls_gw_et_so_detail-fix_date = ls_et_so_detail-fix_date.
 ls_gw_et_so_detail-ean_upc = ls_et_so_detail-ean_upc.
 ls_gw_et_so_detail-ch_on = ls_et_so_detail-ch_on.
 ls_gw_et_so_detail-exch_rate = ls_et_so_detail-exch_rate.
 ls_gw_et_so_detail-subtot_pp6 = ls_et_so_detail-subtot_pp6.
 ls_gw_et_so_detail-subtot_pp5 = ls_et_so_detail-subtot_pp5.
 ls_gw_et_so_detail-subtot_pp4 = ls_et_so_detail-subtot_pp4.
 ls_gw_et_so_detail-subtot_pp3 = ls_et_so_detail-subtot_pp3.
 ls_gw_et_so_detail-subtot_pp2 = ls_et_so_detail-subtot_pp2.
 ls_gw_et_so_detail-subtot_pp1 = ls_et_so_detail-subtot_pp1.
 ls_gw_et_so_detail-cost_doc_c = ls_et_so_detail-cost_doc_c.
 ls_gw_et_so_detail-update_grp = ls_et_so_detail-update_grp.
 ls_gw_et_so_detail-min_dely = ls_et_so_detail-min_dely.
 ls_gw_et_so_detail-ind_btch = ls_et_so_detail-ind_btch.
 ls_gw_et_so_detail-batch_mgmt = ls_et_so_detail-batch_mgmt.
 ls_gw_et_so_detail-sep_valuat = ls_et_so_detail-sep_valuat.
 ls_gw_et_so_detail-val_type = ls_et_so_detail-val_type.
 ls_gw_et_so_detail-price_ok = ls_et_so_detail-price_ok.
 ls_gw_et_so_detail-eur_art_nr = ls_et_so_detail-eur_art_nr.
 ls_gw_et_so_detail-comm_group = ls_et_so_detail-comm_group.
 ls_gw_et_so_detail-rebate_grp = ls_et_so_detail-rebate_grp.
 ls_gw_et_so_detail-acct_assgt = ls_et_so_detail-acct_assgt.
 ls_gw_et_so_detail-mat_pr_grp = ls_et_so_detail-mat_pr_grp.
 ls_gw_et_so_detail-sum_requir = ls_et_so_detail-sum_requir.
 ls_gw_et_so_detail-availcheck = ls_et_so_detail-availcheck.
 ls_gw_et_so_detail-cash_disc = ls_et_so_detail-cash_disc.
 ls_gw_et_so_detail-retoure = ls_et_so_detail-retoure.
 ls_gw_et_so_detail-conisounit = ls_et_so_detail-conisounit.
 ls_gw_et_so_detail-cond_unit = ls_et_so_detail-cond_unit.
 ls_gw_et_so_detail-cond_p_unt = ls_et_so_detail-cond_p_unt.
 ls_gw_et_so_detail-net_price = ls_et_so_detail-net_price.
 ls_gw_et_so_detail-prec_doc = ls_et_so_detail-prec_doc.
 ls_gw_et_so_detail-var_sp_day = ls_et_so_detail-var_sp_day.
 ls_gw_et_so_detail-fix_sp_day = ls_et_so_detail-fix_sp_day.
 ls_gw_et_so_detail-tax_class9 = ls_et_so_detail-tax_class9.
 ls_gw_et_so_detail-tax_class8 = ls_et_so_detail-tax_class8.
 ls_gw_et_so_detail-tax_class7 = ls_et_so_detail-tax_class7.
 ls_gw_et_so_detail-tax_class6 = ls_et_so_detail-tax_class6.
 ls_gw_et_so_detail-tax_class5 = ls_et_so_detail-tax_class5.
 ls_gw_et_so_detail-tax_class4 = ls_et_so_detail-tax_class4.
 ls_gw_et_so_detail-tax_class3 = ls_et_so_detail-tax_class3.
 ls_gw_et_so_detail-tax_class2 = ls_et_so_detail-tax_class2.
 ls_gw_et_so_detail-tax_class1 = ls_et_so_detail-tax_class1.
 ls_gw_et_so_detail-rec_time = ls_et_so_detail-rec_time.
 ls_gw_et_so_detail-created_by = ls_et_so_detail-created_by.
 ls_gw_et_so_detail-creat_date = ls_et_so_detail-creat_date.
 ls_gw_et_so_detail-order_prob = ls_et_so_detail-order_prob.
 ls_gw_et_so_detail-stpos_vbap = ls_et_so_detail-stpos_vbap.
 ls_gw_et_so_detail-nbr_st = ls_et_so_detail-nbr_st.
 ls_gw_et_so_detail-date_st = ls_et_so_detail-date_st.
 ls_gw_et_so_detail-key_st = ls_et_so_detail-key_st.
 ls_gw_et_so_detail-route = ls_et_so_detail-route.
 ls_gw_et_so_detail-ship_point = ls_et_so_detail-ship_point.
 ls_gw_et_so_detail-stge_loc = ls_et_so_detail-stge_loc.
 ls_gw_et_so_detail-plant = ls_et_so_detail-plant.
 ls_gw_et_so_detail-dlv_prio = ls_et_so_detail-dlv_prio.
 ls_gw_et_so_detail-end_rule = ls_et_so_detail-end_rule.
 ls_gw_et_so_detail-updat_flag = ls_et_so_detail-updat_flag.
 ls_gw_et_so_detail-obj_copy = ls_et_so_detail-obj_copy.
 ls_gw_et_so_detail-posnr_vor = ls_et_so_detail-posnr_vor.
 ls_gw_et_so_detail-ref_doc = ls_et_so_detail-ref_doc.
 ls_gw_et_so_detail-cau_posnr = ls_et_so_detail-cau_posnr.
 ls_gw_et_so_detail-cau_vbeln = ls_et_so_detail-cau_vbeln.
 ls_gw_et_so_detail-volunitiso = ls_et_so_detail-volunitiso.
 ls_gw_et_so_detail-volumeunit = ls_et_so_detail-volumeunit.
 ls_gw_et_so_detail-volume = ls_et_so_detail-volume.
 ls_gw_et_so_detail-unit_wtiso = ls_et_so_detail-unit_wtiso.
 ls_gw_et_so_detail-unit_of_wt = ls_et_so_detail-unit_of_wt.
 ls_gw_et_so_detail-net_weight = ls_et_so_detail-net_weight.
 ls_gw_et_so_detail-gross_weig = ls_et_so_detail-gross_weig.
 ls_gw_et_so_detail-sales_qty2 = ls_et_so_detail-sales_qty2.
 ls_gw_et_so_detail-sales_qty1 = ls_et_so_detail-sales_qty1.
 ls_gw_et_so_detail-isocodunit = ls_et_so_detail-isocodunit.
 ls_gw_et_so_detail-sales_unit = ls_et_so_detail-sales_unit.
 ls_gw_et_so_detail-cum_con_qu = ls_et_so_detail-cum_con_qu.
 ls_gw_et_so_detail-cum_cf_qty = ls_et_so_detail-cum_cf_qty.
 ls_gw_et_so_detail-cum_req_de = ls_et_so_detail-cum_req_de.
 ls_gw_et_so_detail-req_qty = ls_et_so_detail-req_qty.
 ls_gw_et_so_detail-btch_split = ls_et_so_detail-btch_split.
 ls_gw_et_so_detail-part_dlv = ls_et_so_detail-part_dlv.
 ls_gw_et_so_detail-max_pl_dlv = ls_et_so_detail-max_pl_dlv.
 ls_gw_et_so_detail-curren_iso = ls_et_so_detail-curren_iso.
 ls_gw_et_so_detail-currency = ls_et_so_detail-currency.
 ls_gw_et_so_detail-net_value = ls_et_so_detail-net_value.
 ls_gw_et_so_detail-bus_area = ls_et_so_detail-bus_area.
 ls_gw_et_so_detail-division = ls_et_so_detail-division.
 ls_gw_et_so_detail-meth_bill = ls_et_so_detail-meth_bill.
 ls_gw_et_so_detail-replace_pt = ls_et_so_detail-replace_pt.
 ls_gw_et_so_detail-bill_block = ls_et_so_detail-bill_block.
 ls_gw_et_so_detail-under_dlv = ls_et_so_detail-under_dlv.
 ls_gw_et_so_detail-over_dlv_t = ls_et_so_detail-over_dlv_t.
 ls_gw_et_so_detail-deli_unlim = ls_et_so_detail-deli_unlim.
 ls_gw_et_so_detail-fixed_quan = ls_et_so_detail-fixed_quan.
 ls_gw_et_so_detail-dlv_group = ls_et_so_detail-dlv_group.
 ls_gw_et_so_detail-dlvschedus = ls_et_so_detail-dlvschedus.
 ls_gw_et_so_detail-repair_pro = ls_et_so_detail-repair_pro.
 ls_gw_et_so_detail-max_dev_da = ls_et_so_detail-max_dev_da.
 ls_gw_et_so_detail-max_dev_pe = ls_et_so_detail-max_dev_pe.
 ls_gw_et_so_detail-cust_mat22 = ls_et_so_detail-cust_mat22.
 ls_gw_et_so_detail-po_itm_no = ls_et_so_detail-po_itm_no.
 ls_gw_et_so_detail-max_deviat = ls_et_so_detail-max_deviat.
 ls_gw_et_so_detail-recon_date = ls_et_so_detail-recon_date.
 ls_gw_et_so_detail-round_dlv = ls_et_so_detail-round_dlv.
 ls_gw_et_so_detail-scale_quan = ls_et_so_detail-scale_quan.
 ls_gw_et_so_detail-t_bas_unit = ls_et_so_detail-t_bas_unit.
 ls_gw_et_so_detail-base_uom = ls_et_so_detail-base_uom.
 ls_gw_et_so_detail-targ_qty_d = ls_et_so_detail-targ_qty_d.
 ls_gw_et_so_detail-targ_qty_n = ls_et_so_detail-targ_qty_n.
 ls_gw_et_so_detail-t_unit_iso = ls_et_so_detail-t_unit_iso.
 ls_gw_et_so_detail-target_qu = ls_et_so_detail-target_qu.
 ls_gw_et_so_detail-target_qty = ls_et_so_detail-target_qty.
 ls_gw_et_so_detail-out_agr_ta = ls_et_so_detail-out_agr_ta.
 ls_gw_et_so_detail-prod_hier = ls_et_so_detail-prod_hier.
 ls_gw_et_so_detail-rea_for_re = ls_et_so_detail-rea_for_re.
 ls_gw_et_so_detail-altern_itm = ls_et_so_detail-altern_itm.
 ls_gw_et_so_detail-hg_lv_item = ls_et_so_detail-hg_lv_item.
 ls_gw_et_so_detail-rel_for_bi = ls_et_so_detail-rel_for_bi.
 ls_gw_et_so_detail-rel_for_de = ls_et_so_detail-rel_for_de.
 ls_gw_et_so_detail-item_type = ls_et_so_detail-item_type.
 ls_gw_et_so_detail-item_categ = ls_et_so_detail-item_categ.
 ls_gw_et_so_detail-short_text = ls_et_so_detail-short_text.
 ls_gw_et_so_detail-matl_group = ls_et_so_detail-matl_group.
 ls_gw_et_so_detail-batch = ls_et_so_detail-batch.
 ls_gw_et_so_detail-pr_ref_mat = ls_et_so_detail-pr_ref_mat.
 ls_gw_et_so_detail-mat_entrd = ls_et_so_detail-mat_entrd.
 ls_gw_et_so_detail-material = ls_et_so_detail-material.
 ls_gw_et_so_detail-itm_number = ls_et_so_detail-itm_number.
 ls_gw_et_so_detail-doc_number = ls_et_so_detail-doc_number.
 ls_gw_et_so_detail-operation = ls_et_so_detail-operation.
APPEND ls_gw_et_so_detail TO et_entityset.
CLEAR ls_gw_et_so_detail.
ENDLOOP.

  endmethod.


  method ETSODETAILSET_UPDATE_ENTITY.
  RAISE EXCEPTION TYPE /iwbep/cx_mgw_not_impl_exc
    EXPORTING
      textid = /iwbep/cx_mgw_not_impl_exc=>method_not_implemented
      method = 'ETSODETAILSET_UPDATE_ENTITY'.
  endmethod.


  method ETSOLISTSET_CREATE_ENTITY.
*-------------------------------------------------------------
*  Data declaration
*-------------------------------------------------------------
 DATA i_customer TYPE zif_zca_salesorder_create=>kunnr.
 DATA i_vbeln TYPE zif_zca_salesorder_create=>vbeln_va.
 DATA it_orderitems  TYPE zif_zca_salesorder_create=>zca_in_salesorder_tt.
 DATA t_return  TYPE zif_zca_salesorder_create=>__bapiret2.
 DATA ls_it_orderitems  TYPE LINE OF zif_zca_salesorder_create=>zca_in_salesorder_tt.
 DATA ls_t_return  TYPE LINE OF zif_zca_salesorder_create=>__bapiret2.
 DATA lv_rfc_name TYPE tfdir-funcname.
 DATA lv_destination TYPE rfcdest.
 DATA lv_subrc TYPE syst-subrc.
 DATA lv_exc_msg TYPE /iwbep/mgw_bop_rfc_excep_text.
 DATA lx_root TYPE REF TO cx_root.
DATA ls_request_input_data TYPE zcl_zcagw_so_01_01_mpc=>ts_etsolist.
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
       i_customer = ls_request_input_data-sold_to.
       i_vbeln = ls_request_input_data-sd_doc.
       ls_it_orderitems-req_qty = ls_request_input_data-req_qty.
       ls_it_orderitems-material = ls_request_input_data-material.

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
          i_customer      =   i_customer
          it_orderitems   =   it_orderitems
          i_vbeln         =   i_vbeln
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
          i_customer      =   i_customer
          it_orderitems   =   it_orderitems
          i_vbeln         =   i_vbeln
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


  method ETSOLISTSET_DELETE_ENTITY.
  RAISE EXCEPTION TYPE /iwbep/cx_mgw_not_impl_exc
    EXPORTING
      textid = /iwbep/cx_mgw_not_impl_exc=>method_not_implemented
      method = 'ETSOLISTSET_DELETE_ENTITY'.
  endmethod.


  method ETSOLISTSET_GET_ENTITY.
*-------------------------------------------------------------
*  Data declaration
*-------------------------------------------------------------
 DATA i_vbeln TYPE zif_zca_salesorder_getlist3=>vbeln.
 DATA et_so_list  TYPE zif_zca_salesorder_getlist3=>zca_salesorder_tt.
 DATA ls_et_so_list  TYPE LINE OF zif_zca_salesorder_getlist3=>zca_salesorder_tt.
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

    IF lv_source_entity_set_name = 'EtSoListSet' AND
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
      er_entity-purch_no_c = ls_et_so_list-purch_no_c.
      er_entity-curr_iso = ls_et_so_list-curr_iso.
      er_entity-s_unit_iso = ls_et_so_list-s_unit_iso.
      er_entity-cd_unt_iso = ls_et_so_list-cd_unt_iso.
      er_entity-b_uom_iso = ls_et_so_list-b_uom_iso.
      er_entity-reason_rej = ls_et_so_list-reason_rej.
      er_entity-ord_reason = ls_et_so_list-ord_reason.
      er_entity-store_loc = ls_et_so_list-store_loc.
      er_entity-plant = ls_et_so_list-plant.
      er_entity-currency = ls_et_so_list-currency.
      er_entity-gi_date = ls_et_so_list-gi_date.
      er_entity-distr_chan = ls_et_so_list-distr_chan.
      er_entity-ship_point = ls_et_so_list-ship_point.
      er_entity-sales_unit = ls_et_so_list-sales_unit.
      er_entity-sales_org = ls_et_so_list-sales_org.
      er_entity-doc_status = ls_et_so_list-doc_status.
      er_entity-division = ls_et_so_list-division.
      er_entity-net_value = ls_et_so_list-net_value.
      er_entity-cond_unit = ls_et_so_list-cond_unit.
      er_entity-cond_p_unt = ls_et_so_list-cond_p_unt.
      er_entity-net_price = ls_et_so_list-net_price.
      er_entity-base_uom = ls_et_so_list-base_uom.
      er_entity-dlv_qty = ls_et_so_list-dlv_qty.
      er_entity-exchg_rate = ls_et_so_list-exchg_rate.
      er_entity-name = ls_et_so_list-name.
      er_entity-sold_to = ls_et_so_list-sold_to.
      er_entity-dlv_block = ls_et_so_list-dlv_block.
      er_entity-bill_block = ls_et_so_list-bill_block.
      er_entity-valid_to = ls_et_so_list-valid_to.
      er_entity-valid_from = ls_et_so_list-valid_from.
      er_entity-purch_no = ls_et_so_list-purch_no.
      er_entity-req_date = ls_et_so_list-req_date.
      er_entity-req_qty = ls_et_so_list-req_qty.
      er_entity-doc_date = ls_et_so_list-doc_date.
      er_entity-doc_type = ls_et_so_list-doc_type.
      er_entity-short_text = ls_et_so_list-short_text.
      er_entity-material = ls_et_so_list-material.
      er_entity-itm_number = ls_et_so_list-itm_number.
      er_entity-sd_doc = ls_et_so_list-sd_doc.
      er_entity-mandt = ls_et_so_list-mandt.
  endmethod.


  method ETSOLISTSET_GET_ENTITYSET.
*-------------------------------------------------------------
*  Data declaration
*-------------------------------------------------------------
 DATA i_customer TYPE zif_zca_salesorder_getlist3=>kunnr.
 DATA i_dlvblk TYPE zif_zca_salesorder_getlist3=>lifsk.
 DATA i_docdate TYPE zif_zca_salesorder_getlist3=>zca_docdate_wa.
 DATA i_status TYPE zif_zca_salesorder_getlist3=>uvall.
 DATA i_vbeln TYPE zif_zca_salesorder_getlist3=>vbeln.
 DATA et_so_list  TYPE zif_zca_salesorder_getlist3=>zca_salesorder_tt.
 DATA ls_et_so_list  TYPE LINE OF zif_zca_salesorder_getlist3=>zca_salesorder_tt.
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
DATA lr_doc_status LIKE RANGE OF ls_converted_keys-doc_status.
DATA ls_doc_status LIKE LINE OF lr_doc_status.
DATA lr_sold_to LIKE RANGE OF ls_converted_keys-sold_to.
DATA ls_sold_to LIKE LINE OF lr_sold_to.
DATA lr_dlv_block LIKE RANGE OF ls_converted_keys-dlv_block.
DATA ls_dlv_block LIKE LINE OF lr_dlv_block.
DATA lr_sd_doc LIKE RANGE OF ls_converted_keys-sd_doc.
DATA ls_sd_doc LIKE LINE OF lr_sd_doc.
DATA lr_doc_date LIKE RANGE OF ls_converted_keys-doc_date.
DATA ls_doc_date LIKE LINE OF lr_doc_date.
DATA lo_dp_facade TYPE REF TO /iwbep/if_mgw_dp_facade.
DATA ls_gw_et_so_list LIKE LINE OF et_entityset.
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
      WHEN 'DOC_STATUS'.
        lo_filter->convert_select_option(
          EXPORTING
            is_select_option = ls_filter
          IMPORTING
            et_select_option = lr_doc_status ).

        READ TABLE lr_doc_status INTO ls_doc_status INDEX 1.
        IF sy-subrc = 0.
          i_status = ls_doc_status-low.
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
      WHEN 'DLV_BLOCK'.
        lo_filter->convert_select_option(
          EXPORTING
            is_select_option = ls_filter
          IMPORTING
            et_select_option = lr_dlv_block ).

        READ TABLE lr_dlv_block INTO ls_dlv_block INDEX 1.
        IF sy-subrc = 0.
          i_dlvblk = ls_dlv_block-low.
        ENDIF.
      WHEN 'SD_DOC'.
        lo_filter->convert_select_option(
          EXPORTING
            is_select_option = ls_filter
          IMPORTING
            et_select_option = lr_sd_doc ).

        READ TABLE lr_sd_doc INTO ls_sd_doc INDEX 1.
        IF sy-subrc = 0.
          i_vbeln = ls_sd_doc-low.
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
lv_rfc_name = 'ZCA_SALESORDER_GETLIST'.

IF lv_destination IS INITIAL OR lv_destination EQ 'NONE'.

  TRY.
      CALL FUNCTION lv_rfc_name
        EXPORTING
          i_status     =   i_status
          i_customer   =   i_customer
          i_dlvblk     =   i_dlvblk
          i_docdate    =   i_docdate
          i_vbeln      =   i_vbeln
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
          i_status     =   i_status
          i_customer   =   i_customer
          i_dlvblk     =   i_dlvblk
          i_docdate    =   i_docdate
          i_vbeln      =   i_vbeln
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
  lv_top = lines( et_so_list ).
ENDIF.

*  - Map properties from the backend to the Gateway output response table -

LOOP AT et_so_list INTO ls_et_so_list
*  Provide the response entries according to the Top and Skip parameters that were provided at runtime
     FROM lv_skip TO lv_top.
*  Only fields that were mapped will be delivered to the response table
 ls_gw_et_so_list-purch_no_c = ls_et_so_list-purch_no_c.
 ls_gw_et_so_list-curr_iso = ls_et_so_list-curr_iso.
 ls_gw_et_so_list-s_unit_iso = ls_et_so_list-s_unit_iso.
 ls_gw_et_so_list-cd_unt_iso = ls_et_so_list-cd_unt_iso.
 ls_gw_et_so_list-b_uom_iso = ls_et_so_list-b_uom_iso.
 ls_gw_et_so_list-reason_rej = ls_et_so_list-reason_rej.
 ls_gw_et_so_list-ord_reason = ls_et_so_list-ord_reason.
 ls_gw_et_so_list-store_loc = ls_et_so_list-store_loc.
 ls_gw_et_so_list-plant = ls_et_so_list-plant.
 ls_gw_et_so_list-currency = ls_et_so_list-currency.
 ls_gw_et_so_list-gi_date = ls_et_so_list-gi_date.
 ls_gw_et_so_list-distr_chan = ls_et_so_list-distr_chan.
 ls_gw_et_so_list-ship_point = ls_et_so_list-ship_point.
 ls_gw_et_so_list-sales_unit = ls_et_so_list-sales_unit.
 ls_gw_et_so_list-sales_org = ls_et_so_list-sales_org.
 ls_gw_et_so_list-doc_status = ls_et_so_list-doc_status.
 ls_gw_et_so_list-division = ls_et_so_list-division.
 ls_gw_et_so_list-net_value = ls_et_so_list-net_value.
 ls_gw_et_so_list-cond_unit = ls_et_so_list-cond_unit.
 ls_gw_et_so_list-cond_p_unt = ls_et_so_list-cond_p_unt.
 ls_gw_et_so_list-net_price = ls_et_so_list-net_price.
 ls_gw_et_so_list-base_uom = ls_et_so_list-base_uom.
 ls_gw_et_so_list-dlv_qty = ls_et_so_list-dlv_qty.
 ls_gw_et_so_list-exchg_rate = ls_et_so_list-exchg_rate.
 ls_gw_et_so_list-name = ls_et_so_list-name.
 ls_gw_et_so_list-sold_to = ls_et_so_list-sold_to.
 ls_gw_et_so_list-dlv_block = ls_et_so_list-dlv_block.
 ls_gw_et_so_list-bill_block = ls_et_so_list-bill_block.
 ls_gw_et_so_list-valid_to = ls_et_so_list-valid_to.
 ls_gw_et_so_list-valid_from = ls_et_so_list-valid_from.
 ls_gw_et_so_list-purch_no = ls_et_so_list-purch_no.
 ls_gw_et_so_list-req_date = ls_et_so_list-req_date.
 ls_gw_et_so_list-req_qty = ls_et_so_list-req_qty.
 ls_gw_et_so_list-doc_date = ls_et_so_list-doc_date.
 ls_gw_et_so_list-doc_type = ls_et_so_list-doc_type.
 ls_gw_et_so_list-short_text = ls_et_so_list-short_text.
 ls_gw_et_so_list-material = ls_et_so_list-material.
 ls_gw_et_so_list-itm_number = ls_et_so_list-itm_number.
 ls_gw_et_so_list-sd_doc = ls_et_so_list-sd_doc.
 ls_gw_et_so_list-mandt = ls_et_so_list-mandt.
APPEND ls_gw_et_so_list TO et_entityset.
CLEAR ls_gw_et_so_list.
ENDLOOP.

  endmethod.


  method ETSOLISTSET_UPDATE_ENTITY.
  RAISE EXCEPTION TYPE /iwbep/cx_mgw_not_impl_exc
    EXPORTING
      textid = /iwbep/cx_mgw_not_impl_exc=>method_not_implemented
      method = 'ETSOLISTSET_UPDATE_ENTITY'.
  endmethod.


  method SALESORDERSET_CREATE_ENTITY.
*-------------------------------------------------------------
*  Data declaration
*-------------------------------------------------------------
 DATA i_customer TYPE zif_zca_salesorder_create=>kunnr.
 DATA i_vbeln TYPE zif_zca_salesorder_create=>vbeln_va.
 DATA e_vbeln TYPE zif_zca_salesorder_create=>vbeln_va.
 DATA it_orderitems  TYPE zif_zca_salesorder_create=>zca_in_salesorder_tt.
 DATA t_return  TYPE zif_zca_salesorder_create=>__bapiret2.
 DATA ls_it_orderitems  TYPE LINE OF zif_zca_salesorder_create=>zca_in_salesorder_tt.
 DATA ls_t_return  TYPE LINE OF zif_zca_salesorder_create=>__bapiret2.
 DATA lv_rfc_name TYPE tfdir-funcname.
 DATA lv_destination TYPE rfcdest.
 DATA lv_subrc TYPE syst-subrc.
 DATA lv_exc_msg TYPE /iwbep/mgw_bop_rfc_excep_text.
 DATA lx_root TYPE REF TO cx_root.
DATA ls_request_input_data TYPE zcl_zcagw_so_01_01_mpc=>ts_salesorder.
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
       i_customer = ls_request_input_data-sold_to.
       i_vbeln = ls_request_input_data-sd_doc.
       ls_it_orderitems-store_loc = ls_request_input_data-store_loc.
       ls_it_orderitems-plant = ls_request_input_data-plant.
       ls_it_orderitems-req_qty = ls_request_input_data-req_qty.
       ls_it_orderitems-material = ls_request_input_data-material.
       ls_it_orderitems-itm_number = ls_request_input_data-itm_number.

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
          it_orderitems   =   it_orderitems
          i_customer      =   i_customer
          i_vbeln         =   i_vbeln
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
          it_orderitems   =   it_orderitems
          i_customer      =   i_customer
          i_vbeln         =   i_vbeln
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

        ls_key-name = 'SD_DOC'.
        ls_key-value = e_vbeln.
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
 DATA i_vbeln TYPE zif_zca_salesorder_getlist3=>vbeln.
 DATA et_so_list  TYPE zif_zca_salesorder_getlist3=>zca_salesorder_tt.
 DATA ls_et_so_list  TYPE LINE OF zif_zca_salesorder_getlist3=>zca_salesorder_tt.
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

    IF lv_source_entity_set_name = 'SalesOrderSet' AND
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
      er_entity-purch_no_c = ls_et_so_list-purch_no_c.
      er_entity-curr_iso = ls_et_so_list-curr_iso.
      er_entity-s_unit_iso = ls_et_so_list-s_unit_iso.
      er_entity-cd_unt_iso = ls_et_so_list-cd_unt_iso.
      er_entity-b_uom_iso = ls_et_so_list-b_uom_iso.
      er_entity-reason_rej = ls_et_so_list-reason_rej.
      er_entity-ord_reason = ls_et_so_list-ord_reason.
      er_entity-store_loc = ls_et_so_list-store_loc.
      er_entity-plant = ls_et_so_list-plant.
      er_entity-currency = ls_et_so_list-currency.
      er_entity-gi_date = ls_et_so_list-gi_date.
      er_entity-distr_chan = ls_et_so_list-distr_chan.
      er_entity-ship_point = ls_et_so_list-ship_point.
      er_entity-sales_unit = ls_et_so_list-sales_unit.
      er_entity-sales_org = ls_et_so_list-sales_org.
      er_entity-doc_status = ls_et_so_list-doc_status.
      er_entity-division = ls_et_so_list-division.
      er_entity-net_value = ls_et_so_list-net_value.
      er_entity-cond_unit = ls_et_so_list-cond_unit.
      er_entity-cond_p_unt = ls_et_so_list-cond_p_unt.
      er_entity-net_price = ls_et_so_list-net_price.
      er_entity-base_uom = ls_et_so_list-base_uom.
      er_entity-dlv_qty = ls_et_so_list-dlv_qty.
      er_entity-exchg_rate = ls_et_so_list-exchg_rate.
      er_entity-name = ls_et_so_list-name.
      er_entity-sold_to = ls_et_so_list-sold_to.
      er_entity-dlv_block = ls_et_so_list-dlv_block.
      er_entity-bill_block = ls_et_so_list-bill_block.
      er_entity-valid_to = ls_et_so_list-valid_to.
      er_entity-valid_from = ls_et_so_list-valid_from.
      er_entity-purch_no = ls_et_so_list-purch_no.
      er_entity-req_date = ls_et_so_list-req_date.
      er_entity-req_qty = ls_et_so_list-req_qty.
      er_entity-doc_date = ls_et_so_list-doc_date.
      er_entity-doc_type = ls_et_so_list-doc_type.
      er_entity-short_text = ls_et_so_list-short_text.
      er_entity-material = ls_et_so_list-material.
      er_entity-itm_number = ls_et_so_list-itm_number.
      er_entity-sd_doc = ls_et_so_list-sd_doc.
      er_entity-mandt = ls_et_so_list-mandt.
  endmethod.


  method SALESORDERSET_GET_ENTITYSET.
*-------------------------------------------------------------
*  Data declaration
*-------------------------------------------------------------
 DATA i_customer TYPE zif_zca_salesorder_getlist3=>kunnr.
 DATA i_dlvblk TYPE zif_zca_salesorder_getlist3=>lifsk.
 DATA i_docdate TYPE zif_zca_salesorder_getlist3=>zca_docdate_wa.
 DATA i_itmnum TYPE zif_zca_salesorder_getlist3=>posnr.
 DATA i_matnr TYPE zif_zca_salesorder_getlist3=>matnr.
 DATA i_status TYPE zif_zca_salesorder_getlist3=>uvall.
 DATA i_vbeln TYPE zif_zca_salesorder_getlist3=>vbeln.
 DATA et_so_list  TYPE zif_zca_salesorder_getlist3=>zca_salesorder_tt.
 DATA ls_et_so_list  TYPE LINE OF zif_zca_salesorder_getlist3=>zca_salesorder_tt.
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
DATA lr_doc_status LIKE RANGE OF ls_converted_keys-doc_status.
DATA ls_doc_status LIKE LINE OF lr_doc_status.
DATA lr_sold_to LIKE RANGE OF ls_converted_keys-sold_to.
DATA ls_sold_to LIKE LINE OF lr_sold_to.
DATA lr_dlv_block LIKE RANGE OF ls_converted_keys-dlv_block.
DATA ls_dlv_block LIKE LINE OF lr_dlv_block.
DATA lr_material LIKE RANGE OF ls_converted_keys-material.
DATA ls_material LIKE LINE OF lr_material.
DATA lr_itm_number LIKE RANGE OF ls_converted_keys-itm_number.
DATA ls_itm_number LIKE LINE OF lr_itm_number.
DATA lr_sd_doc LIKE RANGE OF ls_converted_keys-sd_doc.
DATA ls_sd_doc LIKE LINE OF lr_sd_doc.
DATA lr_doc_date LIKE RANGE OF ls_converted_keys-doc_date.
DATA ls_doc_date LIKE LINE OF lr_doc_date.
DATA lo_dp_facade TYPE REF TO /iwbep/if_mgw_dp_facade.
DATA ls_gw_et_so_list LIKE LINE OF et_entityset.
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
      WHEN 'DOC_STATUS'.
        lo_filter->convert_select_option(
          EXPORTING
            is_select_option = ls_filter
          IMPORTING
            et_select_option = lr_doc_status ).

        READ TABLE lr_doc_status INTO ls_doc_status INDEX 1.
        IF sy-subrc = 0.
          i_status = ls_doc_status-low.
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
      WHEN 'DLV_BLOCK'.
        lo_filter->convert_select_option(
          EXPORTING
            is_select_option = ls_filter
          IMPORTING
            et_select_option = lr_dlv_block ).

        READ TABLE lr_dlv_block INTO ls_dlv_block INDEX 1.
        IF sy-subrc = 0.
          i_dlvblk = ls_dlv_block-low.
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
      WHEN 'ITM_NUMBER'.
        lo_filter->convert_select_option(
          EXPORTING
            is_select_option = ls_filter
          IMPORTING
            et_select_option = lr_itm_number ).

        READ TABLE lr_itm_number INTO ls_itm_number INDEX 1.
        IF sy-subrc = 0.
          i_itmnum = ls_itm_number-low.
        ENDIF.
      WHEN 'SD_DOC'.
        lo_filter->convert_select_option(
          EXPORTING
            is_select_option = ls_filter
          IMPORTING
            et_select_option = lr_sd_doc ).

        READ TABLE lr_sd_doc INTO ls_sd_doc INDEX 1.
        IF sy-subrc = 0.
          i_vbeln = ls_sd_doc-low.
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
lv_rfc_name = 'ZCA_SALESORDER_GETLIST'.

IF lv_destination IS INITIAL OR lv_destination EQ 'NONE'.

  TRY.
      CALL FUNCTION lv_rfc_name
        EXPORTING
          i_status     =   i_status
          i_customer   =   i_customer
          i_dlvblk     =   i_dlvblk
          i_docdate    =   i_docdate
          i_matnr      =   i_matnr
          i_itmnum     =   i_itmnum
          i_vbeln      =   i_vbeln
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
          i_status     =   i_status
          i_customer   =   i_customer
          i_dlvblk     =   i_dlvblk
          i_docdate    =   i_docdate
          i_matnr      =   i_matnr
          i_itmnum     =   i_itmnum
          i_vbeln      =   i_vbeln
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
  lv_top = lines( et_so_list ).
ENDIF.

*  - Map properties from the backend to the Gateway output response table -

LOOP AT et_so_list INTO ls_et_so_list
*  Provide the response entries according to the Top and Skip parameters that were provided at runtime
     FROM lv_skip TO lv_top.
*  Only fields that were mapped will be delivered to the response table
 ls_gw_et_so_list-purch_no_c = ls_et_so_list-purch_no_c.
 ls_gw_et_so_list-curr_iso = ls_et_so_list-curr_iso.
 ls_gw_et_so_list-s_unit_iso = ls_et_so_list-s_unit_iso.
 ls_gw_et_so_list-cd_unt_iso = ls_et_so_list-cd_unt_iso.
 ls_gw_et_so_list-b_uom_iso = ls_et_so_list-b_uom_iso.
 ls_gw_et_so_list-reason_rej = ls_et_so_list-reason_rej.
 ls_gw_et_so_list-ord_reason = ls_et_so_list-ord_reason.
 ls_gw_et_so_list-store_loc = ls_et_so_list-store_loc.
 ls_gw_et_so_list-plant = ls_et_so_list-plant.
 ls_gw_et_so_list-currency = ls_et_so_list-currency.
 ls_gw_et_so_list-gi_date = ls_et_so_list-gi_date.
 ls_gw_et_so_list-distr_chan = ls_et_so_list-distr_chan.
 ls_gw_et_so_list-ship_point = ls_et_so_list-ship_point.
 ls_gw_et_so_list-sales_unit = ls_et_so_list-sales_unit.
 ls_gw_et_so_list-sales_org = ls_et_so_list-sales_org.
 ls_gw_et_so_list-doc_status = ls_et_so_list-doc_status.
 ls_gw_et_so_list-division = ls_et_so_list-division.
 ls_gw_et_so_list-net_value = ls_et_so_list-net_value.
 ls_gw_et_so_list-cond_unit = ls_et_so_list-cond_unit.
 ls_gw_et_so_list-cond_p_unt = ls_et_so_list-cond_p_unt.
 ls_gw_et_so_list-net_price = ls_et_so_list-net_price.
 ls_gw_et_so_list-base_uom = ls_et_so_list-base_uom.
 ls_gw_et_so_list-dlv_qty = ls_et_so_list-dlv_qty.
 ls_gw_et_so_list-exchg_rate = ls_et_so_list-exchg_rate.
 ls_gw_et_so_list-name = ls_et_so_list-name.
 ls_gw_et_so_list-sold_to = ls_et_so_list-sold_to.
 ls_gw_et_so_list-dlv_block = ls_et_so_list-dlv_block.
 ls_gw_et_so_list-bill_block = ls_et_so_list-bill_block.
 ls_gw_et_so_list-valid_to = ls_et_so_list-valid_to.
 ls_gw_et_so_list-valid_from = ls_et_so_list-valid_from.
 ls_gw_et_so_list-purch_no = ls_et_so_list-purch_no.
 ls_gw_et_so_list-req_date = ls_et_so_list-req_date.
 ls_gw_et_so_list-req_qty = ls_et_so_list-req_qty.
 ls_gw_et_so_list-doc_date = ls_et_so_list-doc_date.
 ls_gw_et_so_list-doc_type = ls_et_so_list-doc_type.
 ls_gw_et_so_list-short_text = ls_et_so_list-short_text.
 ls_gw_et_so_list-material = ls_et_so_list-material.
 ls_gw_et_so_list-itm_number = ls_et_so_list-itm_number.
 ls_gw_et_so_list-sd_doc = ls_et_so_list-sd_doc.
 ls_gw_et_so_list-mandt = ls_et_so_list-mandt.
APPEND ls_gw_et_so_list TO et_entityset.
CLEAR ls_gw_et_so_list.
ENDLOOP.

  endmethod.


  method SALESORDERSET_UPDATE_ENTITY.
  RAISE EXCEPTION TYPE /iwbep/cx_mgw_not_impl_exc
    EXPORTING
      textid = /iwbep/cx_mgw_not_impl_exc=>method_not_implemented
      method = 'SALESORDERSET_UPDATE_ENTITY'.
  endmethod.
ENDCLASS.
