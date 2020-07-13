# CoinAPI.OMS.REST.V1.Api.OrdersApi

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**V1OrdersCancelAllPost**](OrdersApi.md#v1orderscancelallpost) | **POST** /v1/orders/cancel/all | Cancel all orders
[**V1OrdersCancelPost**](OrdersApi.md#v1orderscancelpost) | **POST** /v1/orders/cancel | Cancel order
[**V1OrdersGet**](OrdersApi.md#v1ordersget) | **GET** /v1/orders | Get all orders
[**V1OrdersPost**](OrdersApi.md#v1orderspost) | **POST** /v1/orders | Create new order
[**V1OrdersStatusClientOrderIdGet**](OrdersApi.md#v1ordersstatusclientorderidget) | **GET** /v1/orders/status/{client_order_id} | Get order status



## V1OrdersCancelAllPost

> Message V1OrdersCancelAllPost (CancelOrderAllRequest cancelOrderAllRequest)

Cancel all orders

This request cancels all open orders across all or single specified exchange.

### Example

```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.OMS.REST.V1.Api;
using CoinAPI.OMS.REST.V1.Client;
using CoinAPI.OMS.REST.V1.Model;

namespace Example
{
    public class V1OrdersCancelAllPostExample
    {
        public static void Main()
        {
            Configuration.Default.BasePath = "http://localhost:8080";
            var apiInstance = new OrdersApi(Configuration.Default);
            var cancelOrderAllRequest = new CancelOrderAllRequest(); // CancelOrderAllRequest | 

            try
            {
                // Cancel all orders
                Message result = apiInstance.V1OrdersCancelAllPost(cancelOrderAllRequest);
                Debug.WriteLine(result);
            }
            catch (ApiException e)
            {
                Debug.Print("Exception when calling OrdersApi.V1OrdersCancelAllPost: " + e.Message );
                Debug.Print("Status Code: "+ e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cancelOrderAllRequest** | [**CancelOrderAllRequest**](CancelOrderAllRequest.md)|  | 

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
| **200** | Result |  -  |

[[Back to top]](#)
[[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## V1OrdersCancelPost

> OrderExecutionReport V1OrdersCancelPost (CancelOrderSingleRequest cancelOrderSingleRequest)

Cancel order

This request cancels an existing order. The order can be canceled by the client order ID or exchange order ID.

### Example

```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.OMS.REST.V1.Api;
using CoinAPI.OMS.REST.V1.Client;
using CoinAPI.OMS.REST.V1.Model;

namespace Example
{
    public class V1OrdersCancelPostExample
    {
        public static void Main()
        {
            Configuration.Default.BasePath = "http://localhost:8080";
            var apiInstance = new OrdersApi(Configuration.Default);
            var cancelOrderSingleRequest = new CancelOrderSingleRequest(); // CancelOrderSingleRequest | 

            try
            {
                // Cancel order
                OrderExecutionReport result = apiInstance.V1OrdersCancelPost(cancelOrderSingleRequest);
                Debug.WriteLine(result);
            }
            catch (ApiException e)
            {
                Debug.Print("Exception when calling OrdersApi.V1OrdersCancelPost: " + e.Message );
                Debug.Print("Status Code: "+ e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cancelOrderSingleRequest** | [**CancelOrderSingleRequest**](CancelOrderSingleRequest.md)|  | 

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
| **200** | Canceled order |  -  |
| **400** | Validation errors |  -  |
| **490** | Exchange not registered |  -  |

[[Back to top]](#)
[[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## V1OrdersGet

> List&lt;OrderExecutionReport&gt; V1OrdersGet (string exchangeId = null)

Get all orders

Get all current open orders across all or single specified exchange.

### Example

```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.OMS.REST.V1.Api;
using CoinAPI.OMS.REST.V1.Client;
using CoinAPI.OMS.REST.V1.Model;

namespace Example
{
    public class V1OrdersGetExample
    {
        public static void Main()
        {
            Configuration.Default.BasePath = "http://localhost:8080";
            var apiInstance = new OrdersApi(Configuration.Default);
            var exchangeId = KRAKEN;  // string | Filter the output to the orders from the specific exchange. (optional) 

            try
            {
                // Get all orders
                List<OrderExecutionReport> result = apiInstance.V1OrdersGet(exchangeId);
                Debug.WriteLine(result);
            }
            catch (ApiException e)
            {
                Debug.Print("Exception when calling OrdersApi.V1OrdersGet: " + e.Message );
                Debug.Print("Status Code: "+ e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exchangeId** | **string**| Filter the output to the orders from the specific exchange. | [optional] 

### Return type

[**List&lt;OrderExecutionReport&gt;**](OrderExecutionReport.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Collection of requested open orders. |  -  |

[[Back to top]](#)
[[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## V1OrdersPost

> OrderExecutionReport V1OrdersPost (NewOrderSingle newOrderSingle)

Create new order

This request creating new order for the specific exchange.

### Example

```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.OMS.REST.V1.Api;
using CoinAPI.OMS.REST.V1.Client;
using CoinAPI.OMS.REST.V1.Model;

namespace Example
{
    public class V1OrdersPostExample
    {
        public static void Main()
        {
            Configuration.Default.BasePath = "http://localhost:8080";
            var apiInstance = new OrdersApi(Configuration.Default);
            var newOrderSingle = new NewOrderSingle(); // NewOrderSingle | 

            try
            {
                // Create new order
                OrderExecutionReport result = apiInstance.V1OrdersPost(newOrderSingle);
                Debug.WriteLine(result);
            }
            catch (ApiException e)
            {
                Debug.Print("Exception when calling OrdersApi.V1OrdersPost: " + e.Message );
                Debug.Print("Status Code: "+ e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **newOrderSingle** | [**NewOrderSingle**](NewOrderSingle.md)|  | 

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
| **200** | Created |  -  |
| **400** | Validation errors |  -  |
| **490** | Exchange not registered |  -  |

[[Back to top]](#)
[[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## V1OrdersStatusClientOrderIdGet

> OrderExecutionReport V1OrdersStatusClientOrderIdGet (string clientOrderId)

Get order status

Get the current order status for the specified order. The requested order can no longer be active.

### Example

```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.OMS.REST.V1.Api;
using CoinAPI.OMS.REST.V1.Client;
using CoinAPI.OMS.REST.V1.Model;

namespace Example
{
    public class V1OrdersStatusClientOrderIdGetExample
    {
        public static void Main()
        {
            Configuration.Default.BasePath = "http://localhost:8080";
            var apiInstance = new OrdersApi(Configuration.Default);
            var clientOrderId = 6ab36bc1-344d-432e-ac6d-0bf44ee64c2b;  // string | Order Client Id of the order for which the status is requested.

            try
            {
                // Get order status
                OrderExecutionReport result = apiInstance.V1OrdersStatusClientOrderIdGet(clientOrderId);
                Debug.WriteLine(result);
            }
            catch (ApiException e)
            {
                Debug.Print("Exception when calling OrdersApi.V1OrdersStatusClientOrderIdGet: " + e.Message );
                Debug.Print("Status Code: "+ e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **clientOrderId** | **string**| Order Client Id of the order for which the status is requested. | 

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
| **200** | The order was found. |  -  |
| **400** | The order was not found. |  -  |

[[Back to top]](#)
[[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

