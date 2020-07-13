# openapi.model.OrderExecutionReportAllOf

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**clientOrderIdFormatExchange** | **String** | The unique identifier of the order assigned by the client converted to the exchange order tag format for the purpose of tracking it. | [default to null]
**exchangeOrderId** | **String** | The unique identifier of the order assigned by the exchange. | [optional] [default to null]
**amountOpen** | **num** | Amount open. | [default to null]
**amountFilled** | **num** | Amount filled. | [default to null]
**status** | [**OrdStatus**](OrdStatus.md) |  | [default to null]
**timeOrder** | [**BuiltList&lt;BuiltList&lt;String&gt;&gt;**](List.md) | Timestamped history of order status changes. | [default to const []]
**errorMessage** | **String** | Error message | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


