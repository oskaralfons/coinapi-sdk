# OpenapiClient::NewOrder

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**exchange_id** | **String** | Exchange identifier. | 
**client_order_id** | **String** | Unique identifier for the order assigned by the &#x60;OEML API&#x60; client. | 
**symbol_exchange** | **String** | Exchange symbol. One of the properties (&#x60;symbol_exchange&#x60;, &#x60;symbol_coinapi&#x60;) is required to identify the market for the order. | [optional] 
**symbol_coinapi** | **String** | CoinAPI symbol. One of the properties (&#x60;symbol_exchange&#x60;, &#x60;symbol_coinapi&#x60;) is required to identify the market for the order. | [optional] 
**amount_order** | **Float** | Order quantity. | 
**price** | **Float** | Order price. | 
**side** | [**OrdSide**](OrdSide.md) |  | 
**order_type** | [**OrdType**](OrdType.md) |  | 
**time_in_force** | [**TimeInForce**](TimeInForce.md) |  | 
**expire_time** | **Date** | Expiration time. Conditionaly required for orders with time_in_force &#x3D; &#x60;GOOD_TILL_TIME_EXCHANGE&#x60; or &#x60;GOOD_TILL_TIME_OEML&#x60;. | [optional] 
**exec_inst** | **Array&lt;String&gt;** | Order execution instructions are documented in the separate section: &lt;a href&#x3D;\&quot;#oeml-order-params-exec\&quot;&gt;OEML / Starter Guide / Order parameters / Execution instructions&lt;/a&gt; | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::NewOrder.new(exchange_id: KRAKEN,
                                 client_order_id: KPP-222389382-AQ,
                                 symbol_exchange: BTCUSD,
                                 symbol_coinapi: KRAKEN_SPOT_BTC_USD,
                                 amount_order: 0.045,
                                 price: 0.0783,
                                 side: null,
                                 order_type: null,
                                 time_in_force: null,
                                 expire_time: null,
                                 exec_inst: MAKER_OR_CANCEL)
```


