# OpenapiClient::Message

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **String** | Type of message. | [optional] 
**severity** | [**Severity**](Severity.md) |  | [optional] 
**exchange_id** | **String** | If message related exchange then identifier of this exchange. | [optional] 
**message** | **String** | Sucess message | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::Message.new(type: message,
                                 severity: null,
                                 exchange_id: KRAKEN,
                                 message: Ok)
```


