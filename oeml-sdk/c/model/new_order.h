/*
 * new_order.h
 *
 * 
 */

#ifndef _new_order_H_
#define _new_order_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct new_order_t new_order_t;

#include "ord_side.h"
#include "ord_type.h"
#include "time_in_force.h"

// Enum  for new_order

typedef enum  { oeml___rest_api_new_order__NULL = 0, oeml___rest_api_new_order__BUY, oeml___rest_api_new_order__SELL } oeml___rest_api_new_order__e;

char* new_order_side_ToString(oeml___rest_api_new_order__e side);

oeml___rest_api_new_order__e new_order_side_FromString(char* side);

// Enum  for new_order

typedef enum  { oeml___rest_api_new_order__NULL = 0, oeml___rest_api_new_order__LIMIT } oeml___rest_api_new_order__e;

char* new_order_order_type_ToString(oeml___rest_api_new_order__e order_type);

oeml___rest_api_new_order__e new_order_order_type_FromString(char* order_type);

// Enum  for new_order

typedef enum  { oeml___rest_api_new_order__NULL = 0, oeml___rest_api_new_order__GOOD_TILL_CANCEL, oeml___rest_api_new_order__GOOD_TILL_TIME_EXCHANGE, oeml___rest_api_new_order__GOOD_TILL_TIME_OMS, oeml___rest_api_new_order__FILL_OR_KILL, oeml___rest_api_new_order__IMMEDIATE_OR_CANCEL } oeml___rest_api_new_order__e;

char* new_order_time_in_force_ToString(oeml___rest_api_new_order__e time_in_force);

oeml___rest_api_new_order__e new_order_time_in_force_FromString(char* time_in_force);

// Enum EXECINST for new_order

typedef enum  { oeml___rest_api_new_order_EXECINST_NULL = 0, oeml___rest_api_new_order_EXECINST_MAKER_OR_CANCEL, oeml___rest_api_new_order_EXECINST_AUCTION_ONLY, oeml___rest_api_new_order_EXECINST_INDICATION_OF_INTEREST } oeml___rest_api_new_order_EXECINST_e;

char* new_order_exec_inst_ToString(oeml___rest_api_new_order_EXECINST_e exec_inst);

oeml___rest_api_new_order_EXECINST_e new_order_exec_inst_FromString(char* exec_inst);



typedef struct new_order_t {
    char *exchange_id; // string
    char *client_order_id; // string
    char *symbol_exchange; // string
    char *symbol_coinapi; // string
    double amount_order; //numeric
    double price; //numeric
    list_t *exec_inst; //primitive container

} new_order_t;

new_order_t *new_order_create(
    char *exchange_id,
    char *client_order_id,
    char *symbol_exchange,
    char *symbol_coinapi,
    double amount_order,
    double price,
    list_t *exec_inst
);

void new_order_free(new_order_t *new_order);

new_order_t *new_order_parseFromJSON(cJSON *new_orderJSON);

cJSON *new_order_convertToJSON(new_order_t *new_order);

#endif /* _new_order_H_ */

