# WWW::OpenAPIClient::Object::ExecutionReportAllOf

## Load the model package
```perl
use WWW::OpenAPIClient::Object::ExecutionReportAllOf;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**client_order_id_format_exchange** | **string** | Hash client id | [optional] 
**exchange_order_id** | **string** | Exchange order id | [optional] 
**amount_open** | **double** | Amount open | [optional] 
**amount_filled** | **double** | Amount filled | [optional] 
**status** | [**OrdStatus**](OrdStatus.md) |  | [optional] 
**time_order** | **ARRAY[ARRAY[string]]** | History of order status changes | [optional] 
**error_message** | **string** | Error message | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


