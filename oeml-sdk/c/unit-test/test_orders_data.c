#ifndef orders_data_TEST
#define orders_data_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define orders_data_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/orders_data.h"
orders_data_t* instantiate_orders_data(int include_optional);



orders_data_t* instantiate_orders_data(int include_optional) {
  orders_data_t* orders_data = NULL;
  if (include_optional) {
    orders_data = orders_data_create(
      "KRAKEN",
      "KPP-222389382-AQ",
      "f81211e2-27c4-b86a-8143-01088ba9222c",
      "90832ASASAS89789-1112",
      0.22,
      0.0,
      oeml___rest_api_orders_data__RECEIVED,
      list_create(),
      "{"result":"error","reason":"InsufficientFunds","message":"Failed to place buy order on symbol 'BTCUSD' for price $7,000.00 and quantity 0.22 BTC due to insufficient funds"}",
      "KPP-222389382-AQ",
      "BTCUSD",
      "KRAKEN_SPOT_BTC_USD",
      0.045,
      0.0783,
      oeml___rest_api_orders_data_SIDE_"BUY",
      oeml___rest_api_orders_data_ORDERTYPE_"LIMIT",
      oeml___rest_api_orders_data__"GOOD_TILL_CANCEL",
      null,
      MAKER_OR_CANCEL
    );
  } else {
    orders_data = orders_data_create(
      "KRAKEN",
      "KPP-222389382-AQ",
      "f81211e2-27c4-b86a-8143-01088ba9222c",
      "90832ASASAS89789-1112",
      0.22,
      0.0,
      oeml___rest_api_orders_data__RECEIVED,
      list_create(),
      "{"result":"error","reason":"InsufficientFunds","message":"Failed to place buy order on symbol 'BTCUSD' for price $7,000.00 and quantity 0.22 BTC due to insufficient funds"}",
      "KPP-222389382-AQ",
      "BTCUSD",
      "KRAKEN_SPOT_BTC_USD",
      0.045,
      0.0783,
      oeml___rest_api_orders_data_SIDE_"BUY",
      oeml___rest_api_orders_data_ORDERTYPE_"LIMIT",
      oeml___rest_api_orders_data__"GOOD_TILL_CANCEL",
      null,
      MAKER_OR_CANCEL
    );
  }

  return orders_data;
}


#ifdef orders_data_MAIN

void test_orders_data(int include_optional) {
    orders_data_t* orders_data_1 = instantiate_orders_data(include_optional);

	cJSON* jsonorders_data_1 = orders_data_convertToJSON(orders_data_1);
	printf("orders_data :\n%s\n", cJSON_Print(jsonorders_data_1));
	orders_data_t* orders_data_2 = orders_data_parseFromJSON(jsonorders_data_1);
	cJSON* jsonorders_data_2 = orders_data_convertToJSON(orders_data_2);
	printf("repeating orders_data:\n%s\n", cJSON_Print(jsonorders_data_2));
}

int main() {
  test_orders_data(1);
  test_orders_data(0);

  printf("Hello world \n");
  return 0;
}

#endif // orders_data_MAIN
#endif // orders_data_TEST
