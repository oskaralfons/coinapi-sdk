/*
 * order_status.h
 *
 * Order statuses and the lifecycle are documented in the separate section: &lt;a href&#x3D;\&quot;#oeml-order-lifecycle\&quot;&gt;OEML Order Lifecycle&lt;/a&gt; 
 */

#ifndef _order_status_H_
#define _order_status_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct order_status_t order_status_t;


// Enum  for order_status

typedef enum { oeml___rest_api_order_status__NULL = 0, oeml___rest_api_order_status__RECEIVED, oeml___rest_api_order_status__ROUTING, oeml___rest_api_order_status__ROUTED, oeml___rest_api_order_status__NEW, oeml___rest_api_order_status__PENDING_CANCEL, oeml___rest_api_order_status__PARTIALLY_FILLED, oeml___rest_api_order_status__FILLED, oeml___rest_api_order_status__CANCELED, oeml___rest_api_order_status__REJECTED } oeml___rest_api_order_status__e;

char* order_status_order_status_ToString(oeml___rest_api_order_status__e order_status);

oeml___rest_api_order_status__e order_status_order_status_FromString(char* order_status);

//cJSON *order_status_order_status_convertToJSON(oeml___rest_api_order_status__e order_status);

//oeml___rest_api_order_status__e order_status_order_status_parseFromJSON(cJSON *order_statusJSON);

#endif /* _order_status_H_ */

