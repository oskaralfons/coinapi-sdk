

# OrderExecutionReportAllOf

The order execution report message.
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**clientOrderIdFormatExchange** | **String** | The unique identifier of the order assigned by the client converted to the exchange order tag format for the purpose of tracking it. | 
**exchangeOrderId** | **String** | The unique identifier of the order assigned by the exchange. |  [optional]
**amountOpen** | [**BigDecimal**](BigDecimal.md) | Amount open. | 
**amountFilled** | [**BigDecimal**](BigDecimal.md) | Amount filled. | 
**status** | [**OrdStatus**](OrdStatus.md) |  | 
**timeOrder** | [**List&lt;List&lt;String&gt;&gt;**](List.md) | Timestamped history of order status changes. | 
**errorMessage** | **String** | Error message |  [optional]



