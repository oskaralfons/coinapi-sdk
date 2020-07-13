import 'package:openapi/api.dart';
import 'package:test/test.dart';

// tests for OrderExecutionReportAllOf
void main() {
  var instance = new OrderExecutionReportAllOf();

  group('test OrderExecutionReportAllOf', () {
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

    // Amount open.
    // num amountOpen (default value: null)
    test('to test the property `amountOpen`', () async {
      // TODO
    });

    // Amount filled.
    // num amountFilled (default value: null)
    test('to test the property `amountFilled`', () async {
      // TODO
    });

    // OrdStatus status (default value: null)
    test('to test the property `status`', () async {
      // TODO
    });

    // Timestamped history of order status changes.
    // List<List<String>> timeOrder (default value: const [])
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
