import 'package:jaguar_serializer/jaguar_serializer.dart';


part 'cancel_order_single_request.jser.dart';

class CancelOrderSingleRequest {
   /* Exchange identifier. */
  @Alias('exchange_id', isNullable: false,  )
  final String exchangeId;
   /* The unique identifier of the order assigned by the exchange. One of the properties (`exchange_order_id`, `client_order_id`) is required to identify the new order. */
  @Alias('exchange_order_id', isNullable: false,  )
  final String exchangeOrderId;
   /* The unique identifier of the order assigned by the client. One of the properties (`exchange_order_id`, `client_order_id`) is required to identify the new order. */
  @Alias('client_order_id', isNullable: false,  )
  final String clientOrderId;
  

  CancelOrderSingleRequest(
      

{
    
     this.exchangeId = null,   this.exchangeOrderId = null,  
     this.clientOrderId = null 
    
    }
  );

  @override
  String toString() {
    return 'CancelOrderSingleRequest[exchangeId=$exchangeId, exchangeOrderId=$exchangeOrderId, clientOrderId=$clientOrderId, ]';
  }
}

@GenSerializer(nullableFields: true)
class CancelOrderSingleRequestSerializer extends Serializer<CancelOrderSingleRequest> with _$CancelOrderSingleRequestSerializer {

}

