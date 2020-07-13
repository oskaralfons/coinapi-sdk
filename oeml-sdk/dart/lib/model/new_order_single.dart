part of openapi.api;

class NewOrderSingle {
  /* Exchange identifier. */
  String exchangeId = null;
  /* Unique identifier for the order assigned by the `OEML API` client. */
  String clientOrderId = null;
  /* Exchange symbol. One of the properties (`symbol_exchange`, `symbol_coinapi`) is required to identify the market for the order. */
  String symbolExchange = null;
  /* CoinAPI symbol. One of the properties (`symbol_exchange`, `symbol_coinapi`) is required to identify the market for the order. */
  String symbolCoinapi = null;
  /* Order quantity. */
  num amountOrder = null;
  /* Order price. */
  num price = null;
  
  OrdSide side = null;
  //enum sideEnum {  BUY,  SELL,  };{
  
  OrdType orderType = null;
  //enum orderTypeEnum {  LIMIT,  };{
  
  TimeInForce timeInForce = null;
  //enum timeInForceEnum {  GOOD_TILL_CANCEL,  GOOD_TILL_TIME_EXCHANGE,  GOOD_TILL_TIME_OMS,  FILL_OR_KILL,  IMMEDIATE_OR_CANCEL,  };{
  /* Expiration time. Conditionaly required for orders with time_in_force = `GOOD_TILL_TIME_EXCHANGE` or `GOOD_TILL_TIME_OEML`. */
  DateTime expireTime = null;
  /* Order execution instructions are documented in the separate section: <a href=\"#oeml-order-params-exec\">OEML / Starter Guide / Order parameters / Execution instructions</a> */
  List<String> execInst = [];
  //enum execInstEnum {  MAKER_OR_CANCEL,  AUCTION_ONLY,  INDICATION_OF_INTEREST,  };{
  NewOrderSingle();

  @override
  String toString() {
    return 'NewOrderSingle[exchangeId=$exchangeId, clientOrderId=$clientOrderId, symbolExchange=$symbolExchange, symbolCoinapi=$symbolCoinapi, amountOrder=$amountOrder, price=$price, side=$side, orderType=$orderType, timeInForce=$timeInForce, expireTime=$expireTime, execInst=$execInst, ]';
  }

  NewOrderSingle.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    exchangeId = json['exchange_id'];
    clientOrderId = json['client_order_id'];
    symbolExchange = json['symbol_exchange'];
    symbolCoinapi = json['symbol_coinapi'];
    amountOrder = json['amount_order'];
    price = json['price'];
    side = (json['side'] == null) ?
      null :
      OrdSide.fromJson(json['side']);
    orderType = (json['order_type'] == null) ?
      null :
      OrdType.fromJson(json['order_type']);
    timeInForce = (json['time_in_force'] == null) ?
      null :
      TimeInForce.fromJson(json['time_in_force']);
    expireTime = (json['expire_time'] == null) ?
      null :
      DateTime.fromJson(json['expire_time']);
    execInst = (json['exec_inst'] == null) ?
      null :
      (json['exec_inst'] as List).cast<String>();
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (exchangeId != null)
      json['exchange_id'] = exchangeId;
    if (clientOrderId != null)
      json['client_order_id'] = clientOrderId;
    if (symbolExchange != null)
      json['symbol_exchange'] = symbolExchange;
    if (symbolCoinapi != null)
      json['symbol_coinapi'] = symbolCoinapi;
    if (amountOrder != null)
      json['amount_order'] = amountOrder;
    if (price != null)
      json['price'] = price;
    if (side != null)
      json['side'] = side;
    if (orderType != null)
      json['order_type'] = orderType;
    if (timeInForce != null)
      json['time_in_force'] = timeInForce;
    if (expireTime != null)
      json['expire_time'] = expireTime;
    if (execInst != null)
      json['exec_inst'] = execInst;
    return json;
  }

  static List<NewOrderSingle> listFromJson(List<dynamic> json) {
    return json == null ? List<NewOrderSingle>() : json.map((value) => NewOrderSingle.fromJson(value)).toList();
  }

  static Map<String, NewOrderSingle> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, NewOrderSingle>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = NewOrderSingle.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of NewOrderSingle-objects as value to a dart map
  static Map<String, List<NewOrderSingle>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<NewOrderSingle>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = NewOrderSingle.listFromJson(value);
       });
     }
     return map;
  }
}

