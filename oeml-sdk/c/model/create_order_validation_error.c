#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "create_order_validation_error.h"



create_order_validation_error_t *create_order_validation_error_create(
    char *type,
    char *title,
    double status,
    char *trace_id,
    char *errors
    ) {
    create_order_validation_error_t *create_order_validation_error_local_var = malloc(sizeof(create_order_validation_error_t));
    if (!create_order_validation_error_local_var) {
        return NULL;
    }
    create_order_validation_error_local_var->type = type;
    create_order_validation_error_local_var->title = title;
    create_order_validation_error_local_var->status = status;
    create_order_validation_error_local_var->trace_id = trace_id;
    create_order_validation_error_local_var->errors = errors;

    return create_order_validation_error_local_var;
}


void create_order_validation_error_free(create_order_validation_error_t *create_order_validation_error) {
    if(NULL == create_order_validation_error){
        return ;
    }
    listEntry_t *listEntry;
    free(create_order_validation_error->type);
    free(create_order_validation_error->title);
    free(create_order_validation_error->trace_id);
    free(create_order_validation_error->errors);
    free(create_order_validation_error);
}

cJSON *create_order_validation_error_convertToJSON(create_order_validation_error_t *create_order_validation_error) {
    cJSON *item = cJSON_CreateObject();

    // create_order_validation_error->type
    if(create_order_validation_error->type) { 
    if(cJSON_AddStringToObject(item, "type", create_order_validation_error->type) == NULL) {
    goto fail; //String
    }
     } 


    // create_order_validation_error->title
    if(create_order_validation_error->title) { 
    if(cJSON_AddStringToObject(item, "title", create_order_validation_error->title) == NULL) {
    goto fail; //String
    }
     } 


    // create_order_validation_error->status
    if(create_order_validation_error->status) { 
    if(cJSON_AddNumberToObject(item, "status", create_order_validation_error->status) == NULL) {
    goto fail; //Numeric
    }
     } 


    // create_order_validation_error->trace_id
    if(create_order_validation_error->trace_id) { 
    if(cJSON_AddStringToObject(item, "traceId", create_order_validation_error->trace_id) == NULL) {
    goto fail; //String
    }
     } 


    // create_order_validation_error->errors
    if(create_order_validation_error->errors) { 
    if(cJSON_AddStringToObject(item, "errors", create_order_validation_error->errors) == NULL) {
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

create_order_validation_error_t *create_order_validation_error_parseFromJSON(cJSON *create_order_validation_errorJSON){

    create_order_validation_error_t *create_order_validation_error_local_var = NULL;

    // create_order_validation_error->type
    cJSON *type = cJSON_GetObjectItemCaseSensitive(create_order_validation_errorJSON, "type");
    if (type) { 
    if(!cJSON_IsString(type))
    {
    goto end; //String
    }
    }

    // create_order_validation_error->title
    cJSON *title = cJSON_GetObjectItemCaseSensitive(create_order_validation_errorJSON, "title");
    if (title) { 
    if(!cJSON_IsString(title))
    {
    goto end; //String
    }
    }

    // create_order_validation_error->status
    cJSON *status = cJSON_GetObjectItemCaseSensitive(create_order_validation_errorJSON, "status");
    if (status) { 
    if(!cJSON_IsNumber(status))
    {
    goto end; //Numeric
    }
    }

    // create_order_validation_error->trace_id
    cJSON *trace_id = cJSON_GetObjectItemCaseSensitive(create_order_validation_errorJSON, "traceId");
    if (trace_id) { 
    if(!cJSON_IsString(trace_id))
    {
    goto end; //String
    }
    }

    // create_order_validation_error->errors
    cJSON *errors = cJSON_GetObjectItemCaseSensitive(create_order_validation_errorJSON, "errors");
    if (errors) { 
    if(!cJSON_IsString(errors))
    {
    goto end; //String
    }
    }


    create_order_validation_error_local_var = create_order_validation_error_create (
        type ? strdup(type->valuestring) : NULL,
        title ? strdup(title->valuestring) : NULL,
        status ? status->valuedouble : 0,
        trace_id ? strdup(trace_id->valuestring) : NULL,
        errors ? strdup(errors->valuestring) : NULL
        );

    return create_order_validation_error_local_var;
end:
    return NULL;

}
