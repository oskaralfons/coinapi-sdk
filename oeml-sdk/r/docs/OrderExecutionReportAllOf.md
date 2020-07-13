# openapi::OrderExecutionReportAllOf

The order execution report message.
## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**client_order_id_format_exchange** | **character** | Hash client id | 
**exchange_order_id** | **character** | Exchange order id | [optional] 
**amount_open** | **numeric** | Amount open | 
**amount_filled** | **numeric** | Amount filled | 
**status** | [**OrdStatus**](OrdStatus.md) |  | 
**time_order** | [**array[array[character]]**](array.md) | Timestamped history of order status changes. | 
**error_message** | **character** | Error message | [optional] 


