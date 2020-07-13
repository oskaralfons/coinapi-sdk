#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "cancel_order_single_request.h"



cancel_order_single_request_t *cancel_order_single_request_create(
    char *exchange_id,
    char *exchange_order_id,
    char *client_order_id
    ) {
    cancel_order_single_request_t *cancel_order_single_request_local_var = malloc(sizeof(cancel_order_single_request_t));
    if (!cancel_order_single_request_local_var) {
        return NULL;
    }
    cancel_order_single_request_local_var->exchange_id = exchange_id;
    cancel_order_single_request_local_var->exchange_order_id = exchange_order_id;
    cancel_order_single_request_local_var->client_order_id = client_order_id;

    return cancel_order_single_request_local_var;
}


void cancel_order_single_request_free(cancel_order_single_request_t *cancel_order_single_request) {
    if(NULL == cancel_order_single_request){
        return ;
    }
    listEntry_t *listEntry;
    free(cancel_order_single_request->exchange_id);
    free(cancel_order_single_request->exchange_order_id);
    free(cancel_order_single_request->client_order_id);
    free(cancel_order_single_request);
}

cJSON *cancel_order_single_request_convertToJSON(cancel_order_single_request_t *cancel_order_single_request) {
    cJSON *item = cJSON_CreateObject();

    // cancel_order_single_request->exchange_id
    if (!cancel_order_single_request->exchange_id) {
        goto fail;
    }
    
    if(cJSON_AddStringToObject(item, "exchange_id", cancel_order_single_request->exchange_id) == NULL) {
    goto fail; //String
    }


    // cancel_order_single_request->exchange_order_id
    if(cancel_order_single_request->exchange_order_id) { 
    if(cJSON_AddStringToObject(item, "exchange_order_id", cancel_order_single_request->exchange_order_id) == NULL) {
    goto fail; //String
    }
     } 


    // cancel_order_single_request->client_order_id
    if(cancel_order_single_request->client_order_id) { 
    if(cJSON_AddStringToObject(item, "client_order_id", cancel_order_single_request->client_order_id) == NULL) {
    goto fail; //String
    }
     } 

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

cancel_order_single_request_t *cancel_order_single_request_parseFromJSON(cJSON *cancel_order_single_requestJSON){

    cancel_order_single_request_t *cancel_order_single_request_local_var = NULL;

    // cancel_order_single_request->exchange_id
    cJSON *exchange_id = cJSON_GetObjectItemCaseSensitive(cancel_order_single_requestJSON, "exchange_id");
    if (!exchange_id) {
        goto end;
    }

    
    if(!cJSON_IsString(exchange_id))
    {
    goto end; //String
    }

    // cancel_order_single_request->exchange_order_id
    cJSON *exchange_order_id = cJSON_GetObjectItemCaseSensitive(cancel_order_single_requestJSON, "exchange_order_id");
    if (exchange_order_id) { 
    if(!cJSON_IsString(exchange_order_id))
    {
    goto end; //String
    }
    }

    // cancel_order_single_request->client_order_id
    cJSON *client_order_id = cJSON_GetObjectItemCaseSensitive(cancel_order_single_requestJSON, "client_order_id");
    if (client_order_id) { 
    if(!cJSON_IsString(client_order_id))
    {
    goto end; //String
    }
    }


    cancel_order_single_request_local_var = cancel_order_single_request_create (
        strdup(exchange_id->valuestring),
        exchange_order_id ? strdup(exchange_order_id->valuestring) : NULL,
        client_order_id ? strdup(client_order_id->valuestring) : NULL
        );

    return cancel_order_single_request_local_var;
end:
    return NULL;

}
