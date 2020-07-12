import 'package:jaguar_serializer/jaguar_serializer.dart';



class OrderStatus {
  /// The underlying value of this enum member.
  final String value;

  const OrderStatus._internal(this.value);

  /// Order statuses and the lifecycle are documented in the separate section: https://docs.coinapi.io/#oeml-order-lifecycle 
  static const OrderStatus rECEIVED_ = const OrderStatus._internal("RECEIVED");
  /// Order statuses and the lifecycle are documented in the separate section: https://docs.coinapi.io/#oeml-order-lifecycle 
  static const OrderStatus rOUTING_ = const OrderStatus._internal("ROUTING");
  /// Order statuses and the lifecycle are documented in the separate section: https://docs.coinapi.io/#oeml-order-lifecycle 
  static const OrderStatus rOUTED_ = const OrderStatus._internal("ROUTED");
  /// Order statuses and the lifecycle are documented in the separate section: https://docs.coinapi.io/#oeml-order-lifecycle 
  static const OrderStatus nEW_ = const OrderStatus._internal("NEW");
  /// Order statuses and the lifecycle are documented in the separate section: https://docs.coinapi.io/#oeml-order-lifecycle 
  static const OrderStatus pENDINGCANCEL_ = const OrderStatus._internal("PENDING_CANCEL");
  /// Order statuses and the lifecycle are documented in the separate section: https://docs.coinapi.io/#oeml-order-lifecycle 
  static const OrderStatus pARTIALLYFILLED_ = const OrderStatus._internal("PARTIALLY_FILLED");
  /// Order statuses and the lifecycle are documented in the separate section: https://docs.coinapi.io/#oeml-order-lifecycle 
  static const OrderStatus fILLED_ = const OrderStatus._internal("FILLED");
  /// Order statuses and the lifecycle are documented in the separate section: https://docs.coinapi.io/#oeml-order-lifecycle 
  static const OrderStatus cANCELED_ = const OrderStatus._internal("CANCELED");
  /// Order statuses and the lifecycle are documented in the separate section: https://docs.coinapi.io/#oeml-order-lifecycle 
  static const OrderStatus rEJECTED_ = const OrderStatus._internal("REJECTED");
}

class OrderStatusFieldProcessor implements FieldProcessor<OrderStatus, String> {
    const OrderStatusFieldProcessor();

    OrderStatus deserialize(String data) {
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

    String serialize(OrderStatus item) {
        return item.value;
    }
}

