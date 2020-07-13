/*
 * new_order_single.h
 *
 * The new order message.
 */

#ifndef _new_order_single_H_
#define _new_order_single_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct new_order_single_t new_order_single_t;

#include "ord_side.h"
#include "ord_type.h"
#include "time_in_force.h"

// Enum  for new_order_single

typedef enum  { oeml___rest_api_new_order_single__NULL = 0, oeml___rest_api_new_order_single__BUY, oeml___rest_api_new_order_single__SELL } oeml___rest_api_new_order_single__e;

char* new_order_single_side_ToString(oeml___rest_api_new_order_single__e side);

oeml___rest_api_new_order_single__e new_order_single_side_FromString(char* side);

// Enum  for new_order_single

typedef enum  { oeml___rest_api_new_order_single__NULL = 0, oeml___rest_api_new_order_single__LIMIT } oeml___rest_api_new_order_single__e;

char* new_order_single_order_type_ToString(oeml___rest_api_new_order_single__e order_type);

oeml___rest_api_new_order_single__e new_order_single_order_type_FromString(char* order_type);

// Enum  for new_order_single

typedef enum  { oeml___rest_api_new_order_single__NULL = 0, oeml___rest_api_new_order_single__GOOD_TILL_CANCEL, oeml___rest_api_new_order_single__GOOD_TILL_TIME_EXCHANGE, oeml___rest_api_new_order_single__GOOD_TILL_TIME_OMS, oeml___rest_api_new_order_single__FILL_OR_KILL, oeml___rest_api_new_order_single__IMMEDIATE_OR_CANCEL } oeml___rest_api_new_order_single__e;

char* new_order_single_time_in_force_ToString(oeml___rest_api_new_order_single__e time_in_force);

oeml___rest_api_new_order_single__e new_order_single_time_in_force_FromString(char* time_in_force);

// Enum EXECINST for new_order_single

typedef enum  { oeml___rest_api_new_order_single_EXECINST_NULL = 0, oeml___rest_api_new_order_single_EXECINST_MAKER_OR_CANCEL, oeml___rest_api_new_order_single_EXECINST_AUCTION_ONLY, oeml___rest_api_new_order_single_EXECINST_INDICATION_OF_INTEREST } oeml___rest_api_new_order_single_EXECINST_e;

char* new_order_single_exec_inst_ToString(oeml___rest_api_new_order_single_EXECINST_e exec_inst);

oeml___rest_api_new_order_single_EXECINST_e new_order_single_exec_inst_FromString(char* exec_inst);



typedef struct new_order_single_t {
    char *exchange_id; // string
    char *client_order_id; // string
    char *symbol_exchange; // string
    char *symbol_coinapi; // string
    double amount_order; //numeric
    double price; //numeric
    list_t *exec_inst; //primitive container

} new_order_single_t;

new_order_single_t *new_order_single_create(
    char *exchange_id,
    char *client_order_id,
    char *symbol_exchange,
    char *symbol_coinapi,
    double amount_order,
    double price,
    list_t *exec_inst
);

void new_order_single_free(new_order_single_t *new_order_single);

new_order_single_t *new_order_single_parseFromJSON(cJSON *new_order_singleJSON);

cJSON *new_order_single_convertToJSON(new_order_single_t *new_order_single);

#endif /* _new_order_single_H_ */

