#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "orders.h"



orders_t *orders_create(
    char *type,
    char *exchange_id,
    list_t *data
    ) {
    orders_t *orders_local_var = malloc(sizeof(orders_t));
    if (!orders_local_var) {
        return NULL;
    }
    orders_local_var->type = type;
    orders_local_var->exchange_id = exchange_id;
    orders_local_var->data = data;

    return orders_local_var;
}


void orders_free(orders_t *orders) {
    if(NULL == orders){
        return ;
    }
    listEntry_t *listEntry;
    free(orders->type);
    free(orders->exchange_id);
    list_ForEach(listEntry, orders->data) {
        orders_data_free(listEntry->data);
    }
    list_free(orders->data);
    free(orders);
}

cJSON *orders_convertToJSON(orders_t *orders) {
    cJSON *item = cJSON_CreateObject();

    // orders->type
    if(orders->type) { 
    if(cJSON_AddStringToObject(item, "type", orders->type) == NULL) {
    goto fail; //String
    }
     } 


    // orders->exchange_id
    if(orders->exchange_id) { 
    if(cJSON_AddStringToObject(item, "exchange_id", orders->exchange_id) == NULL) {
    goto fail; //String
    }
     } 


    // orders->data
    if(orders->data) { 
    cJSON *data = cJSON_AddArrayToObject(item, "data");
    if(data == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *dataListEntry;
    if (orders->data) {
    list_ForEach(dataListEntry, orders->data) {
    cJSON *itemLocal = orders_data_convertToJSON(dataListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(data, itemLocal);
    }
    }
     } 

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

orders_t *orders_parseFromJSON(cJSON *ordersJSON){

    orders_t *orders_local_var = NULL;

    // orders->type
    cJSON *type = cJSON_GetObjectItemCaseSensitive(ordersJSON, "type");
    if (type) { 
    if(!cJSON_IsString(type))
    {
    goto end; //String
    }
    }

    // orders->exchange_id
    cJSON *exchange_id = cJSON_GetObjectItemCaseSensitive(ordersJSON, "exchange_id");
    if (exchange_id) { 
    if(!cJSON_IsString(exchange_id))
    {
    goto end; //String
    }
    }

    // orders->data
    cJSON *data = cJSON_GetObjectItemCaseSensitive(ordersJSON, "data");
    list_t *dataList;
    if (data) { 
    cJSON *data_local_nonprimitive;
    if(!cJSON_IsArray(data)){
        goto end; //nonprimitive container
    }

    dataList = list_create();

    cJSON_ArrayForEach(data_local_nonprimitive,data )
    {
        if(!cJSON_IsObject(data_local_nonprimitive)){
            goto end;
        }
        orders_data_t *dataItem = orders_data_parseFromJSON(data_local_nonprimitive);

        list_addElement(dataList, dataItem);
    }
    }


    orders_local_var = orders_create (
        type ? strdup(type->valuestring) : NULL,
        exchange_id ? strdup(exchange_id->valuestring) : NULL,
        data ? dataList : NULL
        );

    return orders_local_var;
end:
    return NULL;

}
