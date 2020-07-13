# openapi.model.OrderCancelSingleRequest

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**exchangeId** | **String** | Exchange identifier. | [default to null]
**exchangeOrderId** | **String** | The unique identifier of the order assigned by the exchange. One of the properties (&#x60;exchange_order_id&#x60;, &#x60;client_order_id&#x60;) is required to identify the new order. | [optional] [default to null]
**clientOrderId** | **String** | The unique identifier of the order assigned by the client. One of the properties (&#x60;exchange_order_id&#x60;, &#x60;client_order_id&#x60;) is required to identify the new order. | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


