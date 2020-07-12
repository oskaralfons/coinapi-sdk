

# NewOrder

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**exchangeId** | **String** | Exchange name |  [optional]
**clientOrderId** | **String** | Client unique identifier for the trade. |  [optional]
**symbolExchange** | **String** | The symbol of the order. |  [optional]
**symbolCoinapi** | **String** | The CoinAPI symbol of the order. |  [optional]
**amountOrder** | [**BigDecimal**](BigDecimal.md) | Quoted decimal amount to purchase. |  [optional]
**price** | [**BigDecimal**](BigDecimal.md) | Quoted decimal amount to spend per unit. |  [optional]
**side** | [**SideEnum**](#SideEnum) | Buy or Sell |  [optional]
**orderType** | [**OrderTypeEnum**](#OrderTypeEnum) | The order type. |  [optional]
**timeInForce** | [**TimeInForce**](TimeInForce.md) |  |  [optional]
**expireTime** | [**Date**](Date.md) | Required for orders with time_in_force &#x3D; GOOD_TILL_TIME_EXCHANGE, GOOD_TILL_TIME_OMS |  [optional]
**execInst** | [**List&lt;ExecInstEnum&gt;**](#List&lt;ExecInstEnum&gt;) | Order execution instructions are documented in the separate section: &lt;a href&#x3D;\&quot;#oeml-order-params-exec\&quot;&gt;OEML / Starter Guide / Order parameters / Execution instructions&lt;/a&gt;  |  [optional]


## Enum: SideEnum

Name | Value
---- | -----


## Enum: OrderTypeEnum

Name | Value
---- | -----


## Enum: List&lt;ExecInstEnum&gt;

Name | Value
---- | -----
MAKER_OR_CANCEL | &quot;MAKER_OR_CANCEL&quot;
AUCTION_ONLY | &quot;AUCTION_ONLY&quot;
INDICATION_OF_INTEREST | &quot;INDICATION_OF_INTEREST&quot;




