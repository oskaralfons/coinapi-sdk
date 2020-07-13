import 'package:jaguar_serializer/jaguar_serializer.dart';


part 'cancel_order_all_request.jser.dart';

class CancelOrderAllRequest {
   /* Exchange identifier from which active orders should be canceled. */
  @Alias('exchange_id', isNullable: false,  )
  final String exchangeId;
  

  CancelOrderAllRequest(
      

{
    
     this.exchangeId = null 
    }
  );

  @override
  String toString() {
    return 'CancelOrderAllRequest[exchangeId=$exchangeId, ]';
  }
}

@GenSerializer(nullableFields: true)
class CancelOrderAllRequestSerializer extends Serializer<CancelOrderAllRequest> with _$CancelOrderAllRequestSerializer {

}

