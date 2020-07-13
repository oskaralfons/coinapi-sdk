#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "execution_report_all_of.h"


char* statusexecution_report_all_of_ToString(oeml___rest_api_execution_report_all_of__e status) {
    char* statusArray[] =  { "NULL", "RECEIVED", "ROUTING", "ROUTED", "NEW", "PENDING_CANCEL", "PARTIALLY_FILLED", "FILLED", "CANCELED", "REJECTED" };
	return statusArray[status];
}

oeml___rest_api_execution_report_all_of__e statusexecution_report_all_of_FromString(char* status){
    int stringToReturn = 0;
    char *statusArray[] =  { "NULL", "RECEIVED", "ROUTING", "ROUTED", "NEW", "PENDING_CANCEL", "PARTIALLY_FILLED", "FILLED", "CANCELED", "REJECTED" };
    size_t sizeofArray = sizeof(statusArray) / sizeof(statusArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(status, statusArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

execution_report_all_of_t *execution_report_all_of_create(
    char *client_order_id_format_exchange,
    char *exchange_order_id,
    double amount_open,
    double amount_filled,
    list_t *time_order,
    char *error_message
    ) {
    execution_report_all_of_t *execution_report_all_of_local_var = malloc(sizeof(execution_report_all_of_t));
    if (!execution_report_all_of_local_var) {
        return NULL;
    }
    execution_report_all_of_local_var->client_order_id_format_exchange = client_order_id_format_exchange;
    execution_report_all_of_local_var->exchange_order_id = exchange_order_id;
    execution_report_all_of_local_var->amount_open = amount_open;
    execution_report_all_of_local_var->amount_filled = amount_filled;
    execution_report_all_of_local_var->status = status;
    execution_report_all_of_local_var->time_order = time_order;
    execution_report_all_of_local_var->error_message = error_message;

    return execution_report_all_of_local_var;
}


void execution_report_all_of_free(execution_report_all_of_t *execution_report_all_of) {
    if(NULL == execution_report_all_of){
        return ;
    }
    listEntry_t *listEntry;
    free(execution_report_all_of->client_order_id_format_exchange);
    free(execution_report_all_of->exchange_order_id);
    list_ForEach(listEntry, execution_report_all_of->time_order) {
        free(listEntry->data);
    }
    list_free(execution_report_all_of->time_order);
    free(execution_report_all_of->error_message);
    free(execution_report_all_of);
}

cJSON *execution_report_all_of_convertToJSON(execution_report_all_of_t *execution_report_all_of) {
    cJSON *item = cJSON_CreateObject();

    // execution_report_all_of->client_order_id_format_exchange
    if(execution_report_all_of->client_order_id_format_exchange) { 
    if(cJSON_AddStringToObject(item, "client_order_id_format_exchange", execution_report_all_of->client_order_id_format_exchange) == NULL) {
    goto fail; //String
    }
     } 


    // execution_report_all_of->exchange_order_id
    if(execution_report_all_of->exchange_order_id) { 
    if(cJSON_AddStringToObject(item, "exchange_order_id", execution_report_all_of->exchange_order_id) == NULL) {
    goto fail; //String
    }
     } 


    // execution_report_all_of->amount_open
    if(execution_report_all_of->amount_open) { 
    if(cJSON_AddNumberToObject(item, "amount_open", execution_report_all_of->amount_open) == NULL) {
    goto fail; //Numeric
    }
     } 


    // execution_report_all_of->amount_filled
    if(execution_report_all_of->amount_filled) { 
    if(cJSON_AddNumberToObject(item, "amount_filled", execution_report_all_of->amount_filled) == NULL) {
    goto fail; //Numeric
    }
     } 


    // execution_report_all_of->status
    
    


    // execution_report_all_of->time_order
    if(execution_report_all_of->time_order) { 
    cJSON *time_order = cJSON_AddArrayToObject(item, "time_order");
    if(time_order == NULL) {
        goto fail; //primitive container
    }

    listEntry_t *time_orderListEntry;
    list_ForEach(time_orderListEntry, execution_report_all_of->time_order) {
    }
     } 


    // execution_report_all_of->error_message
    if(execution_report_all_of->error_message) { 
    if(cJSON_AddStringToObject(item, "error_message", execution_report_all_of->error_message) == NULL) {
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

execution_report_all_of_t *execution_report_all_of_parseFromJSON(cJSON *execution_report_all_ofJSON){

    execution_report_all_of_t *execution_report_all_of_local_var = NULL;

    // execution_report_all_of->client_order_id_format_exchange
    cJSON *client_order_id_format_exchange = cJSON_GetObjectItemCaseSensitive(execution_report_all_ofJSON, "client_order_id_format_exchange");
    if (client_order_id_format_exchange) { 
    if(!cJSON_IsString(client_order_id_format_exchange))
    {
    goto end; //String
    }
    }

    // execution_report_all_of->exchange_order_id
    cJSON *exchange_order_id = cJSON_GetObjectItemCaseSensitive(execution_report_all_ofJSON, "exchange_order_id");
    if (exchange_order_id) { 
    if(!cJSON_IsString(exchange_order_id))
    {
    goto end; //String
    }
    }

    // execution_report_all_of->amount_open
    cJSON *amount_open = cJSON_GetObjectItemCaseSensitive(execution_report_all_ofJSON, "amount_open");
    if (amount_open) { 
    if(!cJSON_IsNumber(amount_open))
    {
    goto end; //Numeric
    }
    }

    // execution_report_all_of->amount_filled
    cJSON *amount_filled = cJSON_GetObjectItemCaseSensitive(execution_report_all_ofJSON, "amount_filled");
    if (amount_filled) { 
    if(!cJSON_IsNumber(amount_filled))
    {
    goto end; //Numeric
    }
    }

    // execution_report_all_of->status
    cJSON *status = cJSON_GetObjectItemCaseSensitive(execution_report_all_ofJSON, "status");
    }

    // execution_report_all_of->time_order
    cJSON *time_order = cJSON_GetObjectItemCaseSensitive(execution_report_all_ofJSON, "time_order");
    list_t *time_orderList;
    if (time_order) { 
    cJSON *time_order_local;
    if(!cJSON_IsArray(time_order)) {
        goto end;//primitive container
    }
    time_orderList = list_create();

    cJSON_ArrayForEach(time_order_local, time_order)
    {
    }
    }

    // execution_report_all_of->error_message
    cJSON *error_message = cJSON_GetObjectItemCaseSensitive(execution_report_all_ofJSON, "error_message");
    if (error_message) { 
    if(!cJSON_IsString(error_message))
    {
    goto end; //String
    }
    }


    execution_report_all_of_local_var = execution_report_all_of_create (
        client_order_id_format_exchange ? strdup(client_order_id_format_exchange->valuestring) : NULL,
        exchange_order_id ? strdup(exchange_order_id->valuestring) : NULL,
        amount_open ? amount_open->valuedouble : 0,
        amount_filled ? amount_filled->valuedouble : 0,
        time_order ? time_orderList : NULL,
        error_message ? strdup(error_message->valuestring) : NULL
        );

    return execution_report_all_of_local_var;
end:
    return NULL;

}
