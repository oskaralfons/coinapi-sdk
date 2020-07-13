        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'cancel_order_single_request.g.dart';

abstract class CancelOrderSingleRequest implements Built<CancelOrderSingleRequest, CancelOrderSingleRequestBuilder> {

    /* Exchange identifier. */
        @nullable
    @BuiltValueField(wireName: r'exchange_id')
    String get exchangeId;
    /* The unique identifier of the order assigned by the exchange. One of the properties (`exchange_order_id`, `client_order_id`) is required to identify the new order. */
        @nullable
    @BuiltValueField(wireName: r'exchange_order_id')
    String get exchangeOrderId;
    /* The unique identifier of the order assigned by the client. One of the properties (`exchange_order_id`, `client_order_id`) is required to identify the new order. */
        @nullable
    @BuiltValueField(wireName: r'client_order_id')
    String get clientOrderId;

    // Boilerplate code needed to wire-up generated code
    CancelOrderSingleRequest._();

    factory CancelOrderSingleRequest([updates(CancelOrderSingleRequestBuilder b)]) = _$CancelOrderSingleRequest;
    static Serializer<CancelOrderSingleRequest> get serializer => _$cancelOrderSingleRequestSerializer;

}

