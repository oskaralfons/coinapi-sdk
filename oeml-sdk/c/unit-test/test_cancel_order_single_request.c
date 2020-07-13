#ifndef cancel_order_single_request_TEST
#define cancel_order_single_request_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define cancel_order_single_request_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/cancel_order_single_request.h"
cancel_order_single_request_t* instantiate_cancel_order_single_request(int include_optional);



cancel_order_single_request_t* instantiate_cancel_order_single_request(int include_optional) {
  cancel_order_single_request_t* cancel_order_single_request = NULL;
  if (include_optional) {
    cancel_order_single_request = cancel_order_single_request_create(
      "KRAKEN",
      "d8574207d9e3b16a4a5511753eeef1751",
      "A12345"
    );
  } else {
    cancel_order_single_request = cancel_order_single_request_create(
      "KRAKEN",
      "d8574207d9e3b16a4a5511753eeef1751",
      "A12345"
    );
  }

  return cancel_order_single_request;
}


#ifdef cancel_order_single_request_MAIN

void test_cancel_order_single_request(int include_optional) {
    cancel_order_single_request_t* cancel_order_single_request_1 = instantiate_cancel_order_single_request(include_optional);

	cJSON* jsoncancel_order_single_request_1 = cancel_order_single_request_convertToJSON(cancel_order_single_request_1);
	printf("cancel_order_single_request :\n%s\n", cJSON_Print(jsoncancel_order_single_request_1));
	cancel_order_single_request_t* cancel_order_single_request_2 = cancel_order_single_request_parseFromJSON(jsoncancel_order_single_request_1);
	cJSON* jsoncancel_order_single_request_2 = cancel_order_single_request_convertToJSON(cancel_order_single_request_2);
	printf("repeating cancel_order_single_request:\n%s\n", cJSON_Print(jsoncancel_order_single_request_2));
}

int main() {
  test_cancel_order_single_request(1);
  test_cancel_order_single_request(0);

  printf("Hello world \n");
  return 0;
}

#endif // cancel_order_single_request_MAIN
#endif // cancel_order_single_request_TEST
