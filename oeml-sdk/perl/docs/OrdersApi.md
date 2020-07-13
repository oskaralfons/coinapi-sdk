# WWW::OpenAPIClient::OrdersApi

## Load the API package
```perl
use WWW::OpenAPIClient::Object::OrdersApi;
```

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1_orders_cancel_all_post**](OrdersApi.md#v1_orders_cancel_all_post) | **POST** /v1/orders/cancel/all | Cancel all orders
[**v1_orders_cancel_post**](OrdersApi.md#v1_orders_cancel_post) | **POST** /v1/orders/cancel | Cancel order
[**v1_orders_get**](OrdersApi.md#v1_orders_get) | **GET** /v1/orders | Get all orders
[**v1_orders_post**](OrdersApi.md#v1_orders_post) | **POST** /v1/orders | Create new order
[**v1_orders_status_client_order_id_get**](OrdersApi.md#v1_orders_status_client_order_id_get) | **GET** /v1/orders/status/{client_order_id} | Get order status


# **v1_orders_cancel_all_post**
> Message v1_orders_cancel_all_post(cancel_order_all_request => $cancel_order_all_request)

Cancel all orders

This request cancels all open orders across all or single specified exchange.

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::OrdersApi;
my $api_instance = WWW::OpenAPIClient::OrdersApi->new(
);

my $cancel_order_all_request = WWW::OpenAPIClient::Object::CancelOrderAllRequest->new(); # CancelOrderAllRequest | 

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
 **cancel_order_all_request** | [**CancelOrderAllRequest**](CancelOrderAllRequest.md)|  | 

### Return type

[**Message**](Message.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_orders_cancel_post**
> OrderExecutionReport v1_orders_cancel_post(cancel_order_single_request => $cancel_order_single_request)

Cancel order

This request cancels an existing order. The order can be canceled by the client order ID or exchange order ID.

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::OrdersApi;
my $api_instance = WWW::OpenAPIClient::OrdersApi->new(
);

my $cancel_order_single_request = WWW::OpenAPIClient::Object::CancelOrderSingleRequest->new(); # CancelOrderSingleRequest | 

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
 **cancel_order_single_request** | [**CancelOrderSingleRequest**](CancelOrderSingleRequest.md)|  | 

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

Get all orders

Get all current open orders across all or single specified exchange.

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::OrdersApi;
my $api_instance = WWW::OpenAPIClient::OrdersApi->new(
);

my $exchange_id = KRAKEN; # string | Filter the output to the orders from the specific exchange.

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
 **exchange_id** | **string**| Filter the output to the orders from the specific exchange. | [optional] 

### Return type

[**ARRAY[OrderExecutionReport]**](OrderExecutionReport.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_orders_post**
> OrderExecutionReport v1_orders_post(new_order_single => $new_order_single)

Create new order

This request creating new order for the specific exchange.

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::OrdersApi;
my $api_instance = WWW::OpenAPIClient::OrdersApi->new(
);

my $new_order_single = WWW::OpenAPIClient::Object::NewOrderSingle->new(); # NewOrderSingle | 

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
 **new_order_single** | [**NewOrderSingle**](NewOrderSingle.md)|  | 

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

Get order status

Get the current order status for the specified order. The requested order can no longer be active.

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::OrdersApi;
my $api_instance = WWW::OpenAPIClient::OrdersApi->new(
);

my $client_order_id = 6ab36bc1-344d-432e-ac6d-0bf44ee64c2b; # string | Order Client Id of the order for which the status is requested.

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
 **client_order_id** | **string**| Order Client Id of the order for which the status is requested. | 

### Return type

[**OrderExecutionReport**](OrderExecutionReport.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

