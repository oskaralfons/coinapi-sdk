# ExecutionReportAllOf

The order execution report message.
## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**client_order_id_format_exchange** | **str** | Hash client id | 
**exchange_order_id** | **str** | Exchange order id | [optional] 
**amount_open** | **float** | Amount open | 
**amount_filled** | **float** | Amount filled | 
**status** | [**OrdStatus**](OrdStatus.md) |  | 
**time_order** | **list[list[str]]** | History of order status changes | 
**error_message** | **str** | Error message | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


