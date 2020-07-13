# openapi_client.OrdersApi

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1_orders_cancel_all_post**](OrdersApi.md#v1_orders_cancel_all_post) | **POST** /v1/orders/cancel/all | Cancel all orders
[**v1_orders_cancel_post**](OrdersApi.md#v1_orders_cancel_post) | **POST** /v1/orders/cancel | Cancel order
[**v1_orders_get**](OrdersApi.md#v1_orders_get) | **GET** /v1/orders | Get all orders
[**v1_orders_post**](OrdersApi.md#v1_orders_post) | **POST** /v1/orders | Create new order
[**v1_orders_status_client_order_id_get**](OrdersApi.md#v1_orders_status_client_order_id_get) | **GET** /v1/orders/status/{client_order_id} | Get order status


# **v1_orders_cancel_all_post**
> Message v1_orders_cancel_all_post(cancel_order_all_request)

Cancel all orders

This request cancels all open orders across all or single specified exchange.

### Example

```python
from __future__ import print_function
import time
import openapi_client
from openapi_client.rest import ApiException
from pprint import pprint
# Defining the host is optional and defaults to http://localhost:8080
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "http://localhost:8080"
)


# Enter a context with an instance of the API client
with openapi_client.ApiClient() as api_client:
    # Create an instance of the API class
    api_instance = openapi_client.OrdersApi(api_client)
    cancel_order_all_request = openapi_client.CancelOrderAllRequest() # CancelOrderAllRequest | 

    try:
        # Cancel all orders
        api_response = api_instance.v1_orders_cancel_all_post(cancel_order_all_request)
        pprint(api_response)
    except ApiException as e:
        print("Exception when calling OrdersApi->v1_orders_cancel_all_post: %s\n" % e)
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

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Result |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_orders_cancel_post**
> OrderExecutionReport v1_orders_cancel_post(cancel_order_single_request)

Cancel order

This request cancels an existing order. The order can be canceled by the client order ID or exchange order ID.

### Example

```python
from __future__ import print_function
import time
import openapi_client
from openapi_client.rest import ApiException
from pprint import pprint
# Defining the host is optional and defaults to http://localhost:8080
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "http://localhost:8080"
)


# Enter a context with an instance of the API client
with openapi_client.ApiClient() as api_client:
    # Create an instance of the API class
    api_instance = openapi_client.OrdersApi(api_client)
    cancel_order_single_request = openapi_client.CancelOrderSingleRequest() # CancelOrderSingleRequest | 

    try:
        # Cancel order
        api_response = api_instance.v1_orders_cancel_post(cancel_order_single_request)
        pprint(api_response)
    except ApiException as e:
        print("Exception when calling OrdersApi->v1_orders_cancel_post: %s\n" % e)
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

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Canceled order |  -  |
**400** | Validation errors |  -  |
**490** | Exchange not registered |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_orders_get**
> list[OrderExecutionReport] v1_orders_get(exchange_id=exchange_id)

Get all orders

Get all current open orders across all or single specified exchange.

### Example

```python
from __future__ import print_function
import time
import openapi_client
from openapi_client.rest import ApiException
from pprint import pprint
# Defining the host is optional and defaults to http://localhost:8080
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "http://localhost:8080"
)


# Enter a context with an instance of the API client
with openapi_client.ApiClient() as api_client:
    # Create an instance of the API class
    api_instance = openapi_client.OrdersApi(api_client)
    exchange_id = 'KRAKEN' # str | Filter the output to the orders from the specific exchange. (optional)

    try:
        # Get all orders
        api_response = api_instance.v1_orders_get(exchange_id=exchange_id)
        pprint(api_response)
    except ApiException as e:
        print("Exception when calling OrdersApi->v1_orders_get: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exchange_id** | **str**| Filter the output to the orders from the specific exchange. | [optional] 

### Return type

[**list[OrderExecutionReport]**](OrderExecutionReport.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Collection of requested open orders. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_orders_post**
> OrderExecutionReport v1_orders_post(new_order_single)

Create new order

This request creating new order for the specific exchange.

### Example

```python
from __future__ import print_function
import time
import openapi_client
from openapi_client.rest import ApiException
from pprint import pprint
# Defining the host is optional and defaults to http://localhost:8080
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "http://localhost:8080"
)


# Enter a context with an instance of the API client
with openapi_client.ApiClient() as api_client:
    # Create an instance of the API class
    api_instance = openapi_client.OrdersApi(api_client)
    new_order_single = openapi_client.NewOrderSingle() # NewOrderSingle | 

    try:
        # Create new order
        api_response = api_instance.v1_orders_post(new_order_single)
        pprint(api_response)
    except ApiException as e:
        print("Exception when calling OrdersApi->v1_orders_post: %s\n" % e)
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

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Created |  -  |
**400** | Validation errors |  -  |
**490** | Exchange not registered |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_orders_status_client_order_id_get**
> OrderExecutionReport v1_orders_status_client_order_id_get(client_order_id)

Get order status

Get the current order status for the specified order. The requested order can no longer be active.

### Example

```python
from __future__ import print_function
import time
import openapi_client
from openapi_client.rest import ApiException
from pprint import pprint
# Defining the host is optional and defaults to http://localhost:8080
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "http://localhost:8080"
)


# Enter a context with an instance of the API client
with openapi_client.ApiClient() as api_client:
    # Create an instance of the API class
    api_instance = openapi_client.OrdersApi(api_client)
    client_order_id = '6ab36bc1-344d-432e-ac6d-0bf44ee64c2b' # str | Order Client Id of the order for which the status is requested.

    try:
        # Get order status
        api_response = api_instance.v1_orders_status_client_order_id_get(client_order_id)
        pprint(api_response)
    except ApiException as e:
        print("Exception when calling OrdersApi->v1_orders_status_client_order_id_get: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **client_order_id** | **str**| Order Client Id of the order for which the status is requested. | 

### Return type

[**OrderExecutionReport**](OrderExecutionReport.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | The order was found. |  -  |
**400** | The order was not found. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

