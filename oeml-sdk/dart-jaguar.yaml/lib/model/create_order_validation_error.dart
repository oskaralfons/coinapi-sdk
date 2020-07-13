import 'package:jaguar_serializer/jaguar_serializer.dart';


part 'create_order_validation_error.jser.dart';

class CreateOrderValidationError {
  
  @Alias('type', isNullable: false,  )
  final String type;
  
  @Alias('title', isNullable: false,  )
  final String title;
  
  @Alias('status', isNullable: false,  )
  final num status;
  
  @Alias('traceId', isNullable: false,  )
  final String traceId;
  
  @Alias('errors', isNullable: false,  )
  final String errors;
  

  CreateOrderValidationError(
      

{
     this.type = null,  
     this.title = null,  
     this.status = null,  
     this.traceId = null,  
     this.errors = null 
    
    }
  );

  @override
  String toString() {
    return 'CreateOrderValidationError[type=$type, title=$title, status=$status, traceId=$traceId, errors=$errors, ]';
  }
}

@GenSerializer(nullableFields: true)
class CreateOrderValidationErrorSerializer extends Serializer<CreateOrderValidationError> with _$CreateOrderValidationErrorSerializer {

}

