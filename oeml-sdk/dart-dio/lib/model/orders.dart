            import 'package:built_collection/built_collection.dart';
            import 'package:openapi/model/orders_data.dart';
        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'orders.g.dart';

abstract class Orders implements Built<Orders, OrdersBuilder> {

    /* Constant value `snapshotOrders`. */
        @nullable
    @BuiltValueField(wireName: r'type')
    String get type;
    /* Exchange identifier. */
        @nullable
    @BuiltValueField(wireName: r'exchange_id')
    String get exchangeId;
    /* Orders array */
        @nullable
    @BuiltValueField(wireName: r'data')
    BuiltList<OrdersData> get data;

    // Boilerplate code needed to wire-up generated code
    Orders._();

    factory Orders([updates(OrdersBuilder b)]) = _$Orders;
    static Serializer<Orders> get serializer => _$ordersSerializer;

}

