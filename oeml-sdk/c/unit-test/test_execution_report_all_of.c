#ifndef execution_report_all_of_TEST
#define execution_report_all_of_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define execution_report_all_of_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/execution_report_all_of.h"
execution_report_all_of_t* instantiate_execution_report_all_of(int include_optional);



execution_report_all_of_t* instantiate_execution_report_all_of(int include_optional) {
  execution_report_all_of_t* execution_report_all_of = NULL;
  if (include_optional) {
    execution_report_all_of = execution_report_all_of_create(
      "f81211e2-27c4-b86a-8143-01088ba9222c",
      "90832ASASAS89789-1112",
      0.22,
      0.0,
      oeml___rest_api_execution_report_all_of__RECEIVED,
      list_create(),
      "{"result":"error","reason":"InsufficientFunds","message":"Failed to place buy order on symbol 'BTCUSD' for price $7,000.00 and quantity 0.22 BTC due to insufficient funds"}"
    );
  } else {
    execution_report_all_of = execution_report_all_of_create(
      "f81211e2-27c4-b86a-8143-01088ba9222c",
      "90832ASASAS89789-1112",
      0.22,
      0.0,
      oeml___rest_api_execution_report_all_of__RECEIVED,
      list_create(),
      "{"result":"error","reason":"InsufficientFunds","message":"Failed to place buy order on symbol 'BTCUSD' for price $7,000.00 and quantity 0.22 BTC due to insufficient funds"}"
    );
  }

  return execution_report_all_of;
}


#ifdef execution_report_all_of_MAIN

void test_execution_report_all_of(int include_optional) {
    execution_report_all_of_t* execution_report_all_of_1 = instantiate_execution_report_all_of(include_optional);

	cJSON* jsonexecution_report_all_of_1 = execution_report_all_of_convertToJSON(execution_report_all_of_1);
	printf("execution_report_all_of :\n%s\n", cJSON_Print(jsonexecution_report_all_of_1));
	execution_report_all_of_t* execution_report_all_of_2 = execution_report_all_of_parseFromJSON(jsonexecution_report_all_of_1);
	cJSON* jsonexecution_report_all_of_2 = execution_report_all_of_convertToJSON(execution_report_all_of_2);
	printf("repeating execution_report_all_of:\n%s\n", cJSON_Print(jsonexecution_report_all_of_2));
}

int main() {
  test_execution_report_all_of(1);
  test_execution_report_all_of(0);

  printf("Hello world \n");
  return 0;
}

#endif // execution_report_all_of_MAIN
#endif // execution_report_all_of_TEST
