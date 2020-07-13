/*
 * cancel_order_single_request.h
 *
 * Cancel single order request object.
 */

#ifndef _cancel_order_single_request_H_
#define _cancel_order_single_request_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct cancel_order_single_request_t cancel_order_single_request_t;




typedef struct cancel_order_single_request_t {
    char *exchange_id; // string
    char *exchange_order_id; // string
    char *client_order_id; // string

} cancel_order_single_request_t;

cancel_order_single_request_t *cancel_order_single_request_create(
    char *exchange_id,
    char *exchange_order_id,
    char *client_order_id
);

void cancel_order_single_request_free(cancel_order_single_request_t *cancel_order_single_request);

cancel_order_single_request_t *cancel_order_single_request_parseFromJSON(cJSON *cancel_order_single_requestJSON);

cJSON *cancel_order_single_request_convertToJSON(cancel_order_single_request_t *cancel_order_single_request);

#endif /* _cancel_order_single_request_H_ */

