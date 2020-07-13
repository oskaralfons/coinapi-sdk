/*
 * execution_report_all_of.h
 *
 * 
 */

#ifndef _execution_report_all_of_H_
#define _execution_report_all_of_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct execution_report_all_of_t execution_report_all_of_t;

#include "ord_status.h"

// Enum  for execution_report_all_of

typedef enum  { oeml___rest_api_execution_report_all_of__NULL = 0, oeml___rest_api_execution_report_all_of__RECEIVED, oeml___rest_api_execution_report_all_of__ROUTING, oeml___rest_api_execution_report_all_of__ROUTED, oeml___rest_api_execution_report_all_of__NEW, oeml___rest_api_execution_report_all_of__PENDING_CANCEL, oeml___rest_api_execution_report_all_of__PARTIALLY_FILLED, oeml___rest_api_execution_report_all_of__FILLED, oeml___rest_api_execution_report_all_of__CANCELED, oeml___rest_api_execution_report_all_of__REJECTED } oeml___rest_api_execution_report_all_of__e;

char* execution_report_all_of_status_ToString(oeml___rest_api_execution_report_all_of__e status);

oeml___rest_api_execution_report_all_of__e execution_report_all_of_status_FromString(char* status);



typedef struct execution_report_all_of_t {
    char *client_order_id_format_exchange; // string
    char *exchange_order_id; // string
    double amount_open; //numeric
    double amount_filled; //numeric
    list_t *time_order; //primitive container
    char *error_message; // string

} execution_report_all_of_t;

execution_report_all_of_t *execution_report_all_of_create(
    char *client_order_id_format_exchange,
    char *exchange_order_id,
    double amount_open,
    double amount_filled,
    list_t *time_order,
    char *error_message
);

void execution_report_all_of_free(execution_report_all_of_t *execution_report_all_of);

execution_report_all_of_t *execution_report_all_of_parseFromJSON(cJSON *execution_report_all_ofJSON);

cJSON *execution_report_all_of_convertToJSON(execution_report_all_of_t *execution_report_all_of);

#endif /* _execution_report_all_of_H_ */

