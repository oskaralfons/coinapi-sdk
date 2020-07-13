# openapi::OrdersData

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**exchange_id** | **character** | Exchange name | [optional] 
**id** | **character** | Client unique identifier for the trade. | [optional] 
**client_order_id_format_exchange** | **character** | Hash client id | [optional] 
**exchange_order_id** | **character** | Exchange order id | [optional] 
**amount_open** | **numeric** | Amount open | [optional] 
**amount_filled** | **numeric** | Amount filled | [optional] 
**status** | [**OrdStatus**](OrdStatus.md) |  | [optional] 
**time_order** | [**array[array[character]]**](array.md) | History of order status changes | [optional] 
**error_message** | **character** | Error message | [optional] 
**client_order_id** | **character** | Client unique identifier for the trade. | [optional] 
**symbol_exchange** | **character** | The symbol of the order. | [optional] 
**symbol_coinapi** | **character** | The CoinAPI symbol of the order. | [optional] 
**amount_order** | **numeric** | Quoted decimal amount to purchase. | [optional] 
**price** | **numeric** | Quoted decimal amount to spend per unit. | [optional] 
**side** | **character** | Buy or Sell | [optional] 
**order_type** | **character** | The order type. | [optional] 
**time_in_force** | [**TimeInForce**](TimeInForce.md) |  | [optional] 
**expire_time** | **character** | Required for orders with time_in_force &#x3D; GOOD_TILL_TIME_EXCHANGE, GOOD_TILL_TIME_OMS | [optional] 
**exec_inst** | **array[character]** | Order execution instructions are documented in the separate section: &lt;a href&#x3D;\&quot;#oeml-order-params-exec\&quot;&gt;OEML / Starter Guide / Order parameters / Execution instructions&lt;/a&gt; | [optional] 


