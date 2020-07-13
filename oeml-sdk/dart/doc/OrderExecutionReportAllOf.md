# openapi.model.OrderExecutionReportAllOf

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**clientOrderIdFormatExchange** | **String** | Hash client id | [default to null]
**exchangeOrderId** | **String** | Exchange order id | [optional] [default to null]
**amountOpen** | **num** | Amount open | [default to null]
**amountFilled** | **num** | Amount filled | [default to null]
**status** | [**OrdStatus**](OrdStatus.md) |  | [default to null]
**timeOrder** | [**List&lt;List&lt;String&gt;&gt;**](List.md) | Timestamped history of order status changes. | [default to []]
**errorMessage** | **String** | Error message | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


