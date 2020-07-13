# OrderExecutionReportAllOf

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ClientOrderIdFormatExchange** | **string** | The unique identifier of the order assigned by the client converted to the exchange order tag format for the purpose of tracking it. | 
**ExchangeOrderId** | **string** | The unique identifier of the order assigned by the exchange. | [optional] 
**AmountOpen** | **float32** | Amount open | 
**AmountFilled** | **float32** | Amount filled | 
**Status** | [**OrdStatus**](OrdStatus.md) |  | 
**TimeOrder** | [**[][]string**](array.md) | Timestamped history of order status changes. | 
**ErrorMessage** | **string** | Error message | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


