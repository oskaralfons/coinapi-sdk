# openapi::OrderExecutionReportAllOf

The order execution report message.
## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**client_order_id_format_exchange** | **character** | The unique identifier of the order assigned by the client converted to the exchange order tag format for the purpose of tracking it. | 
**exchange_order_id** | **character** | The unique identifier of the order assigned by the exchange. | [optional] 
**amount_open** | **numeric** | Amount open | 
**amount_filled** | **numeric** | Amount filled | 
**status** | [**OrdStatus**](OrdStatus.md) |  | 
**time_order** | [**array[array[character]]**](array.md) | Timestamped history of order status changes. | 
**error_message** | **character** | Error message | [optional] 


