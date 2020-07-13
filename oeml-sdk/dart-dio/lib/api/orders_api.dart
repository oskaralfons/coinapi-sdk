import 'dart:async';
import 'dart:io';
import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';

import 'package:openapi/model/create_order_validation_error.dart';
import 'package:openapi/model/order_cancel_all_request.dart';
import 'package:openapi/model/execution_report.dart';
import 'package:openapi/model/order_cancel_single_request.dart';
import 'package:openapi/model/orders.dart';
import 'package:openapi/model/message.dart';
import 'package:openapi/model/new_order.dart';

class OrdersApi {
    final Dio _dio;
    Serializers _serializers;

    OrdersApi(this._dio, this._serializers);

        /// Cancel all orders
        ///
        /// This request cancels all open orders across all or single specified exchange.
        Future<Response<Message>>v1OrdersCancelAllPost(OrderCancelAllRequest orderCancelAllRequest,{ CancelToken cancelToken, Map<String, String> headers,}) async {

        String _path = "/v1/orders/cancel/all";

        Map<String, dynamic> queryParams = {};
        Map<String, String> headerParams = Map.from(headers ?? {});
        dynamic bodyData;

        queryParams.removeWhere((key, value) => value == null);
        headerParams.removeWhere((key, value) => value == null);

        List<String> contentTypes = ["application/json"];


            var serializedBody = _serializers.serialize(orderCancelAllRequest);
            var jsonorderCancelAllRequest = json.encode(serializedBody);
            bodyData = jsonorderCancelAllRequest;

            return _dio.request(
            _path,
            queryParameters: queryParams,
            data: bodyData,
            options: Options(
            method: 'post'.toUpperCase(),
            headers: headerParams,
            extra: {
                'secure': [],
            },
            contentType: contentTypes.isNotEmpty ? contentTypes[0] : "application/json",
            ),
            cancelToken: cancelToken,
            ).then((response) {

        var serializer = _serializers.serializerForType(Message);
        var data = _serializers.deserializeWith<Message>(serializer, response.data is String ? jsonDecode(response.data) : response.data);

            return Response<Message>(
                data: data,
                headers: response.headers,
                request: response.request,
                redirects: response.redirects,
                statusCode: response.statusCode,
                statusMessage: response.statusMessage,
                extra: response.extra,
            );
            });
            }
        /// Cancel order
        ///
        /// This request cancels an existing order. The order can be canceled by the client order ID or exchange order ID.
        Future<Response<ExecutionReport>>v1OrdersCancelPost(OrderCancelSingleRequest orderCancelSingleRequest,{ CancelToken cancelToken, Map<String, String> headers,}) async {

        String _path = "/v1/orders/cancel";

        Map<String, dynamic> queryParams = {};
        Map<String, String> headerParams = Map.from(headers ?? {});
        dynamic bodyData;

        queryParams.removeWhere((key, value) => value == null);
        headerParams.removeWhere((key, value) => value == null);

        List<String> contentTypes = ["application/json"];


            var serializedBody = _serializers.serialize(orderCancelSingleRequest);
            var jsonorderCancelSingleRequest = json.encode(serializedBody);
            bodyData = jsonorderCancelSingleRequest;

            return _dio.request(
            _path,
            queryParameters: queryParams,
            data: bodyData,
            options: Options(
            method: 'post'.toUpperCase(),
            headers: headerParams,
            extra: {
                'secure': [],
            },
            contentType: contentTypes.isNotEmpty ? contentTypes[0] : "application/json",
            ),
            cancelToken: cancelToken,
            ).then((response) {

        var serializer = _serializers.serializerForType(ExecutionReport);
        var data = _serializers.deserializeWith<ExecutionReport>(serializer, response.data is String ? jsonDecode(response.data) : response.data);

            return Response<ExecutionReport>(
                data: data,
                headers: response.headers,
                request: response.request,
                redirects: response.redirects,
                statusCode: response.statusCode,
                statusMessage: response.statusMessage,
                extra: response.extra,
            );
            });
            }
        /// Get all orders
        ///
        /// Get all current open orders across all or single specified exchange.
        Future<Response<Orders>>v1OrdersGet({ String exchangeId,CancelToken cancelToken, Map<String, String> headers,}) async {

        String _path = "/v1/orders";

        Map<String, dynamic> queryParams = {};
        Map<String, String> headerParams = Map.from(headers ?? {});
        dynamic bodyData;

                queryParams[r'exchange_id'] = exchangeId;
        queryParams.removeWhere((key, value) => value == null);
        headerParams.removeWhere((key, value) => value == null);

        List<String> contentTypes = [];



            return _dio.request(
            _path,
            queryParameters: queryParams,
            data: bodyData,
            options: Options(
            method: 'get'.toUpperCase(),
            headers: headerParams,
            extra: {
                'secure': [],
            },
            contentType: contentTypes.isNotEmpty ? contentTypes[0] : "application/json",
            ),
            cancelToken: cancelToken,
            ).then((response) {

        var serializer = _serializers.serializerForType(Orders);
        var data = _serializers.deserializeWith<Orders>(serializer, response.data is String ? jsonDecode(response.data) : response.data);

            return Response<Orders>(
                data: data,
                headers: response.headers,
                request: response.request,
                redirects: response.redirects,
                statusCode: response.statusCode,
                statusMessage: response.statusMessage,
                extra: response.extra,
            );
            });
            }
        /// Create new order
        ///
        /// This request creating new order for the specific exchange.
        Future<Response<ExecutionReport>>v1OrdersPost(NewOrder newOrder,{ CancelToken cancelToken, Map<String, String> headers,}) async {

        String _path = "/v1/orders";

        Map<String, dynamic> queryParams = {};
        Map<String, String> headerParams = Map.from(headers ?? {});
        dynamic bodyData;

        queryParams.removeWhere((key, value) => value == null);
        headerParams.removeWhere((key, value) => value == null);

        List<String> contentTypes = ["application/json"];


            var serializedBody = _serializers.serialize(newOrder);
            var jsonnewOrder = json.encode(serializedBody);
            bodyData = jsonnewOrder;

            return _dio.request(
            _path,
            queryParameters: queryParams,
            data: bodyData,
            options: Options(
            method: 'post'.toUpperCase(),
            headers: headerParams,
            extra: {
                'secure': [],
            },
            contentType: contentTypes.isNotEmpty ? contentTypes[0] : "application/json",
            ),
            cancelToken: cancelToken,
            ).then((response) {

        var serializer = _serializers.serializerForType(ExecutionReport);
        var data = _serializers.deserializeWith<ExecutionReport>(serializer, response.data is String ? jsonDecode(response.data) : response.data);

            return Response<ExecutionReport>(
                data: data,
                headers: response.headers,
                request: response.request,
                redirects: response.redirects,
                statusCode: response.statusCode,
                statusMessage: response.statusMessage,
                extra: response.extra,
            );
            });
            }
        /// Get order status
        ///
        /// Get the current order status for the specified order. The requested order can no longer be active.
        Future<Response<ExecutionReport>>v1OrdersStatusClientOrderIdGet(String clientOrderId,{ CancelToken cancelToken, Map<String, String> headers,}) async {

        String _path = "/v1/orders/status/{client_order_id}".replaceAll("{" r'client_order_id' "}", clientOrderId.toString());

        Map<String, dynamic> queryParams = {};
        Map<String, String> headerParams = Map.from(headers ?? {});
        dynamic bodyData;

        queryParams.removeWhere((key, value) => value == null);
        headerParams.removeWhere((key, value) => value == null);

        List<String> contentTypes = [];



            return _dio.request(
            _path,
            queryParameters: queryParams,
            data: bodyData,
            options: Options(
            method: 'get'.toUpperCase(),
            headers: headerParams,
            extra: {
                'secure': [],
            },
            contentType: contentTypes.isNotEmpty ? contentTypes[0] : "application/json",
            ),
            cancelToken: cancelToken,
            ).then((response) {

        var serializer = _serializers.serializerForType(ExecutionReport);
        var data = _serializers.deserializeWith<ExecutionReport>(serializer, response.data is String ? jsonDecode(response.data) : response.data);

            return Response<ExecutionReport>(
                data: data,
                headers: response.headers,
                request: response.request,
                redirects: response.redirects,
                statusCode: response.statusCode,
                statusMessage: response.statusMessage,
                extra: response.extra,
            );
            });
            }
        }
