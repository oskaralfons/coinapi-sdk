import 'package:openapi/api.dart';
import 'package:test/test.dart';

// tests for OrderExecutionReport
void main() {
    var instance = new OrderExecutionReport();

  group('test OrderExecutionReport', () {
    // Exchange identifier.
    // String exchangeId (default value: null)
    test('to test the property `exchangeId`', () async {
      // TODO
    });

    // The unique identifier of the order assigned by the client.
    // String clientOrderId (default value: null)
    test('to test the property `clientOrderId`', () async {
      // TODO
    });

    // Exchange symbol. One of the properties (`symbol_exchange`, `symbol_coinapi`) are required to identify the market for the new order.
    // String symbolExchange (default value: null)
    test('to test the property `symbolExchange`', () async {
      // TODO
    });

    // CoinAPI symbol. One of the properties (`symbol_exchange`, `symbol_coinapi`) are required to identify the market for the new order.
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
    // List<String> execInst (default value: [])
    test('to test the property `execInst`', () async {
      // TODO
    });

    // The unique identifier of the order assigned by the client converted to the exchange order tag format for the purpose of tracking it.
    // String clientOrderIdFormatExchange (default value: null)
    test('to test the property `clientOrderIdFormatExchange`', () async {
      // TODO
    });

    // The unique identifier of the order assigned by the exchange.
    // String exchangeOrderId (default value: null)
    test('to test the property `exchangeOrderId`', () async {
      // TODO
    });

    // Amount open
    // num amountOpen (default value: null)
    test('to test the property `amountOpen`', () async {
      // TODO
    });

    // Amount filled
    // num amountFilled (default value: null)
    test('to test the property `amountFilled`', () async {
      // TODO
    });

    // OrdStatus status (default value: null)
    test('to test the property `status`', () async {
      // TODO
    });

    // Timestamped history of order status changes.
    // List<List<String>> timeOrder (default value: [])
    test('to test the property `timeOrder`', () async {
      // TODO
    });

    // Error message
    // String errorMessage (default value: null)
    test('to test the property `errorMessage`', () async {
      // TODO
    });


  });

}
