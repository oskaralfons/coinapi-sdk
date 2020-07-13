/*
 * orders_data.h
 *
 * 
 */

#ifndef _orders_data_H_
#define _orders_data_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct orders_data_t orders_data_t;

#include "ord_status.h"
#include "time_in_force.h"

// Enum  for orders_data

typedef enum  { oeml___rest_api_orders_data__NULL = 0, oeml___rest_api_orders_data__RECEIVED, oeml___rest_api_orders_data__ROUTING, oeml___rest_api_orders_data__ROUTED, oeml___rest_api_orders_data__NEW, oeml___rest_api_orders_data__PENDING_CANCEL, oeml___rest_api_orders_data__PARTIALLY_FILLED, oeml___rest_api_orders_data__FILLED, oeml___rest_api_orders_data__CANCELED, oeml___rest_api_orders_data__REJECTED } oeml___rest_api_orders_data__e;

char* orders_data_status_ToString(oeml___rest_api_orders_data__e status);

oeml___rest_api_orders_data__e orders_data_status_FromString(char* status);

// Enum SIDE for orders_data

typedef enum  { oeml___rest_api_orders_data_SIDE_NULL = 0, oeml___rest_api_orders_data_SIDE_BUY, oeml___rest_api_orders_data_SIDE_SELL } oeml___rest_api_orders_data_SIDE_e;

char* orders_data_side_ToString(oeml___rest_api_orders_data_SIDE_e side);

oeml___rest_api_orders_data_SIDE_e orders_data_side_FromString(char* side);

// Enum ORDERTYPE for orders_data

typedef enum  { oeml___rest_api_orders_data_ORDERTYPE_NULL = 0, oeml___rest_api_orders_data_ORDERTYPE_LIMIT } oeml___rest_api_orders_data_ORDERTYPE_e;

char* orders_data_order_type_ToString(oeml___rest_api_orders_data_ORDERTYPE_e order_type);

oeml___rest_api_orders_data_ORDERTYPE_e orders_data_order_type_FromString(char* order_type);

// Enum  for orders_data

typedef enum  { oeml___rest_api_orders_data__NULL = 0, oeml___rest_api_orders_data__GOOD_TILL_CANCEL, oeml___rest_api_orders_data__GOOD_TILL_TIME_EXCHANGE, oeml___rest_api_orders_data__GOOD_TILL_TIME_OMS, oeml___rest_api_orders_data__FILL_OR_KILL, oeml___rest_api_orders_data__IMMEDIATE_OR_CANCEL } oeml___rest_api_orders_data__e;

char* orders_data_time_in_force_ToString(oeml___rest_api_orders_data__e time_in_force);

oeml___rest_api_orders_data__e orders_data_time_in_force_FromString(char* time_in_force);

// Enum EXECINST for orders_data

typedef enum  { oeml___rest_api_orders_data_EXECINST_NULL = 0, oeml___rest_api_orders_data_EXECINST_MAKER_OR_CANCEL, oeml___rest_api_orders_data_EXECINST_AUCTION_ONLY, oeml___rest_api_orders_data_EXECINST_INDICATION_OF_INTEREST } oeml___rest_api_orders_data_EXECINST_e;

char* orders_data_exec_inst_ToString(oeml___rest_api_orders_data_EXECINST_e exec_inst);

oeml___rest_api_orders_data_EXECINST_e orders_data_exec_inst_FromString(char* exec_inst);



typedef struct orders_data_t {
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
    oeml___rest_api_orders_data_SIDE_e side; //enum
    oeml___rest_api_orders_data_ORDERTYPE_e order_type; //enum
    list_t *exec_inst; //primitive container

} orders_data_t;

orders_data_t *orders_data_create(
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
    oeml___rest_api_orders_data_SIDE_e side,
    oeml___rest_api_orders_data_ORDERTYPE_e order_type,
    list_t *exec_inst
);

void orders_data_free(orders_data_t *orders_data);

orders_data_t *orders_data_parseFromJSON(cJSON *orders_dataJSON);

cJSON *orders_data_convertToJSON(orders_data_t *orders_data);

#endif /* _orders_data_H_ */

