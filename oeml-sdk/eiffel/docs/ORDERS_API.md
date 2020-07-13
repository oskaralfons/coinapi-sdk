# ORDERS_API

All URIs are relative to *http://localhost:8080*

Feature | HTTP request | Description
------------- | ------------- | -------------
[**v1_orders_cancel_all_post**](ORDERS_API.md#v1_orders_cancel_all_post) | **Post** /v1/orders/cancel/all | Cancel all orders
[**v1_orders_cancel_post**](ORDERS_API.md#v1_orders_cancel_post) | **Post** /v1/orders/cancel | Cancel order
[**v1_orders_get**](ORDERS_API.md#v1_orders_get) | **Get** /v1/orders | Get all orders
[**v1_orders_post**](ORDERS_API.md#v1_orders_post) | **Post** /v1/orders | Create new order
[**v1_orders_status_client_order_id_get**](ORDERS_API.md#v1_orders_status_client_order_id_get) | **Get** /v1/orders/status/{client_order_id} | Get order status


# **v1_orders_cancel_all_post**
> v1_orders_cancel_all_post (cancel_order_all_request: CANCEL_ORDER_ALL_REQUEST ): detachable MESSAGE
	

Cancel all orders

This request cancels all open orders across all or single specified exchange.


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cancel_order_all_request** | [**CANCEL_ORDER_ALL_REQUEST**](CANCEL_ORDER_ALL_REQUEST.md)|  | 

### Return type

[**MESSAGE**](Message.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_orders_cancel_post**
> v1_orders_cancel_post (cancel_order_single_request: CANCEL_ORDER_SINGLE_REQUEST ): detachable EXECUTION_REPORT
	

Cancel order

This request cancels an existing order. The order can be canceled by the client order ID or exchange order ID.


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cancel_order_single_request** | [**CANCEL_ORDER_SINGLE_REQUEST**](CANCEL_ORDER_SINGLE_REQUEST.md)|  | 

### Return type

[**EXECUTION_REPORT**](ExecutionReport.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, appliction/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_orders_get**
> v1_orders_get (exchange_id:  detachable STRING_32 ): detachable LIST [EXECUTION_REPORT]
	

Get all orders

Get all current open orders across all or single specified exchange.


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exchange_id** | **STRING_32**| Filter the output to the orders from the specific exchange. | [optional] [default to null]

### Return type

[**LIST [EXECUTION_REPORT]**](ExecutionReport.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_orders_post**
> v1_orders_post (new_order_single: NEW_ORDER_SINGLE ): detachable EXECUTION_REPORT
	

Create new order

This request creating new order for the specific exchange.


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **new_order_single** | [**NEW_ORDER_SINGLE**](NEW_ORDER_SINGLE.md)|  | 

### Return type

[**EXECUTION_REPORT**](ExecutionReport.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, appliction/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_orders_status_client_order_id_get**
> v1_orders_status_client_order_id_get (client_order_id: STRING_32 ): detachable EXECUTION_REPORT
	

Get order status

Get the current order status for the specified order. The requested order can no longer be active.


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **client_order_id** | **STRING_32**| Order Client Id of the order for which the status is requested. | [default to null]

### Return type

[**EXECUTION_REPORT**](ExecutionReport.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

