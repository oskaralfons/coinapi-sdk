/*
 * execution_report.h
 *
 * 
 */

#ifndef _execution_report_H_
#define _execution_report_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct execution_report_t execution_report_t;

#include "ord_status.h"
#include "time_in_force.h"

// Enum  for execution_report

typedef enum  { oeml___rest_api_execution_report__NULL = 0, oeml___rest_api_execution_report__RECEIVED, oeml___rest_api_execution_report__ROUTING, oeml___rest_api_execution_report__ROUTED, oeml___rest_api_execution_report__NEW, oeml___rest_api_execution_report__PENDING_CANCEL, oeml___rest_api_execution_report__PARTIALLY_FILLED, oeml___rest_api_execution_report__FILLED, oeml___rest_api_execution_report__CANCELED, oeml___rest_api_execution_report__REJECTED } oeml___rest_api_execution_report__e;

char* execution_report_status_ToString(oeml___rest_api_execution_report__e status);

oeml___rest_api_execution_report__e execution_report_status_FromString(char* status);

// Enum SIDE for execution_report

typedef enum  { oeml___rest_api_execution_report_SIDE_NULL = 0, oeml___rest_api_execution_report_SIDE_BUY, oeml___rest_api_execution_report_SIDE_SELL } oeml___rest_api_execution_report_SIDE_e;

char* execution_report_side_ToString(oeml___rest_api_execution_report_SIDE_e side);

oeml___rest_api_execution_report_SIDE_e execution_report_side_FromString(char* side);

// Enum ORDERTYPE for execution_report

typedef enum  { oeml___rest_api_execution_report_ORDERTYPE_NULL = 0, oeml___rest_api_execution_report_ORDERTYPE_LIMIT } oeml___rest_api_execution_report_ORDERTYPE_e;

char* execution_report_order_type_ToString(oeml___rest_api_execution_report_ORDERTYPE_e order_type);

oeml___rest_api_execution_report_ORDERTYPE_e execution_report_order_type_FromString(char* order_type);

// Enum  for execution_report

typedef enum  { oeml___rest_api_execution_report__NULL = 0, oeml___rest_api_execution_report__GOOD_TILL_CANCEL, oeml___rest_api_execution_report__GOOD_TILL_TIME_EXCHANGE, oeml___rest_api_execution_report__GOOD_TILL_TIME_OMS, oeml___rest_api_execution_report__FILL_OR_KILL, oeml___rest_api_execution_report__IMMEDIATE_OR_CANCEL } oeml___rest_api_execution_report__e;

char* execution_report_time_in_force_ToString(oeml___rest_api_execution_report__e time_in_force);

oeml___rest_api_execution_report__e execution_report_time_in_force_FromString(char* time_in_force);

// Enum EXECINST for execution_report

typedef enum  { oeml___rest_api_execution_report_EXECINST_NULL = 0, oeml___rest_api_execution_report_EXECINST_MAKER_OR_CANCEL, oeml___rest_api_execution_report_EXECINST_AUCTION_ONLY, oeml___rest_api_execution_report_EXECINST_INDICATION_OF_INTEREST } oeml___rest_api_execution_report_EXECINST_e;

char* execution_report_exec_inst_ToString(oeml___rest_api_execution_report_EXECINST_e exec_inst);

oeml___rest_api_execution_report_EXECINST_e execution_report_exec_inst_FromString(char* exec_inst);



typedef struct execution_report_t {
    char *exchange_id; // string
    char *id; // string
    char *client_order_id_format_exchange; // string
    char *exchange_order_id; // string
    double amount_open; //numeric
    double amount_filled; //numeric
    list_t *time_order; //primitive container
    char *error_message; // string
    char *client_order_id; // string
    char *symbol_exchange; // string
    char *symbol_coinapi; // string
    double amount_order; //numeric
    double price; //numeric
    oeml___rest_api_execution_report_SIDE_e side; //enum
    oeml___rest_api_execution_report_ORDERTYPE_e order_type; //enum
    list_t *exec_inst; //primitive container

} execution_report_t;

execution_report_t *execution_report_create(
    char *exchange_id,
    char *id,
    char *client_order_id_format_exchange,
    char *exchange_order_id,
    double amount_open,
    double amount_filled,
    list_t *time_order,
    char *error_message,
    char *client_order_id,
    char *symbol_exchange,
    char *symbol_coinapi,
    double amount_order,
    double price,
    oeml___rest_api_execution_report_SIDE_e side,
    oeml___rest_api_execution_report_ORDERTYPE_e order_type,
    list_t *exec_inst
);

void execution_report_free(execution_report_t *execution_report);

execution_report_t *execution_report_parseFromJSON(cJSON *execution_reportJSON);

cJSON *execution_report_convertToJSON(execution_report_t *execution_report);

#endif /* _execution_report_H_ */

