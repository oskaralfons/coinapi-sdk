# OemlRestApi.BalanceData

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | Exchange identifier. | [optional] 
**symbolExchange** | **String** | Exchange currency code. | [optional] 
**symbolCoinapi** | **String** | CoinAPI currency code. | [optional] 
**balance** | **Number** | Value of the current total currency balance on the exchange. | [optional] 
**available** | **Number** | Value of the current available currency balance on the exchange that can be used as collateral. | [optional] 
**locked** | **Number** | Value of the current locked currency balance by the exchange. | [optional] 
**updateOrigin** | **String** | Source of the last modification.  | [optional] 



## Enum: UpdateOriginEnum


* `INITIALIZATION` (value: `"INITIALIZATION"`)

* `BALANCE_MANAGER` (value: `"BALANCE_MANAGER"`)

* `EXCHANGE` (value: `"EXCHANGE"`)




