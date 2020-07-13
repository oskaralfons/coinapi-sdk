
# OrderExecutionReportAllOf

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**clientOrderIdFormatExchange** | **kotlin.String** | The unique identifier of the order assigned by the client converted to the exchange order tag format for the purpose of tracking it. | 
**amountOpen** | [**java.math.BigDecimal**](java.math.BigDecimal.md) | Amount open | 
**amountFilled** | [**java.math.BigDecimal**](java.math.BigDecimal.md) | Amount filled | 
**status** | [**OrdStatus**](OrdStatus.md) |  | 
**timeOrder** | **kotlin.Array&lt;kotlin.Array&lt;kotlin.String&gt;&gt;** | Timestamped history of order status changes. | 
**exchangeOrderId** | **kotlin.String** | The unique identifier of the order assigned by the exchange. |  [optional]
**errorMessage** | **kotlin.String** | Error message |  [optional]



