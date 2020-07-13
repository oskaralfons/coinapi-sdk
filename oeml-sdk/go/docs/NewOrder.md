# NewOrder

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ExchangeId** | **string** | Exchange name | [optional] 
**ClientOrderId** | **string** | Client unique identifier for the trade. | [optional] 
**SymbolExchange** | **string** | The symbol of the order. | [optional] 
**SymbolCoinapi** | **string** | The CoinAPI symbol of the order. | [optional] 
**AmountOrder** | **float32** | Quoted decimal amount to purchase. | [optional] 
**Price** | **float32** | Quoted decimal amount to spend per unit. | [optional] 
**Side** | **string** | Buy or Sell | [optional] 
**OrderType** | **string** | The order type. | [optional] 
**TimeInForce** | [**TimeInForce**](TimeInForce.md) |  | [optional] 
**ExpireTime** | **string** | Required for orders with time_in_force &#x3D; GOOD_TILL_TIME_EXCHANGE, GOOD_TILL_TIME_OMS | [optional] 
**ExecInst** | **[]string** | Order execution instructions are documented in the separate section: &lt;a href&#x3D;\&quot;#oeml-order-params-exec\&quot;&gt;OEML / Starter Guide / Order parameters / Execution instructions&lt;/a&gt;  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


