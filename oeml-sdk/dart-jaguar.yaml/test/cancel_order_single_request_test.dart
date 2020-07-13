import 'package:openapi/api.dart';
import 'package:test/test.dart';

// tests for CancelOrderSingleRequest
void main() {
  var instance = new CancelOrderSingleRequest();

  group('test CancelOrderSingleRequest', () {
    // Exchange identifier.
    // String exchangeId (default value: null)
    test('to test the property `exchangeId`', () async {
      // TODO
    });

    // The unique identifier of the order assigned by the exchange. One of the properties (`exchange_order_id`, `client_order_id`) is required to identify the new order.
    // String exchangeOrderId (default value: null)
    test('to test the property `exchangeOrderId`', () async {
      // TODO
    });

    // The unique identifier of the order assigned by the client. One of the properties (`exchange_order_id`, `client_order_id`) is required to identify the new order.
    // String clientOrderId (default value: null)
    test('to test the property `clientOrderId`', () async {
      // TODO
    });


  });

}
