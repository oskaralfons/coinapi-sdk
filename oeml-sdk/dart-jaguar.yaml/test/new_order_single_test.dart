import 'package:openapi/api.dart';
import 'package:test/test.dart';

// tests for NewOrderSingle
void main() {
  var instance = new NewOrderSingle();

  group('test NewOrderSingle', () {
    // Exchange identifier.
    // String exchangeId (default value: null)
    test('to test the property `exchangeId`', () async {
      // TODO
    });

    // Unique identifier for the order assigned by the `OEML API` client.
    // String clientOrderId (default value: null)
    test('to test the property `clientOrderId`', () async {
      // TODO
    });

    // Exchange symbol. One of the properties (`symbol_exchange`, `symbol_coinapi`) is required to identify the market for the order.
    // String symbolExchange (default value: null)
    test('to test the property `symbolExchange`', () async {
      // TODO
    });

    // CoinAPI symbol. One of the properties (`symbol_exchange`, `symbol_coinapi`) is required to identify the market for the order.
    // String symbolCoinapi (default value: null)
    test('to test the property `symbolCoinapi`', () async {
      // TODO
    });

    // Order quantity.
    // num amountOrder (default value: null)
    test('to test the property `amountOrder`', () async {
      // TODO
    });

    // Order price.
    // num price (default value: null)
    test('to test the property `price`', () async {
      // TODO
    });

    // OrdSide side (default value: null)
    test('to test the property `side`', () async {
      // TODO
    });

    // OrdType orderType (default value: null)
    test('to test the property `orderType`', () async {
      // TODO
    });

    // TimeInForce timeInForce (default value: null)
    test('to test the property `timeInForce`', () async {
      // TODO
    });

    // Expiration time. Conditionaly required for orders with time_in_force = `GOOD_TILL_TIME_EXCHANGE` or `GOOD_TILL_TIME_OEML`.
    // DateTime expireTime (default value: null)
    test('to test the property `expireTime`', () async {
      // TODO
    });

    // Order execution instructions are documented in the separate section: <a href=\"#oeml-order-params-exec\">OEML / Starter Guide / Order parameters / Execution instructions</a> 
    // List<String> execInst (default value: const [])
    test('to test the property `execInst`', () async {
      // TODO
    });


  });

}
