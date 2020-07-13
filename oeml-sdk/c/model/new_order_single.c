#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "new_order_single.h"


char* sidenew_order_single_ToString(oeml___rest_api_new_order_single__e side) {
    char* sideArray[] =  { "NULL", "BUY", "SELL" };
	return sideArray[side];
}

oeml___rest_api_new_order_single__e sidenew_order_single_FromString(char* side){
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
char* order_typenew_order_single_ToString(oeml___rest_api_new_order_single__e order_type) {
    char* order_typeArray[] =  { "NULL", "LIMIT" };
	return order_typeArray[order_type];
}

oeml___rest_api_new_order_single__e order_typenew_order_single_FromString(char* order_type){
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
char* time_in_forcenew_order_single_ToString(oeml___rest_api_new_order_single__e time_in_force) {
    char* time_in_forceArray[] =  { "NULL", "GOOD_TILL_CANCEL", "GOOD_TILL_TIME_EXCHANGE", "GOOD_TILL_TIME_OMS", "FILL_OR_KILL", "IMMEDIATE_OR_CANCEL" };
	return time_in_forceArray[time_in_force];
}

oeml___rest_api_new_order_single__e time_in_forcenew_order_single_FromString(char* time_in_force){
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
char* exec_instnew_order_single_ToString(oeml___rest_api_new_order_single_EXECINST_e exec_inst) {
	char *exec_instArray[] =  { "NULL", "MAKER_OR_CANCEL", "AUCTION_ONLY", "INDICATION_OF_INTEREST" };
	return exec_instArray[exec_inst - 1];
}

oeml___rest_api_new_order_single_EXECINST_e exec_instnew_order_single_FromString(char* exec_inst) {
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

new_order_single_t *new_order_single_create(
    char *exchange_id,
    char *client_order_id,
    char *symbol_exchange,
    char *symbol_coinapi,
    double amount_order,
    double price,
    list_t *exec_inst
    ) {
    new_order_single_t *new_order_single_local_var = malloc(sizeof(new_order_single_t));
    if (!new_order_single_local_var) {
        return NULL;
    }
    new_order_single_local_var->exchange_id = exchange_id;
    new_order_single_local_var->client_order_id = client_order_id;
    new_order_single_local_var->symbol_exchange = symbol_exchange;
    new_order_single_local_var->symbol_coinapi = symbol_coinapi;
    new_order_single_local_var->amount_order = amount_order;
    new_order_single_local_var->price = price;
    new_order_single_local_var->side = side;
    new_order_single_local_var->order_type = order_type;
    new_order_single_local_var->time_in_force = time_in_force;
    new_order_single_local_var->expire_time = expire_time;
    new_order_single_local_var->exec_inst = exec_inst;

    return new_order_single_local_var;
}


void new_order_single_free(new_order_single_t *new_order_single) {
    if(NULL == new_order_single){
        return ;
    }
    listEntry_t *listEntry;
    free(new_order_single->exchange_id);
    free(new_order_single->client_order_id);
    free(new_order_single->symbol_exchange);
    free(new_order_single->symbol_coinapi);
    list_ForEach(listEntry, new_order_single->exec_inst) {
        free(listEntry->data);
    }
    list_free(new_order_single->exec_inst);
    free(new_order_single);
}

cJSON *new_order_single_convertToJSON(new_order_single_t *new_order_single) {
    cJSON *item = cJSON_CreateObject();

    // new_order_single->exchange_id
    if (!new_order_single->exchange_id) {
        goto fail;
    }
    
    if(cJSON_AddStringToObject(item, "exchange_id", new_order_single->exchange_id) == NULL) {
    goto fail; //String
    }


    // new_order_single->client_order_id
    if (!new_order_single->client_order_id) {
        goto fail;
    }
    
    if(cJSON_AddStringToObject(item, "client_order_id", new_order_single->client_order_id) == NULL) {
    goto fail; //String
    }


    // new_order_single->symbol_exchange
    if(new_order_single->symbol_exchange) { 
    if(cJSON_AddStringToObject(item, "symbol_exchange", new_order_single->symbol_exchange) == NULL) {
    goto fail; //String
    }
     } 


    // new_order_single->symbol_coinapi
    if(new_order_single->symbol_coinapi) { 
    if(cJSON_AddStringToObject(item, "symbol_coinapi", new_order_single->symbol_coinapi) == NULL) {
    goto fail; //String
    }
     } 


    // new_order_single->amount_order
    if (!new_order_single->amount_order) {
        goto fail;
    }
    
    if(cJSON_AddNumberToObject(item, "amount_order", new_order_single->amount_order) == NULL) {
    goto fail; //Numeric
    }


    // new_order_single->price
    if (!new_order_single->price) {
        goto fail;
    }
    
    if(cJSON_AddNumberToObject(item, "price", new_order_single->price) == NULL) {
    goto fail; //Numeric
    }


    // new_order_single->side
    


    // new_order_single->order_type
    


    // new_order_single->time_in_force
    


    // new_order_single->expire_time
    if(new_order_single->expire_time) { 
     } 


    // new_order_single->exec_inst
    
    cJSON *exec_inst = cJSON_AddArrayToObject(item, "exec_inst");
    if(exec_inst == NULL) {
        goto fail; //primitive container
    }

    listEntry_t *exec_instListEntry;
    list_ForEach(exec_instListEntry, new_order_single->exec_inst) {
    if(cJSON_AddStringToObject(exec_inst, "", (char*)exec_instListEntry->data) == NULL)
    {
        goto fail;
    }
    }
    

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

new_order_single_t *new_order_single_parseFromJSON(cJSON *new_order_singleJSON){

    new_order_single_t *new_order_single_local_var = NULL;

    // new_order_single->exchange_id
    cJSON *exchange_id = cJSON_GetObjectItemCaseSensitive(new_order_singleJSON, "exchange_id");
    if (!exchange_id) {
        goto end;
    }

    
    if(!cJSON_IsString(exchange_id))
    {
    goto end; //String
    }

    // new_order_single->client_order_id
    cJSON *client_order_id = cJSON_GetObjectItemCaseSensitive(new_order_singleJSON, "client_order_id");
    if (!client_order_id) {
        goto end;
    }

    
    if(!cJSON_IsString(client_order_id))
    {
    goto end; //String
    }

    // new_order_single->symbol_exchange
    cJSON *symbol_exchange = cJSON_GetObjectItemCaseSensitive(new_order_singleJSON, "symbol_exchange");
    if (symbol_exchange) { 
    if(!cJSON_IsString(symbol_exchange))
    {
    goto end; //String
    }
    }

    // new_order_single->symbol_coinapi
    cJSON *symbol_coinapi = cJSON_GetObjectItemCaseSensitive(new_order_singleJSON, "symbol_coinapi");
    if (symbol_coinapi) { 
    if(!cJSON_IsString(symbol_coinapi))
    {
    goto end; //String
    }
    }

    // new_order_single->amount_order
    cJSON *amount_order = cJSON_GetObjectItemCaseSensitive(new_order_singleJSON, "amount_order");
    if (!amount_order) {
        goto end;
    }

    
    if(!cJSON_IsNumber(amount_order))
    {
    goto end; //Numeric
    }

    // new_order_single->price
    cJSON *price = cJSON_GetObjectItemCaseSensitive(new_order_singleJSON, "price");
    if (!price) {
        goto end;
    }

    
    if(!cJSON_IsNumber(price))
    {
    goto end; //Numeric
    }

    // new_order_single->side
    cJSON *side = cJSON_GetObjectItemCaseSensitive(new_order_singleJSON, "side");
    if (!side) {
        goto end;
    }


    // new_order_single->order_type
    cJSON *order_type = cJSON_GetObjectItemCaseSensitive(new_order_singleJSON, "order_type");
    if (!order_type) {
        goto end;
    }


    // new_order_single->time_in_force
    cJSON *time_in_force = cJSON_GetObjectItemCaseSensitive(new_order_singleJSON, "time_in_force");
    if (!time_in_force) {
        goto end;
    }


    // new_order_single->expire_time
    cJSON *expire_time = cJSON_GetObjectItemCaseSensitive(new_order_singleJSON, "expire_time");
    }

    // new_order_single->exec_inst
    cJSON *exec_inst = cJSON_GetObjectItemCaseSensitive(new_order_singleJSON, "exec_inst");
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


    new_order_single_local_var = new_order_single_create (
        strdup(exchange_id->valuestring),
        strdup(client_order_id->valuestring),
        symbol_exchange ? strdup(symbol_exchange->valuestring) : NULL,
        symbol_coinapi ? strdup(symbol_coinapi->valuestring) : NULL,
        amount_order->valuedouble,
        price->valuedouble,
        exec_inst ? exec_instList : NULL
        );

    return new_order_single_local_var;
end:
    return NULL;

}
