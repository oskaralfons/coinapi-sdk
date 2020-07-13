# OpenapiClient::BalanceData

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**symbol_exchange** | **String** | Exchange currency code. | [optional] 
**symbol_coinapi** | **String** | CoinAPI currency code. | [optional] 
**balance** | **Float** | Value of the current total currency balance on the exchange. | [optional] 
**available** | **Float** | Value of the current available currency balance on the exchange that can be used as collateral. | [optional] 
**locked** | **Float** | Value of the current locked currency balance by the exchange. | [optional] 
**update_origin** | **String** | Source of the last modification.  | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::BalanceData.new(symbol_exchange: XBT,
                                 symbol_coinapi: BTC,
                                 balance: 0.00134444,
                                 available: 0.00134444,
                                 locked: 0.0,
                                 update_origin: EXCHANGE)
```


