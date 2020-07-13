            import 'package:openapi/model/execution_report_all_of.dart';
            import 'package:openapi/model/ord_side.dart';
            import 'package:openapi/model/ord_status.dart';
            import 'package:built_collection/built_collection.dart';
            import 'package:openapi/model/time_in_force.dart';
            import 'package:openapi/model/ord_type.dart';
            import 'package:openapi/model/new_order_single.dart';
        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'execution_report.g.dart';

abstract class ExecutionReport implements Built<ExecutionReport, ExecutionReportBuilder> {

    /* Exchange identifier. */
        @nullable
    @BuiltValueField(wireName: r'exchange_id')
    String get exchangeId;
    /* Unique identifier for the order assigned by the `OEML API` client. */
        @nullable
    @BuiltValueField(wireName: r'client_order_id')
    String get clientOrderId;
    /* Exchange symbol. One of the properties (`symbol_exchange`, `symbol_coinapi`) is required to identify the market for the order. */
        @nullable
    @BuiltValueField(wireName: r'symbol_exchange')
    String get symbolExchange;
    /* CoinAPI symbol. One of the properties (`symbol_exchange`, `symbol_coinapi`) is required to identify the market for the order. */
        @nullable
    @BuiltValueField(wireName: r'symbol_coinapi')
    String get symbolCoinapi;
    /* Order quantity. */
        @nullable
    @BuiltValueField(wireName: r'amount_order')
    num get amountOrder;
    /* Order price. */
        @nullable
    @BuiltValueField(wireName: r'price')
    num get price;
    
        @nullable
    @BuiltValueField(wireName: r'side')
    OrdSide get side;
        //enum sideEnum {  BUY,  SELL,  };
    
        @nullable
    @BuiltValueField(wireName: r'order_type')
    OrdType get orderType;
        //enum orderTypeEnum {  LIMIT,  };
    
        @nullable
    @BuiltValueField(wireName: r'time_in_force')
    TimeInForce get timeInForce;
        //enum timeInForceEnum {  GOOD_TILL_CANCEL,  GOOD_TILL_TIME_EXCHANGE,  GOOD_TILL_TIME_OMS,  FILL_OR_KILL,  IMMEDIATE_OR_CANCEL,  };
    /* Expiration time. Conditionaly required for orders with time_in_force = `GOOD_TILL_TIME_EXCHANGE` or `GOOD_TILL_TIME_OEML`. */
        @nullable
    @BuiltValueField(wireName: r'expire_time')
    DateTime get expireTime;
    /* Order execution instructions are documented in the separate section: <a href=\"#oeml-order-params-exec\">OEML / Starter Guide / Order parameters / Execution instructions</a> */
        @nullable
    @BuiltValueField(wireName: r'exec_inst')
    BuiltList<String> get execInst;
        //enum execInstEnum {  MAKER_OR_CANCEL,  AUCTION_ONLY,  INDICATION_OF_INTEREST,  };
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
    ExecutionReport._();

    factory ExecutionReport([updates(ExecutionReportBuilder b)]) = _$ExecutionReport;
    static Serializer<ExecutionReport> get serializer => _$executionReportSerializer;

}

