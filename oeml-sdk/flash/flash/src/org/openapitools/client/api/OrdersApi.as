package org.openapitools.client.api {

import org.openapitools.common.ApiInvoker;
import org.openapitools.exception.ApiErrorCodes;
import org.openapitools.exception.ApiError;
import org.openapitools.common.ApiUserCredentials;
import org.openapitools.event.Response;
import org.openapitools.common.OpenApi;
import org.openapitools.client.model.CancelOrderAllRequest;
import org.openapitools.client.model.CancelOrderSingleRequest;
import org.openapitools.client.model.ExecutionReport;
import org.openapitools.client.model.Message;
import org.openapitools.client.model.NewOrderSingle;
import org.openapitools.client.model.ValidationError;

import mx.rpc.AsyncToken;
import mx.utils.UIDUtil;
import flash.utils.Dictionary;
import flash.events.EventDispatcher;

public class OrdersApi extends OpenApi {
    /**
    * Constructor for the OrdersApi api client
    * @param apiCredentials Wrapper object for tokens and hostName required towards authentication
    * @param eventDispatcher Optional event dispatcher that when provided is used by the SDK to dispatch any Response
    */
    public function OrdersApi(apiCredentials: ApiUserCredentials, eventDispatcher: EventDispatcher = null) {
        super(apiCredentials, eventDispatcher);
    }

        public static const event_v1_orders_cancel_all_post: String = "v1_orders_cancel_all_post";
        public static const event_v1_orders_cancel_post: String = "v1_orders_cancel_post";
        public static const event_v1_orders_get: String = "v1_orders_get";
        public static const event_v1_orders_post: String = "v1_orders_post";
        public static const event_v1_orders_status_client_order_id_get: String = "v1_orders_status_client_order_id_get";


    /*
     * Returns Message 
     */
    public function v1_orders_cancel_all_post (cancelOrderAllRequest: CancelOrderAllRequest): String {
        // create path and map variables
        var path: String = "/v1/orders/cancel/all".replace(/{format}/g,"xml");

        // query params
        var queryParams: Dictionary = new Dictionary();
        var headerParams: Dictionary = new Dictionary();

        // verify required params are set
        if() {
            throw new ApiError(400, "missing required params");
        }

        
        
        var token:AsyncToken = getApiInvoker().invokeAPI(path, "POST", queryParams, cancelOrderAllRequest, headerParams);

        var requestId: String = getUniqueId();

        token.requestId = requestId;
        token.completionEventType = "v1_orders_cancel_all_post";

        token.returnType = Message;
        return requestId;

    }

    /*
     * Returns ExecutionReport 
     */
    public function v1_orders_cancel_post (cancelOrderSingleRequest: CancelOrderSingleRequest): String {
        // create path and map variables
        var path: String = "/v1/orders/cancel".replace(/{format}/g,"xml");

        // query params
        var queryParams: Dictionary = new Dictionary();
        var headerParams: Dictionary = new Dictionary();

        // verify required params are set
        if() {
            throw new ApiError(400, "missing required params");
        }

        
        
        var token:AsyncToken = getApiInvoker().invokeAPI(path, "POST", queryParams, cancelOrderSingleRequest, headerParams);

        var requestId: String = getUniqueId();

        token.requestId = requestId;
        token.completionEventType = "v1_orders_cancel_post";

        token.returnType = ExecutionReport;
        return requestId;

    }

    /*
     * Returns Array 
     */
    public function v1_orders_get (exchangeId: String): String {
        // create path and map variables
        var path: String = "/v1/orders".replace(/{format}/g,"xml");

        // query params
        var queryParams: Dictionary = new Dictionary();
        var headerParams: Dictionary = new Dictionary();

        // verify required params are set
        if() {
            throw new ApiError(400, "missing required params");
        }

        if("null" != String(exchangeId))
            queryParams["exchange_id"] = toPathValue(exchangeId);

        
        var token:AsyncToken = getApiInvoker().invokeAPI(path, "GET", queryParams, null, headerParams);

        var requestId: String = getUniqueId();

        token.requestId = requestId;
        token.completionEventType = "v1_orders_get";

        token.returnType = Array;
        return requestId;

    }

    /*
     * Returns ExecutionReport 
     */
    public function v1_orders_post (newOrderSingle: NewOrderSingle): String {
        // create path and map variables
        var path: String = "/v1/orders".replace(/{format}/g,"xml");

        // query params
        var queryParams: Dictionary = new Dictionary();
        var headerParams: Dictionary = new Dictionary();

        // verify required params are set
        if() {
            throw new ApiError(400, "missing required params");
        }

        
        
        var token:AsyncToken = getApiInvoker().invokeAPI(path, "POST", queryParams, newOrderSingle, headerParams);

        var requestId: String = getUniqueId();

        token.requestId = requestId;
        token.completionEventType = "v1_orders_post";

        token.returnType = ExecutionReport;
        return requestId;

    }

    /*
     * Returns ExecutionReport 
     */
    public function v1_orders_status_client_order_id_get (clientOrderId: String): String {
        // create path and map variables
        var path: String = "/v1/orders/status/{client_order_id}".replace(/{format}/g,"xml").replace("{" + "client_order_id" + "}", getApiInvoker().escapeString(clientOrderId));

        // query params
        var queryParams: Dictionary = new Dictionary();
        var headerParams: Dictionary = new Dictionary();

        // verify required params are set
        if() {
            throw new ApiError(400, "missing required params");
        }

        
        
        var token:AsyncToken = getApiInvoker().invokeAPI(path, "GET", queryParams, null, headerParams);

        var requestId: String = getUniqueId();

        token.requestId = requestId;
        token.completionEventType = "v1_orders_status_client_order_id_get";

        token.returnType = ExecutionReport;
        return requestId;

    }
}
}
