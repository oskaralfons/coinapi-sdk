part of openapi.api;

class OrderStatus {
  /// The underlying value of this enum member.
  final String value;

  const OrderStatus._internal(this.value);

  /// Order statuses and the lifecycle are documented in the separate section: &lt;a href&#x3D;\&quot;#oeml-order-lifecycle\&quot;&gt;OEML / Starter Guide / Order Lifecycle&lt;/a&gt; 
  static const OrderStatus rECEIVED_ = const OrderStatus._internal("RECEIVED");
  /// Order statuses and the lifecycle are documented in the separate section: &lt;a href&#x3D;\&quot;#oeml-order-lifecycle\&quot;&gt;OEML / Starter Guide / Order Lifecycle&lt;/a&gt; 
  static const OrderStatus rOUTING_ = const OrderStatus._internal("ROUTING");
  /// Order statuses and the lifecycle are documented in the separate section: &lt;a href&#x3D;\&quot;#oeml-order-lifecycle\&quot;&gt;OEML / Starter Guide / Order Lifecycle&lt;/a&gt; 
  static const OrderStatus rOUTED_ = const OrderStatus._internal("ROUTED");
  /// Order statuses and the lifecycle are documented in the separate section: &lt;a href&#x3D;\&quot;#oeml-order-lifecycle\&quot;&gt;OEML / Starter Guide / Order Lifecycle&lt;/a&gt; 
  static const OrderStatus nEW_ = const OrderStatus._internal("NEW");
  /// Order statuses and the lifecycle are documented in the separate section: &lt;a href&#x3D;\&quot;#oeml-order-lifecycle\&quot;&gt;OEML / Starter Guide / Order Lifecycle&lt;/a&gt; 
  static const OrderStatus pENDINGCANCEL_ = const OrderStatus._internal("PENDING_CANCEL");
  /// Order statuses and the lifecycle are documented in the separate section: &lt;a href&#x3D;\&quot;#oeml-order-lifecycle\&quot;&gt;OEML / Starter Guide / Order Lifecycle&lt;/a&gt; 
  static const OrderStatus pARTIALLYFILLED_ = const OrderStatus._internal("PARTIALLY_FILLED");
  /// Order statuses and the lifecycle are documented in the separate section: &lt;a href&#x3D;\&quot;#oeml-order-lifecycle\&quot;&gt;OEML / Starter Guide / Order Lifecycle&lt;/a&gt; 
  static const OrderStatus fILLED_ = const OrderStatus._internal("FILLED");
  /// Order statuses and the lifecycle are documented in the separate section: &lt;a href&#x3D;\&quot;#oeml-order-lifecycle\&quot;&gt;OEML / Starter Guide / Order Lifecycle&lt;/a&gt; 
  static const OrderStatus cANCELED_ = const OrderStatus._internal("CANCELED");
  /// Order statuses and the lifecycle are documented in the separate section: &lt;a href&#x3D;\&quot;#oeml-order-lifecycle\&quot;&gt;OEML / Starter Guide / Order Lifecycle&lt;/a&gt; 
  static const OrderStatus rEJECTED_ = const OrderStatus._internal("REJECTED");

  static OrderStatus fromJson(String value) {
    return new OrderStatusTypeTransformer().decode(value);
  }
  
  static List<OrderStatus> listFromJson(List<dynamic> json) {
    return json == null ? new List<OrderStatus>() : json.map((value) => OrderStatus.fromJson(value)).toList();
  }
}

class OrderStatusTypeTransformer {

  dynamic encode(OrderStatus data) {
    return data.value;
  }

  OrderStatus decode(dynamic data) {
    switch (data) {
      case "RECEIVED": return OrderStatus.rECEIVED_;
      case "ROUTING": return OrderStatus.rOUTING_;
      case "ROUTED": return OrderStatus.rOUTED_;
      case "NEW": return OrderStatus.nEW_;
      case "PENDING_CANCEL": return OrderStatus.pENDINGCANCEL_;
      case "PARTIALLY_FILLED": return OrderStatus.pARTIALLYFILLED_;
      case "FILLED": return OrderStatus.fILLED_;
      case "CANCELED": return OrderStatus.cANCELED_;
      case "REJECTED": return OrderStatus.rEJECTED_;
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

