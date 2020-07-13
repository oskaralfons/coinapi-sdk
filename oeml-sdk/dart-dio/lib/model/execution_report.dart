            import 'package:openapi/model/ord_status.dart';
            import 'package:built_collection/built_collection.dart';
            import 'package:openapi/model/time_in_force.dart';
        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'execution_report.g.dart';

abstract class ExecutionReport implements Built<ExecutionReport, ExecutionReportBuilder> {

    /* Exchange name */
        @nullable
    @BuiltValueField(wireName: r'exchange_id')
    String get exchangeId;
    /* Client unique identifier for the trade. */
        @nullable
    @BuiltValueField(wireName: r'id')
    String get id;
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
    /* Client unique identifier for the trade. */
        @nullable
    @BuiltValueField(wireName: r'client_order_id')
    String get clientOrderId;
    /* The symbol of the order. */
        @nullable
    @BuiltValueField(wireName: r'symbol_exchange')
    String get symbolExchange;
    /* The CoinAPI symbol of the order. */
        @nullable
    @BuiltValueField(wireName: r'symbol_coinapi')
    String get symbolCoinapi;
    /* Quoted decimal amount to purchase. */
        @nullable
    @BuiltValueField(wireName: r'amount_order')
    num get amountOrder;
    /* Quoted decimal amount to spend per unit. */
        @nullable
    @BuiltValueField(wireName: r'price')
    num get price;
    /* Buy or Sell */
        @nullable
    @BuiltValueField(wireName: r'side')
    String get side;
        //enum sideEnum {  BUY,  SELL,  };
    /* The order type. */
        @nullable
    @BuiltValueField(wireName: r'order_type')
    String get orderType;
        //enum orderTypeEnum {  LIMIT,  };
    
        @nullable
    @BuiltValueField(wireName: r'time_in_force')
    TimeInForce get timeInForce;
        //enum timeInForceEnum {  GOOD_TILL_CANCEL,  GOOD_TILL_TIME_EXCHANGE,  GOOD_TILL_TIME_OMS,  FILL_OR_KILL,  IMMEDIATE_OR_CANCEL,  };
    /* Required for orders with time_in_force = GOOD_TILL_TIME_EXCHANGE, GOOD_TILL_TIME_OMS */
        @nullable
    @BuiltValueField(wireName: r'expire_time')
    DateTime get expireTime;
    /* Order execution instructions are documented in the separate section: <a href=\"#oeml-order-params-exec\">OEML / Starter Guide / Order parameters / Execution instructions</a> */
        @nullable
    @BuiltValueField(wireName: r'exec_inst')
    BuiltList<String> get execInst;
        //enum execInstEnum {  MAKER_OR_CANCEL,  AUCTION_ONLY,  INDICATION_OF_INTEREST,  };

    // Boilerplate code needed to wire-up generated code
    ExecutionReport._();

    factory ExecutionReport([updates(ExecutionReportBuilder b)]) = _$ExecutionReport;
    static Serializer<ExecutionReport> get serializer => _$executionReportSerializer;

}

