import 'package:jaguar_serializer/jaguar_serializer.dart';


import 'package:openapi/model/execution_report_all_of.dart';

import 'package:openapi/model/time_in_force.dart';

import 'package:openapi/model/ord_status.dart';

import 'package:openapi/model/ord_type.dart';

import 'package:openapi/model/new_order_single.dart';

import 'package:openapi/model/ord_side.dart';

part 'execution_report.jser.dart';

class ExecutionReport {
   /* Exchange identifier. */
  @Alias('exchange_id', isNullable: false,  )
  final String exchangeId;
   /* Unique identifier for the order assigned by the `OEML API` client. */
  @Alias('client_order_id', isNullable: false,  )
  final String clientOrderId;
   /* Exchange symbol. One of the properties (`symbol_exchange`, `symbol_coinapi`) is required to identify the market for the order. */
  @Alias('symbol_exchange', isNullable: false,  )
  final String symbolExchange;
   /* CoinAPI symbol. One of the properties (`symbol_exchange`, `symbol_coinapi`) is required to identify the market for the order. */
  @Alias('symbol_coinapi', isNullable: false,  )
  final String symbolCoinapi;
   /* Order quantity. */
  @Alias('amount_order', isNullable: false,  )
  final num amountOrder;
   /* Order price. */
  @Alias('price', isNullable: false,  )
  final num price;
  
  @Alias('side', isNullable: false,
          
             processor:  const OrdSideFieldProcessor(),
          
  )
  final OrdSide side;
  //enum sideEnum {  BUY,  SELL,  };
  @Alias('order_type', isNullable: false,
          
             processor:  const OrdTypeFieldProcessor(),
          
  )
  final OrdType orderType;
  //enum orderTypeEnum {  LIMIT,  };
  @Alias('time_in_force', isNullable: false,
          
             processor:  const TimeInForceFieldProcessor(),
          
  )
  final TimeInForce timeInForce;
  //enum timeInForceEnum {  GOOD_TILL_CANCEL,  GOOD_TILL_TIME_EXCHANGE,  GOOD_TILL_TIME_OMS,  FILL_OR_KILL,  IMMEDIATE_OR_CANCEL,  }; /* Expiration time. Conditionaly required for orders with time_in_force = `GOOD_TILL_TIME_EXCHANGE` or `GOOD_TILL_TIME_OEML`. */
  @Alias('expire_time', isNullable: false,  )
  final DateTime expireTime;
   /* Order execution instructions are documented in the separate section: <a href=\"#oeml-order-params-exec\">OEML / Starter Guide / Order parameters / Execution instructions</a> */
  @Alias('exec_inst', isNullable: false,
          
             processor:  const List<String>FieldProcessor(),
          
  )
  final List<String> execInst;
  //enum execInstEnum {  MAKER_OR_CANCEL,  AUCTION_ONLY,  INDICATION_OF_INTEREST,  }; /* Hash client id */
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
  

  ExecutionReport(
      

{
    
     this.exchangeId = null,  
     this.clientOrderId = null,   this.symbolExchange = null,  
     this.symbolCoinapi = null,  
    
     this.amountOrder = null,  
     this.price = null,  
     this.side = null,  
     this.orderType = null,  
     this.timeInForce = null,   this.expireTime = null,  
     this.execInst = const [],  
    
     this.clientOrderIdFormatExchange = null,   this.exchangeOrderId = null,  
    
     this.amountOpen = null,  
     this.amountFilled = null,  
     this.status = null,  
     this.timeOrder = const [],   this.errorMessage = null 
    
    }
  );

  @override
  String toString() {
    return 'ExecutionReport[exchangeId=$exchangeId, clientOrderId=$clientOrderId, symbolExchange=$symbolExchange, symbolCoinapi=$symbolCoinapi, amountOrder=$amountOrder, price=$price, side=$side, orderType=$orderType, timeInForce=$timeInForce, expireTime=$expireTime, execInst=$execInst, clientOrderIdFormatExchange=$clientOrderIdFormatExchange, exchangeOrderId=$exchangeOrderId, amountOpen=$amountOpen, amountFilled=$amountFilled, status=$status, timeOrder=$timeOrder, errorMessage=$errorMessage, ]';
  }
}

@GenSerializer(nullableFields: true)
class ExecutionReportSerializer extends Serializer<ExecutionReport> with _$ExecutionReportSerializer {

}

