package org.openapitools.api;

import org.openapitools.api.ApiUtils
import org.openapitools.model.CancelOrderAllRequest
import org.openapitools.model.CancelOrderSingleRequest
import org.openapitools.model.ExecutionReport
import org.openapitools.model.Message
import org.openapitools.model.NewOrderSingle
import org.openapitools.model.ValidationError

class OrdersApi {
    String basePath = "http://localhost:8080"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def v1OrdersCancelAllPost ( CancelOrderAllRequest cancelOrderAllRequest, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/v1/orders/cancel/all"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (cancelOrderAllRequest == null) {
            throw new RuntimeException("missing required params cancelOrderAllRequest")
        }



        contentType = 'application/json';
        bodyParams = cancelOrderAllRequest


        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    Message.class )

    }

    def v1OrdersCancelPost ( CancelOrderSingleRequest cancelOrderSingleRequest, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/v1/orders/cancel"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (cancelOrderSingleRequest == null) {
            throw new RuntimeException("missing required params cancelOrderSingleRequest")
        }



        contentType = 'application/json';
        bodyParams = cancelOrderSingleRequest


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
