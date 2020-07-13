part of openapi.api;



class OrdersApi {
  final ApiClient apiClient;

  OrdersApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Cancel all orders with HTTP info returned
  ///
  /// This request cancels all open orders across all or single specified exchange.
  Future<Response> v1OrdersCancelAllPostWithHttpInfo(CancelOrderAllRequest cancelOrderAllRequest) async {
    Object postBody = cancelOrderAllRequest;

    // verify required params are set
    if(cancelOrderAllRequest == null) {
     throw ApiException(400, "Missing required param: cancelOrderAllRequest");
    }

    // create path and map variables
    String path = "/v1/orders/cancel/all".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = ["application/json"];

    String nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    List<String> authNames = [];

    if(nullableContentType != null && nullableContentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'POST',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             nullableContentType,
                                             authNames);
    return response;
  }

  /// Cancel all orders
  ///
  /// This request cancels all open orders across all or single specified exchange.
  Future<Message> v1OrdersCancelAllPost(CancelOrderAllRequest cancelOrderAllRequest) async {
    Response response = await v1OrdersCancelAllPostWithHttpInfo(cancelOrderAllRequest);
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'Message') as Message;
    } else {
      return null;
    }
  }

  /// Cancel order with HTTP info returned
  ///
  /// This request cancels an existing order. The order can be canceled by the client order ID or exchange order ID.
  Future<Response> v1OrdersCancelPostWithHttpInfo(CancelOrderSingleRequest cancelOrderSingleRequest) async {
    Object postBody = cancelOrderSingleRequest;

    // verify required params are set
    if(cancelOrderSingleRequest == null) {
     throw ApiException(400, "Missing required param: cancelOrderSingleRequest");
    }

    // create path and map variables
    String path = "/v1/orders/cancel".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = ["application/json"];

    String nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    List<String> authNames = [];

    if(nullableContentType != null && nullableContentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'POST',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             nullableContentType,
                                             authNames);
    return response;
  }

  /// Cancel order
  ///
  /// This request cancels an existing order. The order can be canceled by the client order ID or exchange order ID.
  Future<OrderExecutionReport> v1OrdersCancelPost(CancelOrderSingleRequest cancelOrderSingleRequest) async {
    Response response = await v1OrdersCancelPostWithHttpInfo(cancelOrderSingleRequest);
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'OrderExecutionReport') as OrderExecutionReport;
    } else {
      return null;
    }
  }

  /// Get all orders with HTTP info returned
  ///
  /// Get all current open orders across all or single specified exchange.
  Future<Response> v1OrdersGetWithHttpInfo({ String exchangeId }) async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    String path = "/v1/orders".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(exchangeId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "exchange_id", exchangeId));
    }

    List<String> contentTypes = [];

    String nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    List<String> authNames = [];

    if(nullableContentType != null && nullableContentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             nullableContentType,
                                             authNames);
    return response;
  }

  /// Get all orders
  ///
  /// Get all current open orders across all or single specified exchange.
  Future<List<OrderExecutionReport>> v1OrdersGet({ String exchangeId }) async {
    Response response = await v1OrdersGetWithHttpInfo( exchangeId: exchangeId );
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<OrderExecutionReport>') as List).map((item) => item as OrderExecutionReport).toList();
    } else {
      return null;
    }
  }

  /// Create new order with HTTP info returned
  ///
  /// This request creating new order for the specific exchange.
  Future<Response> v1OrdersPostWithHttpInfo(NewOrderSingle newOrderSingle) async {
    Object postBody = newOrderSingle;

    // verify required params are set
    if(newOrderSingle == null) {
     throw ApiException(400, "Missing required param: newOrderSingle");
    }

    // create path and map variables
    String path = "/v1/orders".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = ["application/json"];

    String nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    List<String> authNames = [];

    if(nullableContentType != null && nullableContentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'POST',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             nullableContentType,
                                             authNames);
    return response;
  }

  /// Create new order
  ///
  /// This request creating new order for the specific exchange.
  Future<OrderExecutionReport> v1OrdersPost(NewOrderSingle newOrderSingle) async {
    Response response = await v1OrdersPostWithHttpInfo(newOrderSingle);
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'OrderExecutionReport') as OrderExecutionReport;
    } else {
      return null;
    }
  }

  /// Get order status with HTTP info returned
  ///
  /// Get the last order execution report for the specified order. The requested order does not need to be active/opened.
  Future<Response> v1OrdersStatusClientOrderIdGetWithHttpInfo(String clientOrderId) async {
    Object postBody;

    // verify required params are set
    if(clientOrderId == null) {
     throw ApiException(400, "Missing required param: clientOrderId");
    }

    // create path and map variables
    String path = "/v1/orders/status/{client_order_id}".replaceAll("{format}","json").replaceAll("{" + "client_order_id" + "}", clientOrderId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = [];

    String nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    List<String> authNames = [];

    if(nullableContentType != null && nullableContentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             nullableContentType,
                                             authNames);
    return response;
  }

  /// Get order status
  ///
  /// Get the last order execution report for the specified order. The requested order does not need to be active/opened.
  Future<OrderExecutionReport> v1OrdersStatusClientOrderIdGet(String clientOrderId) async {
    Response response = await v1OrdersStatusClientOrderIdGetWithHttpInfo(clientOrderId);
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'OrderExecutionReport') as OrderExecutionReport;
    } else {
      return null;
    }
  }

}
