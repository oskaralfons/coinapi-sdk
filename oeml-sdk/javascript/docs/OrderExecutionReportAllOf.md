# OemlRestApi.OrderExecutionReportAllOf

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**clientOrderIdFormatExchange** | **String** | The unique identifier of the order assigned by the client converted to the exchange order tag format for the purpose of tracking it. | 
**exchangeOrderId** | **String** | The unique identifier of the order assigned by the exchange. | [optional] 
**amountOpen** | **Number** | Amount open. | 
**amountFilled** | **Number** | Amount filled. | 
**status** | [**OrdStatus**](OrdStatus.md) |  | 
**timeOrder** | **[[String]]** | Timestamped history of order status changes. | 
**errorMessage** | **String** | Error message | [optional] 


