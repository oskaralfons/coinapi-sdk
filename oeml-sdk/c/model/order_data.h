/*
 * order_data.h
 *
 * 
 */

#ifndef _order_data_H_
#define _order_data_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct order_data_t order_data_t;

#include "ord_status.h"
#include "time_in_force.h"

// Enum  for order_data

typedef enum  { oeml___rest_api_order_data__NULL = 0, oeml___rest_api_order_data__RECEIVED, oeml___rest_api_order_data__ROUTING, oeml___rest_api_order_data__ROUTED, oeml___rest_api_order_data__NEW, oeml___rest_api_order_data__PENDING_CANCEL, oeml___rest_api_order_data__PARTIALLY_FILLED, oeml___rest_api_order_data__FILLED, oeml___rest_api_order_data__CANCELED, oeml___rest_api_order_data__REJECTED } oeml___rest_api_order_data__e;

char* order_data_status_ToString(oeml___rest_api_order_data__e status);

oeml___rest_api_order_data__e order_data_status_FromString(char* status);

// Enum SIDE for order_data

typedef enum  { oeml___rest_api_order_data_SIDE_NULL = 0, oeml___rest_api_order_data_SIDE_BUY, oeml___rest_api_order_data_SIDE_SELL } oeml___rest_api_order_data_SIDE_e;

char* order_data_side_ToString(oeml___rest_api_order_data_SIDE_e side);

oeml___rest_api_order_data_SIDE_e order_data_side_FromString(char* side);

// Enum ORDERTYPE for order_data

typedef enum  { oeml___rest_api_order_data_ORDERTYPE_NULL = 0, oeml___rest_api_order_data_ORDERTYPE_LIMIT } oeml___rest_api_order_data_ORDERTYPE_e;

char* order_data_order_type_ToString(oeml___rest_api_order_data_ORDERTYPE_e order_type);

oeml___rest_api_order_data_ORDERTYPE_e order_data_order_type_FromString(char* order_type);

// Enum  for order_data

typedef enum  { oeml___rest_api_order_data__NULL = 0, oeml___rest_api_order_data__GOOD_TILL_CANCEL, oeml___rest_api_order_data__GOOD_TILL_TIME_EXCHANGE, oeml___rest_api_order_data__GOOD_TILL_TIME_OMS, oeml___rest_api_order_data__FILL_OR_KILL, oeml___rest_api_order_data__IMMEDIATE_OR_CANCEL } oeml___rest_api_order_data__e;

char* order_data_time_in_force_ToString(oeml___rest_api_order_data__e time_in_force);

oeml___rest_api_order_data__e order_data_time_in_force_FromString(char* time_in_force);

// Enum EXECINST for order_data

typedef enum  { oeml___rest_api_order_data_EXECINST_NULL = 0, oeml___rest_api_order_data_EXECINST_MAKER_OR_CANCEL, oeml___rest_api_order_data_EXECINST_AUCTION_ONLY, oeml___rest_api_order_data_EXECINST_INDICATION_OF_INTEREST } oeml___rest_api_order_data_EXECINST_e;

char* order_data_exec_inst_ToString(oeml___rest_api_order_data_EXECINST_e exec_inst);

oeml___rest_api_order_data_EXECINST_e order_data_exec_inst_FromString(char* exec_inst);



typedef struct order_data_t {
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
    oeml___rest_api_order_data_SIDE_e side; //enum
    oeml___rest_api_order_data_ORDERTYPE_e order_type; //enum
    list_t *exec_inst; //primitive container

} order_data_t;

order_data_t *order_data_create(
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
    oeml___rest_api_order_data_SIDE_e side,
    oeml___rest_api_order_data_ORDERTYPE_e order_type,
    list_t *exec_inst
);

void order_data_free(order_data_t *order_data);

order_data_t *order_data_parseFromJSON(cJSON *order_dataJSON);

cJSON *order_data_convertToJSON(order_data_t *order_data);

#endif /* _order_data_H_ */

