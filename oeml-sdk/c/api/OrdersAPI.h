#include <stdlib.h>
#include <stdio.h>
#include "../include/apiClient.h"
#include "../include/list.h"
#include "../external/cJSON.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"
#include "../model/cancel_order_all_request.h"
#include "../model/cancel_order_single_request.h"
#include "../model/execution_report.h"
#include "../model/message.h"
#include "../model/new_order_single.h"
#include "../model/validation_error.h"


// Cancel all orders
//
// This request cancels all open orders across all or single specified exchange.
//
message_t*
OrdersAPI_v1OrdersCancelAllPost(apiClient_t *apiClient, cancel_order_all_request_t * cancel_order_all_request );


// Cancel order
//
// This request cancels an existing order. The order can be canceled by the client order ID or exchange order ID.
//
execution_report_t*
OrdersAPI_v1OrdersCancelPost(apiClient_t *apiClient, cancel_order_single_request_t * cancel_order_single_request );


// Get all orders
//
// Get all current open orders across all or single specified exchange.
//
list_t*
OrdersAPI_v1OrdersGet(apiClient_t *apiClient, char * exchange_id );


// Create new order
//
// This request creating new order for the specific exchange.
//
execution_report_t*
OrdersAPI_v1OrdersPost(apiClient_t *apiClient, new_order_single_t * new_order_single );


// Get order status
//
// Get the current order status for the specified order. The requested order can no longer be active.
//
execution_report_t*
OrdersAPI_v1OrdersStatusClientOrderIdGet(apiClient_t *apiClient, char * client_order_id );


