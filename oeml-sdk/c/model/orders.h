/*
 * orders.h
 *
 * 
 */

#ifndef _orders_H_
#define _orders_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct orders_t orders_t;

#include "orders_data.h"



typedef struct orders_t {
    char *type; // string
    char *exchange_id; // string
    list_t *data; //nonprimitive container

} orders_t;

orders_t *orders_create(
    char *type,
    char *exchange_id,
    list_t *data
);

void orders_free(orders_t *orders);

orders_t *orders_parseFromJSON(cJSON *ordersJSON);

cJSON *orders_convertToJSON(orders_t *orders);

#endif /* _orders_H_ */

