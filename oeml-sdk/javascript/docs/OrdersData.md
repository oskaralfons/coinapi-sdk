# OemlRestApi.OrdersData

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**exchangeId** | **String** | Exchange name | [optional] 
**id** | **String** | Client unique identifier for the trade. | [optional] 
**clientOrderIdFormatExchange** | **String** | Hash client id | [optional] 
**exchangeOrderId** | **String** | Exchange order id | [optional] 
**amountOpen** | **Number** | Amount open | [optional] 
**amountFilled** | **Number** | Amount filled | [optional] 
**status** | [**OrdStatus**](OrdStatus.md) |  | [optional] 
**timeOrder** | **[[String]]** | History of order status changes | [optional] 
**errorMessage** | **String** | Error message | [optional] 
**clientOrderId** | **String** | Client unique identifier for the trade. | [optional] 
**symbolExchange** | **String** | The symbol of the order. | [optional] 
**symbolCoinapi** | **String** | The CoinAPI symbol of the order. | [optional] 
**amountOrder** | **Number** | Quoted decimal amount to purchase. | [optional] 
**price** | **Number** | Quoted decimal amount to spend per unit. | [optional] 
**side** | **String** | Buy or Sell | [optional] 
**orderType** | **String** | The order type. | [optional] 
**timeInForce** | [**TimeInForce**](TimeInForce.md) |  | [optional] 
**expireTime** | **Date** | Required for orders with time_in_force &#x3D; GOOD_TILL_TIME_EXCHANGE, GOOD_TILL_TIME_OMS | [optional] 
**execInst** | **[String]** | Order execution instructions are documented in the separate section: &lt;a href&#x3D;\&quot;#oeml-order-params-exec\&quot;&gt;OEML / Starter Guide / Order parameters / Execution instructions&lt;/a&gt; | [optional] 



## Enum: SideEnum


* `BUY` (value: `"BUY"`)

* `SELL` (value: `"SELL"`)





## Enum: OrderTypeEnum


* `LIMIT` (value: `"LIMIT"`)





## Enum: [ExecInstEnum]


* `MAKER_OR_CANCEL` (value: `"MAKER_OR_CANCEL"`)

* `AUCTION_ONLY` (value: `"AUCTION_ONLY"`)

* `INDICATION_OF_INTEREST` (value: `"INDICATION_OF_INTEREST"`)




