# WWW::OpenAPIClient::OrdersApi

## Load the API package
```perl
use WWW::OpenAPIClient::Object::OrdersApi;
```

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1_orders_cancel_all_post**](OrdersApi.md#v1_orders_cancel_all_post) | **POST** /v1/orders/cancel/all | Cancel all orders request
[**v1_orders_cancel_post**](OrdersApi.md#v1_orders_cancel_post) | **POST** /v1/orders/cancel | Cancel order request
[**v1_orders_get**](OrdersApi.md#v1_orders_get) | **GET** /v1/orders | Get open orders
[**v1_orders_post**](OrdersApi.md#v1_orders_post) | **POST** /v1/orders | Send new order
[**v1_orders_status_client_order_id_get**](OrdersApi.md#v1_orders_status_client_order_id_get) | **GET** /v1/orders/status/{client_order_id} | Get order execution report


# **v1_orders_cancel_all_post**
> Message v1_orders_cancel_all_post(cancel_order_all_request => $cancel_order_all_request)

Cancel all orders request

This request cancels all open orders on single specified exchange.

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::OrdersApi;
my $api_instance = WWW::OpenAPIClient::OrdersApi->new(
);

my $cancel_order_all_request = WWW::OpenAPIClient::Object::CancelOrderAllRequest->new(); # CancelOrderAllRequest | CancelOrderAllRequest object.

eval { 
    my $result = $api_instance->v1_orders_cancel_all_post(cancel_order_all_request => $cancel_order_all_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling OrdersApi->v1_orders_cancel_all_post: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cancel_order_all_request** | [**CancelOrderAllRequest**](CancelOrderAllRequest.md)| CancelOrderAllRequest object. | 

### Return type

[**Message**](Message.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, appliction/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_orders_cancel_post**
> OrderExecutionReport v1_orders_cancel_post(cancel_order_single_request => $cancel_order_single_request)

Cancel order request

Request cancel for an existing order. The order can be canceled using the `client_order_id` or `exchange_order_id`.

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::OrdersApi;
my $api_instance = WWW::OpenAPIClient::OrdersApi->new(
);

my $cancel_order_single_request = WWW::OpenAPIClient::Object::CancelOrderSingleRequest->new(); # CancelOrderSingleRequest | CancelOrderSingleRequest object.

eval { 
    my $result = $api_instance->v1_orders_cancel_post(cancel_order_single_request => $cancel_order_single_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling OrdersApi->v1_orders_cancel_post: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cancel_order_single_request** | [**CancelOrderSingleRequest**](CancelOrderSingleRequest.md)| CancelOrderSingleRequest object. | 

### Return type

[**OrderExecutionReport**](OrderExecutionReport.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, appliction/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_orders_get**
> ARRAY[OrderExecutionReport] v1_orders_get(exchange_id => $exchange_id)

Get open orders

Get last execution reports for open orders across all or single exchange.

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::OrdersApi;
my $api_instance = WWW::OpenAPIClient::OrdersApi->new(
);

my $exchange_id = KRAKEN; # string | Filter the open orders to the specific exchange.

eval { 
    my $result = $api_instance->v1_orders_get(exchange_id => $exchange_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling OrdersApi->v1_orders_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exchange_id** | **string**| Filter the open orders to the specific exchange. | [optional] 

### Return type

[**ARRAY[OrderExecutionReport]**](OrderExecutionReport.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, appliction/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_orders_post**
> OrderExecutionReport v1_orders_post(new_order_single => $new_order_single)

Send new order

This request creating new order for the specific exchange.

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::OrdersApi;
my $api_instance = WWW::OpenAPIClient::OrdersApi->new(
);

my $new_order_single = WWW::OpenAPIClient::Object::NewOrderSingle->new(); # NewOrderSingle | NewOrderSingle object.

eval { 
    my $result = $api_instance->v1_orders_post(new_order_single => $new_order_single);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling OrdersApi->v1_orders_post: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **new_order_single** | [**NewOrderSingle**](NewOrderSingle.md)| NewOrderSingle object. | 

### Return type

[**OrderExecutionReport**](OrderExecutionReport.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, appliction/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_orders_status_client_order_id_get**
> OrderExecutionReport v1_orders_status_client_order_id_get(client_order_id => $client_order_id)

Get order execution report

Get the last order execution report for the specified order. The requested order does not need to be active or opened.

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::OrdersApi;
my $api_instance = WWW::OpenAPIClient::OrdersApi->new(
);

my $client_order_id = 6ab36bc1-344d-432e-ac6d-0bf44ee64c2b; # string | The unique identifier of the order assigned by the client.

eval { 
    my $result = $api_instance->v1_orders_status_client_order_id_get(client_order_id => $client_order_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling OrdersApi->v1_orders_status_client_order_id_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **client_order_id** | **string**| The unique identifier of the order assigned by the client. | 

### Return type

[**OrderExecutionReport**](OrderExecutionReport.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

