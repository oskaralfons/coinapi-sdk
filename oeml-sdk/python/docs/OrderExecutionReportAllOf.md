# OrderExecutionReportAllOf

The order execution report message.
## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**client_order_id_format_exchange** | **str** | The unique identifier of the order assigned by the client converted to the exchange order tag format for the purpose of tracking it. | 
**exchange_order_id** | **str** | The unique identifier of the order assigned by the exchange. | [optional] 
**amount_open** | **float** | Amount open. | 
**amount_filled** | **float** | Amount filled. | 
**status** | [**OrdStatus**](OrdStatus.md) |  | 
**time_order** | **list[list[str]]** | Timestamped history of order status changes. | 
**error_message** | **str** | Error message | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


