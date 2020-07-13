# openapi.model.OrderExecutionReport

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**exchangeId** | **String** | Exchange identifier. | [default to null]
**clientOrderId** | **String** | The unique identifier of the order assigned by the client. | [default to null]
**symbolExchange** | **String** | Exchange symbol. One of the properties (&#x60;symbol_exchange&#x60;, &#x60;symbol_coinapi&#x60;) is required to identify the market for the new order. | [optional] [default to null]
**symbolCoinapi** | **String** | CoinAPI symbol. One of the properties (&#x60;symbol_exchange&#x60;, &#x60;symbol_coinapi&#x60;) is required to identify the market for the new order. | [optional] [default to null]
**amountOrder** | **num** | Order quantity. | [default to null]
**price** | **num** | Order price. | [default to null]
**side** | [**OrdSide**](OrdSide.md) |  | [default to null]
**orderType** | [**OrdType**](OrdType.md) |  | [default to null]
**timeInForce** | [**TimeInForce**](TimeInForce.md) |  | [default to null]
**expireTime** | [**DateTime**](DateTime.md) | Expiration time. Conditionaly required for orders with time_in_force &#x3D; &#x60;GOOD_TILL_TIME_EXCHANGE&#x60; or &#x60;GOOD_TILL_TIME_OEML&#x60;. | [optional] [default to null]
**execInst** | **List&lt;String&gt;** | Order execution instructions are documented in the separate section: &lt;a href&#x3D;\&quot;#oeml-order-params-exec\&quot;&gt;OEML / Starter Guide / Order parameters / Execution instructions&lt;/a&gt;  | [optional] [default to const []]
**clientOrderIdFormatExchange** | **String** | The unique identifier of the order assigned by the client converted to the exchange order tag format for the purpose of tracking it. | [default to null]
**exchangeOrderId** | **String** | The unique identifier of the order assigned by the exchange. | [optional] [default to null]
**amountOpen** | **num** | Amount open | [default to null]
**amountFilled** | **num** | Amount filled | [default to null]
**status** | [**OrdStatus**](OrdStatus.md) |  | [default to null]
**timeOrder** | [**List&lt;List&lt;String&gt;&gt;**](List.md) | Timestamped history of order status changes. | [default to const []]
**errorMessage** | **String** | Error message | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


