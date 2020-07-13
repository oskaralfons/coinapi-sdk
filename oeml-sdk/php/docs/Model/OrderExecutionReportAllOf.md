# # OrderExecutionReportAllOf

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**client_order_id_format_exchange** | **string** | The unique identifier of the order assigned by the client converted to the exchange order tag format for the purpose of tracking it. | 
**exchange_order_id** | **string** | The unique identifier of the order assigned by the exchange. | [optional] 
**amount_open** | **float** | Amount open | 
**amount_filled** | **float** | Amount filled | 
**status** | [**\OpenAPI\Client\Model\OrdStatus**](OrdStatus.md) |  | 
**time_order** | [**string[][]**](array.md) | Timestamped history of order status changes. | 
**error_message** | **string** | Error message | [optional] 

[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)


