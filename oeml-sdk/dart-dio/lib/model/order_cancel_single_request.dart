        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'order_cancel_single_request.g.dart';

abstract class OrderCancelSingleRequest implements Built<OrderCancelSingleRequest, OrderCancelSingleRequestBuilder> {

    /* Exchange name */
        @nullable
    @BuiltValueField(wireName: r'exchange_id')
    String get exchangeId;
    /* Order Id */
        @nullable
    @BuiltValueField(wireName: r'exchange_order_id')
    String get exchangeOrderId;
    /* Client order Id */
        @nullable
    @BuiltValueField(wireName: r'client_order_id')
    String get clientOrderId;

    // Boilerplate code needed to wire-up generated code
    OrderCancelSingleRequest._();

    factory OrderCancelSingleRequest([updates(OrderCancelSingleRequestBuilder b)]) = _$OrderCancelSingleRequest;
    static Serializer<OrderCancelSingleRequest> get serializer => _$orderCancelSingleRequestSerializer;

}

