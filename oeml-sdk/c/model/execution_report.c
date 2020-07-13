#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "execution_report.h"


char* sideexecution_report_ToString(oeml___rest_api_execution_report__e side) {
    char* sideArray[] =  { "NULL", "BUY", "SELL" };
	return sideArray[side];
}

oeml___rest_api_execution_report__e sideexecution_report_FromString(char* side){
    int stringToReturn = 0;
    char *sideArray[] =  { "NULL", "BUY", "SELL" };
    size_t sizeofArray = sizeof(sideArray) / sizeof(sideArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(side, sideArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}
char* order_typeexecution_report_ToString(oeml___rest_api_execution_report__e order_type) {
    char* order_typeArray[] =  { "NULL", "LIMIT" };
	return order_typeArray[order_type];
}

oeml___rest_api_execution_report__e order_typeexecution_report_FromString(char* order_type){
    int stringToReturn = 0;
    char *order_typeArray[] =  { "NULL", "LIMIT" };
    size_t sizeofArray = sizeof(order_typeArray) / sizeof(order_typeArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(order_type, order_typeArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}
char* time_in_forceexecution_report_ToString(oeml___rest_api_execution_report__e time_in_force) {
    char* time_in_forceArray[] =  { "NULL", "GOOD_TILL_CANCEL", "GOOD_TILL_TIME_EXCHANGE", "GOOD_TILL_TIME_OMS", "FILL_OR_KILL", "IMMEDIATE_OR_CANCEL" };
	return time_in_forceArray[time_in_force];
}

oeml___rest_api_execution_report__e time_in_forceexecution_report_FromString(char* time_in_force){
    int stringToReturn = 0;
    char *time_in_forceArray[] =  { "NULL", "GOOD_TILL_CANCEL", "GOOD_TILL_TIME_EXCHANGE", "GOOD_TILL_TIME_OMS", "FILL_OR_KILL", "IMMEDIATE_OR_CANCEL" };
    size_t sizeofArray = sizeof(time_in_forceArray) / sizeof(time_in_forceArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(time_in_force, time_in_forceArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}
char* exec_instexecution_report_ToString(oeml___rest_api_execution_report_EXECINST_e exec_inst) {
	char *exec_instArray[] =  { "NULL", "MAKER_OR_CANCEL", "AUCTION_ONLY", "INDICATION_OF_INTEREST" };
	return exec_instArray[exec_inst - 1];
}

oeml___rest_api_execution_report_EXECINST_e exec_instexecution_report_FromString(char* exec_inst) {
    int stringToReturn = 0;
    char *exec_instArray[] =  { "NULL", "MAKER_OR_CANCEL", "AUCTION_ONLY", "INDICATION_OF_INTEREST" };
    size_t sizeofArray = sizeof(exec_instArray) / sizeof(exec_instArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(exec_inst, exec_instArray[stringToReturn]) == 0) {
            return stringToReturn + 1;
        }
        stringToReturn++;
    }
    return 0;
}
char* statusexecution_report_ToString(oeml___rest_api_execution_report__e status) {
    char* statusArray[] =  { "NULL", "RECEIVED", "ROUTING", "ROUTED", "NEW", "PENDING_CANCEL", "PARTIALLY_FILLED", "FILLED", "CANCELED", "REJECTED" };
	return statusArray[status];
}

oeml___rest_api_execution_report__e statusexecution_report_FromString(char* status){
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

execution_report_t *execution_report_create(
    char *exchange_id,
    char *client_order_id,
    char *symbol_exchange,
    char *symbol_coinapi,
    double amount_order,
    double price,
    list_t *exec_inst,
    char *client_order_id_format_exchange,
    char *exchange_order_id,
    double amount_open,
    double amount_filled,
    list_t *time_order,
    char *error_message
    ) {
    execution_report_t *execution_report_local_var = malloc(sizeof(execution_report_t));
    if (!execution_report_local_var) {
        return NULL;
    }
    execution_report_local_var->exchange_id = exchange_id;
    execution_report_local_var->client_order_id = client_order_id;
    execution_report_local_var->symbol_exchange = symbol_exchange;
    execution_report_local_var->symbol_coinapi = symbol_coinapi;
    execution_report_local_var->amount_order = amount_order;
    execution_report_local_var->price = price;
    execution_report_local_var->side = side;
    execution_report_local_var->order_type = order_type;
    execution_report_local_var->time_in_force = time_in_force;
    execution_report_local_var->expire_time = expire_time;
    execution_report_local_var->exec_inst = exec_inst;
    execution_report_local_var->client_order_id_format_exchange = client_order_id_format_exchange;
    execution_report_local_var->exchange_order_id = exchange_order_id;
    execution_report_local_var->amount_open = amount_open;
    execution_report_local_var->amount_filled = amount_filled;
    execution_report_local_var->status = status;
    execution_report_local_var->time_order = time_order;
    execution_report_local_var->error_message = error_message;

    return execution_report_local_var;
}


void execution_report_free(execution_report_t *execution_report) {
    if(NULL == execution_report){
        return ;
    }
    listEntry_t *listEntry;
    free(execution_report->exchange_id);
    free(execution_report->client_order_id);
    free(execution_report->symbol_exchange);
    free(execution_report->symbol_coinapi);
    list_ForEach(listEntry, execution_report->exec_inst) {
        free(listEntry->data);
    }
    list_free(execution_report->exec_inst);
    free(execution_report->client_order_id_format_exchange);
    free(execution_report->exchange_order_id);
    list_ForEach(listEntry, execution_report->time_order) {
        free(listEntry->data);
    }
    list_free(execution_report->time_order);
    free(execution_report->error_message);
    free(execution_report);
}

cJSON *execution_report_convertToJSON(execution_report_t *execution_report) {
    cJSON *item = cJSON_CreateObject();

    // execution_report->exchange_id
    if (!execution_report->exchange_id) {
        goto fail;
    }
    
    if(cJSON_AddStringToObject(item, "exchange_id", execution_report->exchange_id) == NULL) {
    goto fail; //String
    }


    // execution_report->client_order_id
    if (!execution_report->client_order_id) {
        goto fail;
    }
    
    if(cJSON_AddStringToObject(item, "client_order_id", execution_report->client_order_id) == NULL) {
    goto fail; //String
    }


    // execution_report->symbol_exchange
    if(execution_report->symbol_exchange) { 
    if(cJSON_AddStringToObject(item, "symbol_exchange", execution_report->symbol_exchange) == NULL) {
    goto fail; //String
    }
     } 


    // execution_report->symbol_coinapi
    if(execution_report->symbol_coinapi) { 
    if(cJSON_AddStringToObject(item, "symbol_coinapi", execution_report->symbol_coinapi) == NULL) {
    goto fail; //String
    }
     } 


    // execution_report->amount_order
    if (!execution_report->amount_order) {
        goto fail;
    }
    
    if(cJSON_AddNumberToObject(item, "amount_order", execution_report->amount_order) == NULL) {
    goto fail; //Numeric
    }


    // execution_report->price
    if (!execution_report->price) {
        goto fail;
    }
    
    if(cJSON_AddNumberToObject(item, "price", execution_report->price) == NULL) {
    goto fail; //Numeric
    }


    // execution_report->side
    


    // execution_report->order_type
    


    // execution_report->time_in_force
    


    // execution_report->expire_time
    if(execution_report->expire_time) { 
     } 


    // execution_report->exec_inst
    
    cJSON *exec_inst = cJSON_AddArrayToObject(item, "exec_inst");
    if(exec_inst == NULL) {
        goto fail; //primitive container
    }

    listEntry_t *exec_instListEntry;
    list_ForEach(exec_instListEntry, execution_report->exec_inst) {
    if(cJSON_AddStringToObject(exec_inst, "", (char*)exec_instListEntry->data) == NULL)
    {
        goto fail;
    }
    }
    


    // execution_report->client_order_id_format_exchange
    if(execution_report->client_order_id_format_exchange) { 
    if(cJSON_AddStringToObject(item, "client_order_id_format_exchange", execution_report->client_order_id_format_exchange) == NULL) {
    goto fail; //String
    }
     } 


    // execution_report->exchange_order_id
    if(execution_report->exchange_order_id) { 
    if(cJSON_AddStringToObject(item, "exchange_order_id", execution_report->exchange_order_id) == NULL) {
    goto fail; //String
    }
     } 


    // execution_report->amount_open
    if(execution_report->amount_open) { 
    if(cJSON_AddNumberToObject(item, "amount_open", execution_report->amount_open) == NULL) {
    goto fail; //Numeric
    }
     } 


    // execution_report->amount_filled
    if(execution_report->amount_filled) { 
    if(cJSON_AddNumberToObject(item, "amount_filled", execution_report->amount_filled) == NULL) {
    goto fail; //Numeric
    }
     } 


    // execution_report->status
    
    


    // execution_report->time_order
    if(execution_report->time_order) { 
    cJSON *time_order = cJSON_AddArrayToObject(item, "time_order");
    if(time_order == NULL) {
        goto fail; //primitive container
    }

    listEntry_t *time_orderListEntry;
    list_ForEach(time_orderListEntry, execution_report->time_order) {
    }
     } 


    // execution_report->error_message
    if(execution_report->error_message) { 
    if(cJSON_AddStringToObject(item, "error_message", execution_report->error_message) == NULL) {
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

execution_report_t *execution_report_parseFromJSON(cJSON *execution_reportJSON){

    execution_report_t *execution_report_local_var = NULL;

    // execution_report->exchange_id
    cJSON *exchange_id = cJSON_GetObjectItemCaseSensitive(execution_reportJSON, "exchange_id");
    if (!exchange_id) {
        goto end;
    }

    
    if(!cJSON_IsString(exchange_id))
    {
    goto end; //String
    }

    // execution_report->client_order_id
    cJSON *client_order_id = cJSON_GetObjectItemCaseSensitive(execution_reportJSON, "client_order_id");
    if (!client_order_id) {
        goto end;
    }

    
    if(!cJSON_IsString(client_order_id))
    {
    goto end; //String
    }

    // execution_report->symbol_exchange
    cJSON *symbol_exchange = cJSON_GetObjectItemCaseSensitive(execution_reportJSON, "symbol_exchange");
    if (symbol_exchange) { 
    if(!cJSON_IsString(symbol_exchange))
    {
    goto end; //String
    }
    }

    // execution_report->symbol_coinapi
    cJSON *symbol_coinapi = cJSON_GetObjectItemCaseSensitive(execution_reportJSON, "symbol_coinapi");
    if (symbol_coinapi) { 
    if(!cJSON_IsString(symbol_coinapi))
    {
    goto end; //String
    }
    }

    // execution_report->amount_order
    cJSON *amount_order = cJSON_GetObjectItemCaseSensitive(execution_reportJSON, "amount_order");
    if (!amount_order) {
        goto end;
    }

    
    if(!cJSON_IsNumber(amount_order))
    {
    goto end; //Numeric
    }

    // execution_report->price
    cJSON *price = cJSON_GetObjectItemCaseSensitive(execution_reportJSON, "price");
    if (!price) {
        goto end;
    }

    
    if(!cJSON_IsNumber(price))
    {
    goto end; //Numeric
    }

    // execution_report->side
    cJSON *side = cJSON_GetObjectItemCaseSensitive(execution_reportJSON, "side");
    if (!side) {
        goto end;
    }


    // execution_report->order_type
    cJSON *order_type = cJSON_GetObjectItemCaseSensitive(execution_reportJSON, "order_type");
    if (!order_type) {
        goto end;
    }


    // execution_report->time_in_force
    cJSON *time_in_force = cJSON_GetObjectItemCaseSensitive(execution_reportJSON, "time_in_force");
    if (!time_in_force) {
        goto end;
    }


    // execution_report->expire_time
    cJSON *expire_time = cJSON_GetObjectItemCaseSensitive(execution_reportJSON, "expire_time");
    }

    // execution_report->exec_inst
    cJSON *exec_inst = cJSON_GetObjectItemCaseSensitive(execution_reportJSON, "exec_inst");
    list_t *exec_instList;
    if (exec_inst) { 
    cJSON *exec_inst_local;
    if(!cJSON_IsArray(exec_inst)) {
        goto end;//primitive container
    }
    exec_instList = list_create();

    cJSON_ArrayForEach(exec_inst_local, exec_inst)
    {
        if(!cJSON_IsString(exec_inst_local))
        {
            goto end;
        }
        list_addElement(exec_instList , strdup(exec_inst_local->valuestring));
    }
    }

    // execution_report->client_order_id_format_exchange
    cJSON *client_order_id_format_exchange = cJSON_GetObjectItemCaseSensitive(execution_reportJSON, "client_order_id_format_exchange");
    if (client_order_id_format_exchange) { 
    if(!cJSON_IsString(client_order_id_format_exchange))
    {
    goto end; //String
    }
    }

    // execution_report->exchange_order_id
    cJSON *exchange_order_id = cJSON_GetObjectItemCaseSensitive(execution_reportJSON, "exchange_order_id");
    if (exchange_order_id) { 
    if(!cJSON_IsString(exchange_order_id))
    {
    goto end; //String
    }
    }

    // execution_report->amount_open
    cJSON *amount_open = cJSON_GetObjectItemCaseSensitive(execution_reportJSON, "amount_open");
    if (amount_open) { 
    if(!cJSON_IsNumber(amount_open))
    {
    goto end; //Numeric
    }
    }

    // execution_report->amount_filled
    cJSON *amount_filled = cJSON_GetObjectItemCaseSensitive(execution_reportJSON, "amount_filled");
    if (amount_filled) { 
    if(!cJSON_IsNumber(amount_filled))
    {
    goto end; //Numeric
    }
    }

    // execution_report->status
    cJSON *status = cJSON_GetObjectItemCaseSensitive(execution_reportJSON, "status");
    }

    // execution_report->time_order
    cJSON *time_order = cJSON_GetObjectItemCaseSensitive(execution_reportJSON, "time_order");
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

    // execution_report->error_message
    cJSON *error_message = cJSON_GetObjectItemCaseSensitive(execution_reportJSON, "error_message");
    if (error_message) { 
    if(!cJSON_IsString(error_message))
    {
    goto end; //String
    }
    }


    execution_report_local_var = execution_report_create (
        strdup(exchange_id->valuestring),
        strdup(client_order_id->valuestring),
        symbol_exchange ? strdup(symbol_exchange->valuestring) : NULL,
        symbol_coinapi ? strdup(symbol_coinapi->valuestring) : NULL,
        amount_order->valuedouble,
        price->valuedouble,
        exec_inst ? exec_instList : NULL,
        client_order_id_format_exchange ? strdup(client_order_id_format_exchange->valuestring) : NULL,
        exchange_order_id ? strdup(exchange_order_id->valuestring) : NULL,
        amount_open ? amount_open->valuedouble : 0,
        amount_filled ? amount_filled->valuedouble : 0,
        time_order ? time_orderList : NULL,
        error_message ? strdup(error_message->valuestring) : NULL
        );

    return execution_report_local_var;
end:
    return NULL;

}
