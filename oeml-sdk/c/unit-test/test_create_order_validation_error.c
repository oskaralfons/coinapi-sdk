#ifndef create_order_validation_error_TEST
#define create_order_validation_error_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define create_order_validation_error_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/create_order_validation_error.h"
create_order_validation_error_t* instantiate_create_order_validation_error(int include_optional);



create_order_validation_error_t* instantiate_create_order_validation_error(int include_optional) {
  create_order_validation_error_t* create_order_validation_error = NULL;
  if (include_optional) {
    create_order_validation_error = create_order_validation_error_create(
      "https://tools.ietf.org/html/rfc7231#section-6.5.1",
      "One or more validation errors occurred.",
      400,
      "d200e8b5-4271a5461ce5342f",
      "0"
    );
  } else {
    create_order_validation_error = create_order_validation_error_create(
      "https://tools.ietf.org/html/rfc7231#section-6.5.1",
      "One or more validation errors occurred.",
      400,
      "d200e8b5-4271a5461ce5342f",
      "0"
    );
  }

  return create_order_validation_error;
}


#ifdef create_order_validation_error_MAIN

void test_create_order_validation_error(int include_optional) {
    create_order_validation_error_t* create_order_validation_error_1 = instantiate_create_order_validation_error(include_optional);

	cJSON* jsoncreate_order_validation_error_1 = create_order_validation_error_convertToJSON(create_order_validation_error_1);
	printf("create_order_validation_error :\n%s\n", cJSON_Print(jsoncreate_order_validation_error_1));
	create_order_validation_error_t* create_order_validation_error_2 = create_order_validation_error_parseFromJSON(jsoncreate_order_validation_error_1);
	cJSON* jsoncreate_order_validation_error_2 = create_order_validation_error_convertToJSON(create_order_validation_error_2);
	printf("repeating create_order_validation_error:\n%s\n", cJSON_Print(jsoncreate_order_validation_error_2));
}

int main() {
  test_create_order_validation_error(1);
  test_create_order_validation_error(0);

  printf("Hello world \n");
  return 0;
}

#endif // create_order_validation_error_MAIN
#endif // create_order_validation_error_TEST
