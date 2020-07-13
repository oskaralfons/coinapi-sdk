        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'balance_data.g.dart';

abstract class BalanceData implements Built<BalanceData, BalanceDataBuilder> {

    /* Exchange identifier. */
        @nullable
    @BuiltValueField(wireName: r'id')
    String get id;
    /* Exchange currency code. */
        @nullable
    @BuiltValueField(wireName: r'symbol_exchange')
    String get symbolExchange;
    /* CoinAPI currency code. */
        @nullable
    @BuiltValueField(wireName: r'symbol_coinapi')
    String get symbolCoinapi;
    /* Value of the current total currency balance on the exchange. */
        @nullable
    @BuiltValueField(wireName: r'balance')
    double get balance;
    /* Value of the current available currency balance on the exchange that can be used as collateral. */
        @nullable
    @BuiltValueField(wireName: r'available')
    double get available;
    /* Value of the current locked currency balance by the exchange. */
        @nullable
    @BuiltValueField(wireName: r'locked')
    double get locked;
    /* Source of the last modification.  */
        @nullable
    @BuiltValueField(wireName: r'update_origin')
    String get updateOrigin;
        //enum updateOriginEnum {  INITIALIZATION,  BALANCE_MANAGER,  EXCHANGE,  };

    // Boilerplate code needed to wire-up generated code
    BalanceData._();

    factory BalanceData([updates(BalanceDataBuilder b)]) = _$BalanceData;
    static Serializer<BalanceData> get serializer => _$balanceDataSerializer;

}

