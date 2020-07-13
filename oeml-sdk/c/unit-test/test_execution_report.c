#ifndef execution_report_TEST
#define execution_report_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define execution_report_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/execution_report.h"
execution_report_t* instantiate_execution_report(int include_optional);



execution_report_t* instantiate_execution_report(int include_optional) {
  execution_report_t* execution_report = NULL;
  if (include_optional) {
    execution_report = execution_report_create(
      "updateOrder",
      "KRAKEN",
      "KPP-222389382-AQ",
      "f81211e2-27c4-b86a-8143-01088ba9222c",
      "90832ASASAS89789-1112",
      0.22,
      0.0,
      oeml___rest_api_execution_report__RECEIVED,
      list_create(),
      "{"result":"error","reason":"InsufficientFunds","message":"Failed to place buy order on symbol 'BTCUSD' for price $7,000.00 and quantity 0.22 BTC due to insufficient funds"}",
      "KPP-222389382-AQ",
      "BTCUSD",
      "KRAKEN_SPOT_BTC_USD",
      0.045,
      0.0783,
      oeml___rest_api_execution_report_SIDE_"BUY",
      oeml___rest_api_execution_report_ORDERTYPE_"LIMIT",
      oeml___rest_api_execution_report__GOOD_TILL_CANCEL,
      null,
      list_create()
    );
  } else {
    execution_report = execution_report_create(
      "updateOrder",
      "KRAKEN",
      "KPP-222389382-AQ",
      "f81211e2-27c4-b86a-8143-01088ba9222c",
      "90832ASASAS89789-1112",
      0.22,
      0.0,
      oeml___rest_api_execution_report__RECEIVED,
      list_create(),
      "{"result":"error","reason":"InsufficientFunds","message":"Failed to place buy order on symbol 'BTCUSD' for price $7,000.00 and quantity 0.22 BTC due to insufficient funds"}",
      "KPP-222389382-AQ",
      "BTCUSD",
      "KRAKEN_SPOT_BTC_USD",
      0.045,
      0.0783,
      oeml___rest_api_execution_report_SIDE_"BUY",
      oeml___rest_api_execution_report_ORDERTYPE_"LIMIT",
      oeml___rest_api_execution_report__GOOD_TILL_CANCEL,
      null,
      list_create()
    );
  }

  return execution_report;
}


#ifdef execution_report_MAIN

void test_execution_report(int include_optional) {
    execution_report_t* execution_report_1 = instantiate_execution_report(include_optional);

	cJSON* jsonexecution_report_1 = execution_report_convertToJSON(execution_report_1);
	printf("execution_report :\n%s\n", cJSON_Print(jsonexecution_report_1));
	execution_report_t* execution_report_2 = execution_report_parseFromJSON(jsonexecution_report_1);
	cJSON* jsonexecution_report_2 = execution_report_convertToJSON(execution_report_2);
	printf("repeating execution_report:\n%s\n", cJSON_Print(jsonexecution_report_2));
}

int main() {
  test_execution_report(1);
  test_execution_report(0);

  printf("Hello world \n");
  return 0;
}

#endif // execution_report_MAIN
#endif // execution_report_TEST
