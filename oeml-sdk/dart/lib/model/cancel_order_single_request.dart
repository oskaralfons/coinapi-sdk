part of openapi.api;

class CancelOrderSingleRequest {
  /* Exchange identifier. */
  String exchangeId = null;
  /* The unique identifier of the order assigned by the exchange. */
  String exchangeOrderId = null;
  /* The unique identifier of the order assigned by the client. */
  String clientOrderId = null;
  CancelOrderSingleRequest();

  @override
  String toString() {
    return 'CancelOrderSingleRequest[exchangeId=$exchangeId, exchangeOrderId=$exchangeOrderId, clientOrderId=$clientOrderId, ]';
  }

  CancelOrderSingleRequest.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    exchangeId = json['exchange_id'];
    exchangeOrderId = json['exchange_order_id'];
    clientOrderId = json['client_order_id'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (exchangeId != null)
      json['exchange_id'] = exchangeId;
    if (exchangeOrderId != null)
      json['exchange_order_id'] = exchangeOrderId;
    if (clientOrderId != null)
      json['client_order_id'] = clientOrderId;
    return json;
  }

  static List<CancelOrderSingleRequest> listFromJson(List<dynamic> json) {
    return json == null ? List<CancelOrderSingleRequest>() : json.map((value) => CancelOrderSingleRequest.fromJson(value)).toList();
  }

  static Map<String, CancelOrderSingleRequest> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, CancelOrderSingleRequest>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = CancelOrderSingleRequest.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of CancelOrderSingleRequest-objects as value to a dart map
  static Map<String, List<CancelOrderSingleRequest>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<CancelOrderSingleRequest>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = CancelOrderSingleRequest.listFromJson(value);
       });
     }
     return map;
  }
}

