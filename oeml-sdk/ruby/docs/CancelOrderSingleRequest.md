# OpenapiClient::CancelOrderSingleRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**exchange_id** | **String** | Exchange identifier. | [optional] 
**exchange_order_id** | **String** | The unique identifier of the order assigned by the exchange. | [optional] 
**client_order_id** | **String** | The unique identifier of the order assigned by the client. | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::CancelOrderSingleRequest.new(exchange_id: KRAKEN,
                                 exchange_order_id: 3456456754,
                                 client_order_id: 6ab36bc1-344d-432e-ac6d-0bf44ee64c2b)
```


