            import 'package:openapi/model/ord_status.dart';
            import 'package:built_collection/built_collection.dart';
        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'execution_report_all_of.g.dart';

abstract class ExecutionReportAllOf implements Built<ExecutionReportAllOf, ExecutionReportAllOfBuilder> {

    /* Hash client id */
        @nullable
    @BuiltValueField(wireName: r'client_order_id_format_exchange')
    String get clientOrderIdFormatExchange;
    /* Exchange order id */
        @nullable
    @BuiltValueField(wireName: r'exchange_order_id')
    String get exchangeOrderId;
    /* Amount open */
        @nullable
    @BuiltValueField(wireName: r'amount_open')
    num get amountOpen;
    /* Amount filled */
        @nullable
    @BuiltValueField(wireName: r'amount_filled')
    num get amountFilled;
    
        @nullable
    @BuiltValueField(wireName: r'status')
    OrdStatus get status;
        //enum statusEnum {  RECEIVED,  ROUTING,  ROUTED,  NEW,  PENDING_CANCEL,  PARTIALLY_FILLED,  FILLED,  CANCELED,  REJECTED,  };
    /* History of order status changes */
        @nullable
    @BuiltValueField(wireName: r'time_order')
    BuiltList<BuiltList<String>> get timeOrder;
    /* Error message */
        @nullable
    @BuiltValueField(wireName: r'error_message')
    String get errorMessage;

    // Boilerplate code needed to wire-up generated code
    ExecutionReportAllOf._();

    factory ExecutionReportAllOf([updates(ExecutionReportAllOfBuilder b)]) = _$ExecutionReportAllOf;
    static Serializer<ExecutionReportAllOf> get serializer => _$executionReportAllOfSerializer;

}

