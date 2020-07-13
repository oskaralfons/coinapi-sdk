package org.openapitools.api;

import org.openapitools.api.ApiUtils
import org.openapitools.model.CreateOrderValidationError
import org.openapitools.model.ExecutionReport
import org.openapitools.model.Message
import org.openapitools.model.NewOrderSingle
import org.openapitools.model.OrderCancelAllRequest
import org.openapitools.model.OrderCancelSingleRequest

class OrdersApi {
    String basePath = "http://localhost:8080"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def v1OrdersCancelAllPost ( OrderCancelAllRequest orderCancelAllRequest, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/v1/orders/cancel/all"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (orderCancelAllRequest == null) {
            throw new RuntimeException("missing required params orderCancelAllRequest")
        }



        contentType = 'application/json';
        bodyParams = orderCancelAllRequest


        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    Message.class )

    }

    def v1OrdersCancelPost ( OrderCancelSingleRequest orderCancelSingleRequest, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/v1/orders/cancel"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (orderCancelSingleRequest == null) {
            throw new RuntimeException("missing required params orderCancelSingleRequest")
        }



        contentType = 'application/json';
        bodyParams = orderCancelSingleRequest


        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    ExecutionReport.class )

    }

    def v1OrdersGet ( String exchangeId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/v1/orders"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType


        if (exchangeId != null) {
            queryParams.put("exchange_id", exchangeId)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "array",
                    ExecutionReport.class )

    }

    def v1OrdersPost ( NewOrderSingle newOrderSingle, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/v1/orders"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (newOrderSingle == null) {
            throw new RuntimeException("missing required params newOrderSingle")
        }



        contentType = 'application/json';
        bodyParams = newOrderSingle


        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    ExecutionReport.class )

    }

    def v1OrdersStatusClientOrderIdGet ( String clientOrderId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/v1/orders/status/${client_order_id}"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (clientOrderId == null) {
            throw new RuntimeException("missing required params clientOrderId")
        }





        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    ExecutionReport.class )

    }

}
