import 'package:jaguar_serializer/jaguar_serializer.dart';


import 'package:openapi/model/orders_data.dart';

part 'orders.jser.dart';

class Orders {
   /* Constant value `snapshotOrders`. */
  @Alias('type', isNullable: false,  )
  final String type;
   /* Exchange identifier. */
  @Alias('exchange_id', isNullable: false,  )
  final String exchangeId;
   /* Orders array */
  @Alias('data', isNullable: false,  )
  final List<OrdersData> data;
  

  Orders(
      

{
     this.type = null,  
     this.exchangeId = null,  
     this.data = const [] 
    
    }
  );

  @override
  String toString() {
    return 'Orders[type=$type, exchangeId=$exchangeId, data=$data, ]';
  }
}

@GenSerializer(nullableFields: true)
class OrdersSerializer extends Serializer<Orders> with _$OrdersSerializer {

}

