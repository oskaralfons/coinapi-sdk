import 'package:openapi/api.dart';
import 'package:test/test.dart';


/// tests for OrdersApi
void main() {
  var instance = OrdersApi();

  group('tests for OrdersApi', () {
    // Cancel all orders
    //
    // This request cancels all open orders across all or single specified exchange.
    //
    //Future<Message> v1OrdersCancelAllPost(CancelOrderAllRequest cancelOrderAllRequest) async 
    test('test v1OrdersCancelAllPost', () async {
      // TODO
    });

    // Cancel order
    //
    // This request cancels an existing order. The order can be canceled by the client order ID or exchange order ID.
    //
    //Future<OrderExecutionReport> v1OrdersCancelPost(CancelOrderSingleRequest cancelOrderSingleRequest) async 
    test('test v1OrdersCancelPost', () async {
      // TODO
    });

    // Get all orders
    //
    // Get all current open orders across all or single specified exchange.
    //
    //Future<List<OrderExecutionReport>> v1OrdersGet({ String exchangeId }) async 
    test('test v1OrdersGet', () async {
      // TODO
    });

    // Create new order
    //
    // This request creating new order for the specific exchange.
    //
    //Future<OrderExecutionReport> v1OrdersPost(NewOrderSingle newOrderSingle) async 
    test('test v1OrdersPost', () async {
      // TODO
    });

    // Get order status
    //
    // Get the last order execution report for the specified order. The requested order does not need to be active/opened.
    //
    //Future<OrderExecutionReport> v1OrdersStatusClientOrderIdGet(String clientOrderId) async 
    test('test v1OrdersStatusClientOrderIdGet', () async {
      // TODO
    });

  });
}
