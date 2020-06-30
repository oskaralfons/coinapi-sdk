# OemlRestApi.PositionsApi

All URIs are relative to *http://localhost:8080/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1PositionsGet**](PositionsApi.md#v1PositionsGet) | **GET** /v1/positions | Get positions



## v1PositionsGet

> [Position] v1PositionsGet(opts)

Get positions

Returns all of your positions.

### Example

```javascript
import OemlRestApi from 'oeml_rest_api';

let apiInstance = new OemlRestApi.PositionsApi();
let opts = {
  'exchangeId': KRAKEN // String | Exchange name
};
apiInstance.v1PositionsGet(opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exchangeId** | **String**| Exchange name | [optional] 

### Return type

[**[Position]**](Position.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

