
# BalanceData

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **kotlin.String** | Exchange identifier. |  [optional]
**symbolExchange** | **kotlin.String** | Exchange currency code. |  [optional]
**symbolCoinapi** | **kotlin.String** | CoinAPI currency code. |  [optional]
**balance** | **kotlin.Float** | Value of the current total currency balance on the exchange. |  [optional]
**available** | **kotlin.Float** | Value of the current available currency balance on the exchange that can be used as collateral. |  [optional]
**locked** | **kotlin.Float** | Value of the current locked currency balance by the exchange. |  [optional]
**updateOrigin** | [**inline**](#UpdateOriginEnum) | Source of the last modification.  |  [optional]


<a name="UpdateOriginEnum"></a>
## Enum: update_origin
Name | Value
---- | -----
updateOrigin | INITIALIZATION, BALANCE_MANAGER, EXCHANGE



