#ifndef orders_TEST
#define orders_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define orders_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/orders.h"
orders_t* instantiate_orders(int include_optional);



orders_t* instantiate_orders(int include_optional) {
  orders_t* orders = NULL;
  if (include_optional) {
    orders = orders_create(
      "snapshotOrders",
      "KRAKEN",
      list_create()
    );
  } else {
    orders = orders_create(
      "snapshotOrders",
      "KRAKEN",
      list_create()
    );
  }

  return orders;
}


#ifdef orders_MAIN

void test_orders(int include_optional) {
    orders_t* orders_1 = instantiate_orders(include_optional);

	cJSON* jsonorders_1 = orders_convertToJSON(orders_1);
	printf("orders :\n%s\n", cJSON_Print(jsonorders_1));
	orders_t* orders_2 = orders_parseFromJSON(jsonorders_1);
	cJSON* jsonorders_2 = orders_convertToJSON(orders_2);
	printf("repeating orders:\n%s\n", cJSON_Print(jsonorders_2));
}

int main() {
  test_orders(1);
  test_orders(0);

  printf("Hello world \n");
  return 0;
}

#endif // orders_MAIN
#endif // orders_TEST
