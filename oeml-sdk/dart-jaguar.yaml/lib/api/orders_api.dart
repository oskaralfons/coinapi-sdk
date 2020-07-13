import 'package:jaguar_retrofit/annotations/annotations.dart';
import 'package:jaguar_retrofit/jaguar_retrofit.dart';
import 'package:jaguar_serializer/jaguar_serializer.dart';
import 'package:jaguar_mimetype/jaguar_mimetype.dart';
import 'dart:async';

import 'package:openapi/model/cancel_order_single_request.dart';
import 'package:openapi/model/cancel_order_all_request.dart';
import 'package:openapi/model/validation_error.dart';
import 'package:openapi/model/order_execution_report.dart';
import 'package:openapi/model/new_order_single.dart';
import 'package:openapi/model/message.dart';

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
            
             @AsJson() CancelOrderAllRequest cancelOrderAllRequest
        ) {
        return super.v1OrdersCancelAllPost(

        
        cancelOrderAllRequest
        ).timeout(timeout);
    }

    /// Cancel order
    ///
    /// This request cancels an existing order. The order can be canceled by the client order ID or exchange order ID.
    @PostReq(path: "/v1/orders/cancel")
    Future<OrderExecutionReport> v1OrdersCancelPost(
            
             @AsJson() CancelOrderSingleRequest cancelOrderSingleRequest
        ) {
        return super.v1OrdersCancelPost(

        
        cancelOrderSingleRequest
        ).timeout(timeout);
    }

    /// Get all orders
    ///
    /// Get last execution reports for all open orders across all or single exchange.
    @GetReq(path: "/v1/orders")
    Future<List<OrderExecutionReport>> v1OrdersGet(
        
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
    Future<OrderExecutionReport> v1OrdersPost(
            
             @AsJson() NewOrderSingle newOrderSingle
        ) {
        return super.v1OrdersPost(

        
        newOrderSingle
        ).timeout(timeout);
    }

    /// Get order status
    ///
    /// Get the last order execution report for the specified order. The requested order does not need to be active/opened.
    @GetReq(path: "/v1/orders/status/:client_order_id")
    Future<OrderExecutionReport> v1OrdersStatusClientOrderIdGet(
            @PathParam("client_order_id") String clientOrderId
        ) {
        return super.v1OrdersStatusClientOrderIdGet(
        clientOrderId

        ).timeout(timeout);
    }


}
