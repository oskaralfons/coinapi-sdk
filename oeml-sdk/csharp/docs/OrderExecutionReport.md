
# CoinAPI.OMS.REST.V1.Model.OrderExecutionReport

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ExchangeId** | **string** | Exchange identifier. | 
**ClientOrderId** | **string** | The unique identifier of the order assigned by the client. | 
**SymbolExchange** | **string** | Exchange symbol. One of the properties (&#x60;symbol_exchange&#x60;, &#x60;symbol_coinapi&#x60;) is required to identify the market for the new order. | [optional] 
**SymbolCoinapi** | **string** | CoinAPI symbol. One of the properties (&#x60;symbol_exchange&#x60;, &#x60;symbol_coinapi&#x60;) is required to identify the market for the new order. | [optional] 
**AmountOrder** | **decimal** | Order quantity. | 
**Price** | **decimal** | Order price. | 
**Side** | **OrdSide** |  | 
**OrderType** | **OrdType** |  | 
**TimeInForce** | **TimeInForce** |  | 
**ExpireTime** | **DateTime** | Expiration time. Conditionaly required for orders with time_in_force &#x3D; &#x60;GOOD_TILL_TIME_EXCHANGE&#x60; or &#x60;GOOD_TILL_TIME_OEML&#x60;. | [optional] 
**ExecInst** | **List&lt;string&gt;** | Order execution instructions are documented in the separate section: &lt;a href&#x3D;\&quot;#oeml-order-params-exec\&quot;&gt;OEML / Starter Guide / Order parameters / Execution instructions&lt;/a&gt;  | [optional] 
**ClientOrderIdFormatExchange** | **string** | The unique identifier of the order assigned by the client converted to the exchange order tag format for the purpose of tracking it. | 
**ExchangeOrderId** | **string** | The unique identifier of the order assigned by the exchange. | [optional] 
**AmountOpen** | **decimal** | Amount open. | 
**AmountFilled** | **decimal** | Amount filled. | 
**Status** | **OrdStatus** |  | 
**TimeOrder** | **List&lt;List&lt;string&gt;&gt;** | Timestamped history of order status changes. | 
**ErrorMessage** | **string** | Error message | [optional] 

[[Back to Model list]](../README.md#documentation-for-models)
[[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to README]](../README.md)

