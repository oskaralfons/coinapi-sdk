# OpenapiClient::ExecutionReportAllOf

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**client_order_id_format_exchange** | **String** | Hash client id | [optional] 
**exchange_order_id** | **String** | Exchange order id | [optional] 
**amount_open** | **Float** | Amount open | [optional] 
**amount_filled** | **Float** | Amount filled | [optional] 
**status** | [**OrdStatus**](OrdStatus.md) |  | [optional] 
**time_order** | **Array&lt;Array&lt;String&gt;&gt;** | History of order status changes | [optional] 
**error_message** | **String** | Error message | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::ExecutionReportAllOf.new(client_order_id_format_exchange: f81211e2-27c4-b86a-8143-01088ba9222c,
                                 exchange_order_id: 90832ASASAS89789-1112,
                                 amount_open: 0.22,
                                 amount_filled: 0.0,
                                 status: null,
                                 time_order: null,
                                 error_message: {&quot;result&quot;:&quot;error&quot;,&quot;reason&quot;:&quot;InsufficientFunds&quot;,&quot;message&quot;:&quot;Failed to place buy order on symbol &#39;BTCUSD&#39; for price $7,000.00 and quantity 0.22 BTC due to insufficient funds&quot;})
```


