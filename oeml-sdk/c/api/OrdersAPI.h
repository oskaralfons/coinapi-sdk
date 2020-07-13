#include <stdlib.h>
#include <stdio.h>
#include "../include/apiClient.h"
#include "../include/list.h"
#include "../external/cJSON.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"
#include "../model/cancel_order_all_request.h"
#include "../model/cancel_order_single_request.h"
#include "../model/message.h"
#include "../model/new_order_single.h"
#include "../model/order_execution_report.h"
#include "../model/validation_error.h"


// Cancel all orders request
//
// This request cancels all open orders on single specified exchange.
//
message_t*
OrdersAPI_v1OrdersCancelAllPost(apiClient_t *apiClient, cancel_order_all_request_t * cancel_order_all_request );


// Cancel order request
//
// Request cancel for an existing order. The order can be canceled using the `client_order_id` or `exchange_order_id`.
//
order_execution_report_t*
OrdersAPI_v1OrdersCancelPost(apiClient_t *apiClient, cancel_order_single_request_t * cancel_order_single_request );


// Get open orders
//
// Get last execution reports for open orders across all or single exchange.
//
list_t*
OrdersAPI_v1OrdersGet(apiClient_t *apiClient, char * exchange_id );


// Send new order
//
// This request creating new order for the specific exchange.
//
order_execution_report_t*
OrdersAPI_v1OrdersPost(apiClient_t *apiClient, new_order_single_t * new_order_single );


// Get order execution report
//
// Get the last order execution report for the specified order. The requested order does not need to be active or opened.
//
order_execution_report_t*
OrdersAPI_v1OrdersStatusClientOrderIdGet(apiClient_t *apiClient, char * client_order_id );


