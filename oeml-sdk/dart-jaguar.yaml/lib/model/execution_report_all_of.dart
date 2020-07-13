import 'package:jaguar_serializer/jaguar_serializer.dart';


import 'package:openapi/model/ord_status.dart';

part 'execution_report_all_of.jser.dart';

class ExecutionReportAllOf {
   /* Hash client id */
  @Alias('client_order_id_format_exchange', isNullable: false,  )
  final String clientOrderIdFormatExchange;
   /* Exchange order id */
  @Alias('exchange_order_id', isNullable: false,  )
  final String exchangeOrderId;
   /* Amount open */
  @Alias('amount_open', isNullable: false,  )
  final num amountOpen;
   /* Amount filled */
  @Alias('amount_filled', isNullable: false,  )
  final num amountFilled;
  
  @Alias('status', isNullable: false,
          
             processor:  const OrdStatusFieldProcessor(),
          
  )
  final OrdStatus status;
  //enum statusEnum {  RECEIVED,  ROUTING,  ROUTED,  NEW,  PENDING_CANCEL,  PARTIALLY_FILLED,  FILLED,  CANCELED,  REJECTED,  }; /* Timestamped history of order status changes. */
  @Alias('time_order', isNullable: false,  )
  final List<List<String>> timeOrder;
   /* Error message */
  @Alias('error_message', isNullable: false,  )
  final String errorMessage;
  

  ExecutionReportAllOf(
      

{
    
     this.clientOrderIdFormatExchange = null,   this.exchangeOrderId = null,  
    
     this.amountOpen = null,  
     this.amountFilled = null,  
     this.status = null,  
     this.timeOrder = const [],   this.errorMessage = null 
    
    }
  );

  @override
  String toString() {
    return 'ExecutionReportAllOf[clientOrderIdFormatExchange=$clientOrderIdFormatExchange, exchangeOrderId=$exchangeOrderId, amountOpen=$amountOpen, amountFilled=$amountFilled, status=$status, timeOrder=$timeOrder, errorMessage=$errorMessage, ]';
  }
}

@GenSerializer(nullableFields: true)
class ExecutionReportAllOfSerializer extends Serializer<ExecutionReportAllOf> with _$ExecutionReportAllOfSerializer {

}

