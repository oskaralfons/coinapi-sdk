part of openapi.api;

class CancelOrderAllRequest {
  /* Identifier of the exchange from which active orders should be canceled. */
  String exchangeId = null;
  CancelOrderAllRequest();

  @override
  String toString() {
    return 'CancelOrderAllRequest[exchangeId=$exchangeId, ]';
  }

  CancelOrderAllRequest.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    exchangeId = json['exchange_id'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (exchangeId != null)
      json['exchange_id'] = exchangeId;
    return json;
  }

  static List<CancelOrderAllRequest> listFromJson(List<dynamic> json) {
    return json == null ? List<CancelOrderAllRequest>() : json.map((value) => CancelOrderAllRequest.fromJson(value)).toList();
  }

  static Map<String, CancelOrderAllRequest> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, CancelOrderAllRequest>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = CancelOrderAllRequest.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of CancelOrderAllRequest-objects as value to a dart map
  static Map<String, List<CancelOrderAllRequest>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<CancelOrderAllRequest>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = CancelOrderAllRequest.listFromJson(value);
       });
     }
     return map;
  }
}

