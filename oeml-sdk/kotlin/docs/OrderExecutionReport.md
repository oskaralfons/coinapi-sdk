
# OrderExecutionReport

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**exchangeId** | **kotlin.String** | Exchange identifier. | 
**clientOrderId** | **kotlin.String** | The unique identifier of the order assigned by the client. | 
**amountOrder** | [**java.math.BigDecimal**](java.math.BigDecimal.md) | Order quantity. | 
**price** | [**java.math.BigDecimal**](java.math.BigDecimal.md) | Order price. | 
**side** | [**OrdSide**](OrdSide.md) |  | 
**orderType** | [**OrdType**](OrdType.md) |  | 
**timeInForce** | [**TimeInForce**](TimeInForce.md) |  | 
**clientOrderIdFormatExchange** | **kotlin.String** | The unique identifier of the order assigned by the client converted to the exchange order tag format for the purpose of tracking it. | 
**amountOpen** | [**java.math.BigDecimal**](java.math.BigDecimal.md) | Amount open | 
**amountFilled** | [**java.math.BigDecimal**](java.math.BigDecimal.md) | Amount filled | 
**status** | [**OrdStatus**](OrdStatus.md) |  | 
**timeOrder** | **kotlin.Array&lt;kotlin.Array&lt;kotlin.String&gt;&gt;** | Timestamped history of order status changes. | 
**symbolExchange** | **kotlin.String** | Exchange symbol. One of the properties (&#x60;symbol_exchange&#x60;, &#x60;symbol_coinapi&#x60;) are required to identify the market for the new order. |  [optional]
**symbolCoinapi** | **kotlin.String** | CoinAPI symbol. One of the properties (&#x60;symbol_exchange&#x60;, &#x60;symbol_coinapi&#x60;) are required to identify the market for the new order. |  [optional]
**expireTime** | [**java.time.LocalDate**](java.time.LocalDate.md) | Expiration time. Conditionaly required for orders with time_in_force &#x3D; &#x60;GOOD_TILL_TIME_EXCHANGE&#x60; or &#x60;GOOD_TILL_TIME_OEML&#x60;. |  [optional]
**execInst** | [**inline**](#kotlin.Array&lt;ExecInstEnum&gt;) | Order execution instructions are documented in the separate section: &lt;a href&#x3D;\&quot;#oeml-order-params-exec\&quot;&gt;OEML / Starter Guide / Order parameters / Execution instructions&lt;/a&gt;  |  [optional]
**exchangeOrderId** | **kotlin.String** | The unique identifier of the order assigned by the exchange. |  [optional]
**errorMessage** | **kotlin.String** | Error message |  [optional]


<a name="kotlin.Array<ExecInstEnum>"></a>
## Enum: exec_inst
Name | Value
---- | -----
execInst | MAKER_OR_CANCEL, AUCTION_ONLY, INDICATION_OF_INTEREST



