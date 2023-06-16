CLASS lhc_ZDD_cm_MASTER DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

    METHODS get_instance_authorizations FOR INSTANCE AUTHORIZATION
      IMPORTING keys REQUEST requested_authorizations FOR master RESULT result.

    METHODS validateCustomer FOR VALIDATE ON SAVE
      IMPORTING keys FOR master~validateCustomer.

*    METHODS validateCustomer2 FOR VALIDATE ON SAVE
*      IMPORTING keys FOR master~validateCustomer2.

ENDCLASS.

CLASS lhc_ZDD_cm_MASTER IMPLEMENTATION.

  METHOD get_instance_authorizations.
  ENDMETHOD.

  METHOD validateCustomer.
  READ ENTITY ZDD_CM_MASTER\\master FROM VALUE #(
        FOR <root_key> IN keys ( %key-cm_id     = <root_key>-cm_id
                                 %control = VALUE #( cm_id = if_abap_behv=>mk-on ) ) )
        RESULT DATA(lt_travel).

    DATA lt_customer TYPE SORTED TABLE OF ztab_cm_master WITH UNIQUE KEY cm_id.

    " Optimization of DB select: extract distinct non-initial customer IDs
    lt_customer = CORRESPONDING #( lt_travel EXCEPT cm_id ).
    DELETE lt_customer WHERE cm_id IS INITIAL.
    CHECK lt_customer IS NOT INITIAL.

    " Check if customer ID exist
    SELECT FROM ztab_cm_master FIELDS cm_id
      FOR ALL ENTRIES IN @lt_customer
      WHERE cm_id = @lt_customer-cm_id
      INTO TABLE @DATA(lt_customer_db).

    " Raise msg for non existing customer id
    LOOP AT lt_travel INTO DATA(ls_travel).
      IF ls_travel-cm_id IS NOT INITIAL AND NOT line_exists( lt_customer_db[ cm_id = ls_travel-cm_id ] ).
        APPEND VALUE #(  cm_id = ls_travel-cm_id ) TO failed-master.
        APPEND VALUE #(  cm_id = ls_travel-cm_id
                         %msg      = new_message( id       = /dmo/cx_flight_legacy=>customer_unkown-msgid
                                                  number   = /dmo/cx_flight_legacy=>customer_unkown-msgno
                                                  v1       = ls_travel-cm_id
                                                  severity = if_abap_behv_message=>severity-error )
                         %element-cm_id = if_abap_behv=>mk-on ) TO reported-master.
      ENDIF.
    ENDLOOP.
  ENDMETHOD.

*
*  METHOD validateCustomer2.
*  ENDMETHOD.

ENDCLASS.
