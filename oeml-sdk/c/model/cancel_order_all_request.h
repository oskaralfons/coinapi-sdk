/*
 * cancel_order_all_request.h
 *
 * 
 */

#ifndef _cancel_order_all_request_H_
#define _cancel_order_all_request_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct cancel_order_all_request_t cancel_order_all_request_t;




typedef struct cancel_order_all_request_t {
    char *exchange_id; // string

} cancel_order_all_request_t;

cancel_order_all_request_t *cancel_order_all_request_create(
    char *exchange_id
);

void cancel_order_all_request_free(cancel_order_all_request_t *cancel_order_all_request);

cancel_order_all_request_t *cancel_order_all_request_parseFromJSON(cJSON *cancel_order_all_requestJSON);

cJSON *cancel_order_all_request_convertToJSON(cancel_order_all_request_t *cancel_order_all_request);

#endif /* _cancel_order_all_request_H_ */

