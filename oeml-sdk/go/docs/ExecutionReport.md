# ExecutionReport

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ExchangeId** | **string** | Exchange identifier. | 
**ClientOrderId** | **string** | Unique identifier for the order assigned by the &#x60;OEML API&#x60; client. | 
**SymbolExchange** | **string** | Exchange symbol. One of the properties (&#x60;symbol_exchange&#x60;, &#x60;symbol_coinapi&#x60;) is required to identify the market for the order. | [optional] 
**SymbolCoinapi** | **string** | CoinAPI symbol. One of the properties (&#x60;symbol_exchange&#x60;, &#x60;symbol_coinapi&#x60;) is required to identify the market for the order. | [optional] 
**AmountOrder** | **float32** | Order quantity. | 
**Price** | **float32** | Order price. | 
**Side** | [**OrdSide**](OrdSide.md) |  | 
**OrderType** | [**OrdType**](OrdType.md) |  | 
**TimeInForce** | [**TimeInForce**](TimeInForce.md) |  | 
**ExpireTime** | **string** | Expiration time. Conditionaly required for orders with time_in_force &#x3D; &#x60;GOOD_TILL_TIME_EXCHANGE&#x60; or &#x60;GOOD_TILL_TIME_OEML&#x60;. | [optional] 
**ExecInst** | **[]string** | Order execution instructions are documented in the separate section: &lt;a href&#x3D;\&quot;#oeml-order-params-exec\&quot;&gt;OEML / Starter Guide / Order parameters / Execution instructions&lt;/a&gt; | [optional] 
**ClientOrderIdFormatExchange** | **string** | Hash client id | 
**ExchangeOrderId** | **string** | Exchange order id | [optional] 
**AmountOpen** | **float32** | Amount open | 
**AmountFilled** | **float32** | Amount filled | 
**Status** | [**OrdStatus**](OrdStatus.md) |  | 
**TimeOrder** | [**[][]string**](array.md) | Timestamped history of order status changes. | 
**ErrorMessage** | **string** | Error message | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


