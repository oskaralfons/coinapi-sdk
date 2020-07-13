part of openapi.api;

class CreateOrderValidationError {
  
  String type = null;
  
  String title = null;
  
  num status = null;
  
  String traceId = null;
  
  String errors = null;
  CreateOrderValidationError();

  @override
  String toString() {
    return 'CreateOrderValidationError[type=$type, title=$title, status=$status, traceId=$traceId, errors=$errors, ]';
  }

  CreateOrderValidationError.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    type = json['type'];
    title = json['title'];
    status = json['status'];
    traceId = json['traceId'];
    errors = json['errors'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (type != null)
      json['type'] = type;
    if (title != null)
      json['title'] = title;
    if (status != null)
      json['status'] = status;
    if (traceId != null)
      json['traceId'] = traceId;
    if (errors != null)
      json['errors'] = errors;
    return json;
  }

  static List<CreateOrderValidationError> listFromJson(List<dynamic> json) {
    return json == null ? List<CreateOrderValidationError>() : json.map((value) => CreateOrderValidationError.fromJson(value)).toList();
  }

  static Map<String, CreateOrderValidationError> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, CreateOrderValidationError>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = CreateOrderValidationError.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of CreateOrderValidationError-objects as value to a dart map
  static Map<String, List<CreateOrderValidationError>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<CreateOrderValidationError>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = CreateOrderValidationError.listFromJson(value);
       });
     }
     return map;
  }
}

