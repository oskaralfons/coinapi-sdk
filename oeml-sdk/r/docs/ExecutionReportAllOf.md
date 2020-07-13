# openapi::ExecutionReportAllOf

The order execution report message.
## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**client_order_id_format_exchange** | **character** | Hash client id | [optional] 
**exchange_order_id** | **character** | Exchange order id | [optional] 
**amount_open** | **numeric** | Amount open | [optional] 
**amount_filled** | **numeric** | Amount filled | [optional] 
**status** | [**OrdStatus**](OrdStatus.md) |  | [optional] 
**time_order** | [**array[array[character]]**](array.md) | History of order status changes | [optional] 
**error_message** | **character** | Error message | [optional] 


