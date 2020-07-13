import 'package:jaguar_serializer/jaguar_serializer.dart';


part 'order_cancel_single_request.jser.dart';

class OrderCancelSingleRequest {
   /* Exchange identifier. */
  @Alias('exchange_id', isNullable: false,  )
  final String exchangeId;
   /* The unique identifier of the order assigned by the exchange. One of the properties (`exchange_order_id`, `client_order_id`) is required to identify the new order. */
  @Alias('exchange_order_id', isNullable: false,  )
  final String exchangeOrderId;
   /* The unique identifier of the order assigned by the client. One of the properties (`exchange_order_id`, `client_order_id`) is required to identify the new order. */
  @Alias('client_order_id', isNullable: false,  )
  final String clientOrderId;
  

  OrderCancelSingleRequest(
      

{
    
     this.exchangeId = null,   this.exchangeOrderId = null,  
     this.clientOrderId = null 
    
    }
  );

  @override
  String toString() {
    return 'OrderCancelSingleRequest[exchangeId=$exchangeId, exchangeOrderId=$exchangeOrderId, clientOrderId=$clientOrderId, ]';
  }
}

@GenSerializer(nullableFields: true)
class OrderCancelSingleRequestSerializer extends Serializer<OrderCancelSingleRequest> with _$OrderCancelSingleRequestSerializer {

}

