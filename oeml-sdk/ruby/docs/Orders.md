# OpenapiClient::Orders

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **String** | Constant value &#x60;snapshotOrders&#x60;. | [optional] 
**exchange_id** | **String** | Exchange identifier. | [optional] 
**data** | [**Array&lt;OrdersData&gt;**](OrdersData.md) | Orders array | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::Orders.new(type: snapshotOrders,
                                 exchange_id: KRAKEN,
                                 data: null)
```


