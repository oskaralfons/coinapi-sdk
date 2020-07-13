part of openapi.api;

class Orders {
  /* Constant value `snapshotOrders`. */
  String type = null;
  /* Exchange identifier. */
  String exchangeId = null;
  /* Orders array */
  List<OrdersData> data = [];
  Orders();

  @override
  String toString() {
    return 'Orders[type=$type, exchangeId=$exchangeId, data=$data, ]';
  }

  Orders.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    type = json['type'];
    exchangeId = json['exchange_id'];
    data = (json['data'] == null) ?
      null :
      OrdersData.listFromJson(json['data']);
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (type != null)
      json['type'] = type;
    if (exchangeId != null)
      json['exchange_id'] = exchangeId;
    if (data != null)
      json['data'] = data;
    return json;
  }

  static List<Orders> listFromJson(List<dynamic> json) {
    return json == null ? List<Orders>() : json.map((value) => Orders.fromJson(value)).toList();
  }

  static Map<String, Orders> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Orders>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Orders.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Orders-objects as value to a dart map
  static Map<String, List<Orders>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<Orders>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = Orders.listFromJson(value);
       });
     }
     return map;
  }
}

