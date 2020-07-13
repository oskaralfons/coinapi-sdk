#ifndef new_order_single_TEST
#define new_order_single_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define new_order_single_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/new_order_single.h"
new_order_single_t* instantiate_new_order_single(int include_optional);



new_order_single_t* instantiate_new_order_single(int include_optional) {
  new_order_single_t* new_order_single = NULL;
  if (include_optional) {
    new_order_single = new_order_single_create(
      "KRAKEN",
      "6ab36bc1-344d-432e-ac6d-0bf44ee64c2b",
      "XBT/USDT",
      "KRAKEN_SPOT_BTC_USDT",
      0.045,
      0.0783,
      oeml___rest_api_new_order_single__"BUY",
      oeml___rest_api_new_order_single__"LIMIT",
      oeml___rest_api_new_order_single__"GOOD_TILL_CANCEL",
      2020-01-01T10:45:20.1677709Z,
      ["MAKER_OR_CANCEL"]
    );
  } else {
    new_order_single = new_order_single_create(
      "KRAKEN",
      "6ab36bc1-344d-432e-ac6d-0bf44ee64c2b",
      "XBT/USDT",
      "KRAKEN_SPOT_BTC_USDT",
      0.045,
      0.0783,
      oeml___rest_api_new_order_single__"BUY",
      oeml___rest_api_new_order_single__"LIMIT",
      oeml___rest_api_new_order_single__"GOOD_TILL_CANCEL",
      2020-01-01T10:45:20.1677709Z,
      ["MAKER_OR_CANCEL"]
    );
  }

  return new_order_single;
}


#ifdef new_order_single_MAIN

void test_new_order_single(int include_optional) {
    new_order_single_t* new_order_single_1 = instantiate_new_order_single(include_optional);

	cJSON* jsonnew_order_single_1 = new_order_single_convertToJSON(new_order_single_1);
	printf("new_order_single :\n%s\n", cJSON_Print(jsonnew_order_single_1));
	new_order_single_t* new_order_single_2 = new_order_single_parseFromJSON(jsonnew_order_single_1);
	cJSON* jsonnew_order_single_2 = new_order_single_convertToJSON(new_order_single_2);
	printf("repeating new_order_single:\n%s\n", cJSON_Print(jsonnew_order_single_2));
}

int main() {
  test_new_order_single(1);
  test_new_order_single(0);

  printf("Hello world \n");
  return 0;
}

#endif // new_order_single_MAIN
#endif // new_order_single_TEST
