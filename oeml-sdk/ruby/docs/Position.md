# OpenapiClient::Position

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**exchange_id** | **String** | Exchange identifier used to identify the routing destination. | [optional] 
**data** | [**Array&lt;PositionData&gt;**](PositionData.md) |  | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::Position.new(exchange_id: KRAKEN,
                                 data: null)
```


