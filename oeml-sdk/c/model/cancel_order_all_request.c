#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "cancel_order_all_request.h"



cancel_order_all_request_t *cancel_order_all_request_create(
    char *exchange_id
    ) {
    cancel_order_all_request_t *cancel_order_all_request_local_var = malloc(sizeof(cancel_order_all_request_t));
    if (!cancel_order_all_request_local_var) {
        return NULL;
    }
    cancel_order_all_request_local_var->exchange_id = exchange_id;

    return cancel_order_all_request_local_var;
}


void cancel_order_all_request_free(cancel_order_all_request_t *cancel_order_all_request) {
    if(NULL == cancel_order_all_request){
        return ;
    }
    listEntry_t *listEntry;
    free(cancel_order_all_request->exchange_id);
    free(cancel_order_all_request);
}

cJSON *cancel_order_all_request_convertToJSON(cancel_order_all_request_t *cancel_order_all_request) {
    cJSON *item = cJSON_CreateObject();

    // cancel_order_all_request->exchange_id
    if (!cancel_order_all_request->exchange_id) {
        goto fail;
    }
    
    if(cJSON_AddStringToObject(item, "exchange_id", cancel_order_all_request->exchange_id) == NULL) {
    goto fail; //String
    }

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

cancel_order_all_request_t *cancel_order_all_request_parseFromJSON(cJSON *cancel_order_all_requestJSON){

    cancel_order_all_request_t *cancel_order_all_request_local_var = NULL;

    // cancel_order_all_request->exchange_id
    cJSON *exchange_id = cJSON_GetObjectItemCaseSensitive(cancel_order_all_requestJSON, "exchange_id");
    if (!exchange_id) {
        goto end;
    }

    
    if(!cJSON_IsString(exchange_id))
    {
    goto end; //String
    }


    cancel_order_all_request_local_var = cancel_order_all_request_create (
        strdup(exchange_id->valuestring)
        );

    return cancel_order_all_request_local_var;
end:
    return NULL;

}
