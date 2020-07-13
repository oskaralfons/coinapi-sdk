note
    description: "API tests for ORDERS_API"
    date: "$Date$"
    revision: "$Revision$"


class ORDERS_API_TEST

inherit

    EQA_TEST_SET

feature -- Test routines

    
    test_v1_orders_cancel_all_post
            -- Cancel all orders
            -- 
            -- This request cancels all open orders across all or single specified exchange. 
        local
            l_response: MESSAGE
            l_cancel_order_all_request: CANCEL_ORDER_ALL_REQUEST
        do
            -- TODO: Initialize required params.
            -- l_cancel_order_all_request
                      
            -- l_response := api.v1_orders_cancel_all_post(l_cancel_order_all_request)
            assert ("not_implemented", False)
        end
    
    test_v1_orders_cancel_post
            -- Cancel order
            -- 
            -- This request cancels an existing order. The order can be canceled by the client order ID or exchange order ID. 
        local
            l_response: ORDER_EXECUTION_REPORT
            l_cancel_order_single_request: CANCEL_ORDER_SINGLE_REQUEST
        do
            -- TODO: Initialize required params.
            -- l_cancel_order_single_request
                      
            -- l_response := api.v1_orders_cancel_post(l_cancel_order_single_request)
            assert ("not_implemented", False)
        end
    
    test_v1_orders_get
            -- Get all orders
            -- 
            -- Get all current open orders across all or single specified exchange. 
        local
            l_response: LIST [ORDER_EXECUTION_REPORT]
            l_exchange_id: STRING_32
        do
            -- TODO: Initialize required params.
                      
            -- l_response := api.v1_orders_get(l_exchange_id)
            assert ("not_implemented", False)
        end
    
    test_v1_orders_post
            -- Create new order
            -- 
            -- This request creating new order for the specific exchange. 
        local
            l_response: ORDER_EXECUTION_REPORT
            l_new_order_single: NEW_ORDER_SINGLE
        do
            -- TODO: Initialize required params.
            -- l_new_order_single
                      
            -- l_response := api.v1_orders_post(l_new_order_single)
            assert ("not_implemented", False)
        end
    
    test_v1_orders_status_client_order_id_get
            -- Get order status
            -- 
            -- Get the last order execution report for the specified order. The requested order does not need to be active/opened. 
        local
            l_response: ORDER_EXECUTION_REPORT
            l_client_order_id: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_client_order_id
                      
            -- l_response := api.v1_orders_status_client_order_id_get(l_client_order_id)
            assert ("not_implemented", False)
        end

feature {NONE} -- Implementation

    api: ORDERS_API
            -- Create an object instance of `ORDERS_API'.
        once            
            create { ORDERS_API } Result
        end

end
