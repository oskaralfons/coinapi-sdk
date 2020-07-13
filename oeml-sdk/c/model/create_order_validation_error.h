/*
 * create_order_validation_error.h
 *
 * 
 */

#ifndef _create_order_validation_error_H_
#define _create_order_validation_error_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct create_order_validation_error_t create_order_validation_error_t;




typedef struct create_order_validation_error_t {
    char *type; // string
    char *title; // string
    double status; //numeric
    char *trace_id; // string
    char *errors; // string

} create_order_validation_error_t;

create_order_validation_error_t *create_order_validation_error_create(
    char *type,
    char *title,
    double status,
    char *trace_id,
    char *errors
);

void create_order_validation_error_free(create_order_validation_error_t *create_order_validation_error);

create_order_validation_error_t *create_order_validation_error_parseFromJSON(cJSON *create_order_validation_errorJSON);

cJSON *create_order_validation_error_convertToJSON(create_order_validation_error_t *create_order_validation_error);

#endif /* _create_order_validation_error_H_ */

