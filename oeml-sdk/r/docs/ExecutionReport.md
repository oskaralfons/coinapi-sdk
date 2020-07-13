# openapi::ExecutionReport

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**exchange_id** | **character** | Exchange identifier. | 
**client_order_id** | **character** | Unique identifier for the order assigned by the &#x60;OEML API&#x60; client. | 
**symbol_exchange** | **character** | Exchange symbol. One of the properties (&#x60;symbol_exchange&#x60;, &#x60;symbol_coinapi&#x60;) is required to identify the market for the order. | [optional] 
**symbol_coinapi** | **character** | CoinAPI symbol. One of the properties (&#x60;symbol_exchange&#x60;, &#x60;symbol_coinapi&#x60;) is required to identify the market for the order. | [optional] 
**amount_order** | **numeric** | Order quantity. | 
**price** | **numeric** | Order price. | 
**side** | [**OrdSide**](OrdSide.md) |  | 
**order_type** | [**OrdType**](OrdType.md) |  | 
**time_in_force** | [**TimeInForce**](TimeInForce.md) |  | 
**expire_time** | **character** | Expiration time. Conditionaly required for orders with time_in_force &#x3D; &#x60;GOOD_TILL_TIME_EXCHANGE&#x60; or &#x60;GOOD_TILL_TIME_OEML&#x60;. | [optional] 
**exec_inst** | **array[character]** | Order execution instructions are documented in the separate section: &lt;a href&#x3D;\&quot;#oeml-order-params-exec\&quot;&gt;OEML / Starter Guide / Order parameters / Execution instructions&lt;/a&gt; | [optional] 
**client_order_id_format_exchange** | **character** | Hash client id | [optional] 
**exchange_order_id** | **character** | Exchange order id | [optional] 
**amount_open** | **numeric** | Amount open | [optional] 
**amount_filled** | **numeric** | Amount filled | [optional] 
**status** | [**OrdStatus**](OrdStatus.md) |  | [optional] 
**time_order** | [**array[array[character]]**](array.md) | History of order status changes | [optional] 
**error_message** | **character** | Error message | [optional] 


