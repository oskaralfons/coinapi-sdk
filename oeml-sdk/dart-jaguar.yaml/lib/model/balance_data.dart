import 'package:jaguar_serializer/jaguar_serializer.dart';


part 'balance_data.jser.dart';

class BalanceData {
   /* Exchange identifier. */
  @Alias('id', isNullable: false,  )
  final String id;
   /* Exchange currency code. */
  @Alias('symbol_exchange', isNullable: false,  )
  final String symbolExchange;
   /* CoinAPI currency code. */
  @Alias('symbol_coinapi', isNullable: false,  )
  final String symbolCoinapi;
   /* Value of the current total currency balance on the exchange. */
  @Alias('balance', isNullable: false,  )
  final double balance;
   /* Value of the current available currency balance on the exchange that can be used as collateral. */
  @Alias('available', isNullable: false,  )
  final double available;
   /* Value of the current locked currency balance by the exchange. */
  @Alias('locked', isNullable: false,  )
  final double locked;
   /* Source of the last modification.  */
  @Alias('update_origin', isNullable: false,
          
  )
  final String updateOrigin;
  //enum updateOriginEnum {  INITIALIZATION,  BALANCE_MANAGER,  EXCHANGE,  };

  BalanceData(
      

{
     this.id = null,  
     this.symbolExchange = null,  
     this.symbolCoinapi = null,  
     this.balance = null,  
     this.available = null,  
     this.locked = null,  
     this.updateOrigin = null 
    
    }
  );

  @override
  String toString() {
    return 'BalanceData[id=$id, symbolExchange=$symbolExchange, symbolCoinapi=$symbolCoinapi, balance=$balance, available=$available, locked=$locked, updateOrigin=$updateOrigin, ]';
  }
}

@GenSerializer(nullableFields: true)
class BalanceDataSerializer extends Serializer<BalanceData> with _$BalanceDataSerializer {

}

