import 'package:jaguar_serializer/jaguar_serializer.dart';


part 'cancel_order_single_request.jser.dart';

class CancelOrderSingleRequest {
   /* Exchange name */
  @Alias('exchange_id', isNullable: false,  )
  final String exchangeId;
   /* Order Id */
  @Alias('exchange_order_id', isNullable: false,  )
  final String exchangeOrderId;
   /* Client order Id */
  @Alias('client_order_id', isNullable: false,  )
  final String clientOrderId;
  

  CancelOrderSingleRequest(
      

{
     this.exchangeId = null,  
     this.exchangeOrderId = null,  
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

