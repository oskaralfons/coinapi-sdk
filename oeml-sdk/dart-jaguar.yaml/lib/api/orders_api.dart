import 'package:jaguar_retrofit/annotations/annotations.dart';
import 'package:jaguar_retrofit/jaguar_retrofit.dart';
import 'package:jaguar_serializer/jaguar_serializer.dart';
import 'package:jaguar_mimetype/jaguar_mimetype.dart';
import 'dart:async';

import 'package:openapi/model/create_order_validation_error.dart';
import 'package:openapi/model/order_cancel_all_request.dart';
import 'package:openapi/model/execution_report.dart';
import 'package:openapi/model/order_cancel_single_request.dart';
import 'package:openapi/model/orders.dart';
import 'package:openapi/model/message.dart';
import 'package:openapi/model/new_order.dart';

part 'orders_api.jretro.dart';

@GenApiClient()
class OrdersApi extends ApiClient with _$OrdersApiClient {
    final Route base;
    final Map<String, CodecRepo> converters;
    final Duration timeout;

    OrdersApi({this.base, this.converters, this.timeout = const Duration(minutes: 2)});

    /// Cancel all orders
    ///
    /// This request cancels all open orders across all or single specified exchange.
    @PostReq(path: "/v1/orders/cancel/all")
    Future<Message> v1OrdersCancelAllPost(
            
             @AsJson() OrderCancelAllRequest orderCancelAllRequest
        ) {
        return super.v1OrdersCancelAllPost(

        
        orderCancelAllRequest
        ).timeout(timeout);
    }

    /// Cancel order
    ///
    /// This request cancels an existing order. The order can be canceled by the client order ID or exchange order ID.
    @PostReq(path: "/v1/orders/cancel")
    Future<ExecutionReport> v1OrdersCancelPost(
            
             @AsJson() OrderCancelSingleRequest orderCancelSingleRequest
        ) {
        return super.v1OrdersCancelPost(

        
        orderCancelSingleRequest
        ).timeout(timeout);
    }

    /// Get all orders
    ///
    /// Get all current open orders across all or single specified exchange.
    @GetReq(path: "/v1/orders")
    Future<Orders> v1OrdersGet(
        
            @QueryParam("exchange_id") String exchangeId
        ) {
        return super.v1OrdersGet(
        
        exchangeId

        ).timeout(timeout);
    }

    /// Create new order
    ///
    /// This request creating new order for the specific exchange.
    @PostReq(path: "/v1/orders")
    Future<ExecutionReport> v1OrdersPost(
            
             @AsJson() NewOrder newOrder
        ) {
        return super.v1OrdersPost(

        
        newOrder
        ).timeout(timeout);
    }

    /// Get order status
    ///
    /// Get the current order status for the specified order. The requested order can no longer be active.
    @GetReq(path: "/v1/orders/status/:client_order_id")
    Future<ExecutionReport> v1OrdersStatusClientOrderIdGet(
            @PathParam("client_order_id") String clientOrderId
        ) {
        return super.v1OrdersStatusClientOrderIdGet(
        clientOrderId

        ).timeout(timeout);
    }


}
