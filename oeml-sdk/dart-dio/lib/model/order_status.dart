        import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'order_status.g.dart';

class OrderStatus extends EnumClass {

  /// Order statuses and the lifecycle are documented in the separate section: &lt;a href&#x3D;\&quot;#oeml-order-lifecycle\&quot;&gt;OEML / Starter Guide / Order Lifecycle&lt;/a&gt; 
  @BuiltValueEnumConst(wireName: "RECEIVED")
  static const OrderStatus rECEIVED = _$rECEIVED;
  /// Order statuses and the lifecycle are documented in the separate section: &lt;a href&#x3D;\&quot;#oeml-order-lifecycle\&quot;&gt;OEML / Starter Guide / Order Lifecycle&lt;/a&gt; 
  @BuiltValueEnumConst(wireName: "ROUTING")
  static const OrderStatus rOUTING = _$rOUTING;
  /// Order statuses and the lifecycle are documented in the separate section: &lt;a href&#x3D;\&quot;#oeml-order-lifecycle\&quot;&gt;OEML / Starter Guide / Order Lifecycle&lt;/a&gt; 
  @BuiltValueEnumConst(wireName: "ROUTED")
  static const OrderStatus rOUTED = _$rOUTED;
  /// Order statuses and the lifecycle are documented in the separate section: &lt;a href&#x3D;\&quot;#oeml-order-lifecycle\&quot;&gt;OEML / Starter Guide / Order Lifecycle&lt;/a&gt; 
  @BuiltValueEnumConst(wireName: "NEW")
  static const OrderStatus nEW_ = _$nEW_;
  /// Order statuses and the lifecycle are documented in the separate section: &lt;a href&#x3D;\&quot;#oeml-order-lifecycle\&quot;&gt;OEML / Starter Guide / Order Lifecycle&lt;/a&gt; 
  @BuiltValueEnumConst(wireName: "PENDING_CANCEL")
  static const OrderStatus pENDINGCANCEL = _$pENDINGCANCEL;
  /// Order statuses and the lifecycle are documented in the separate section: &lt;a href&#x3D;\&quot;#oeml-order-lifecycle\&quot;&gt;OEML / Starter Guide / Order Lifecycle&lt;/a&gt; 
  @BuiltValueEnumConst(wireName: "PARTIALLY_FILLED")
  static const OrderStatus pARTIALLYFILLED = _$pARTIALLYFILLED;
  /// Order statuses and the lifecycle are documented in the separate section: &lt;a href&#x3D;\&quot;#oeml-order-lifecycle\&quot;&gt;OEML / Starter Guide / Order Lifecycle&lt;/a&gt; 
  @BuiltValueEnumConst(wireName: "FILLED")
  static const OrderStatus fILLED = _$fILLED;
  /// Order statuses and the lifecycle are documented in the separate section: &lt;a href&#x3D;\&quot;#oeml-order-lifecycle\&quot;&gt;OEML / Starter Guide / Order Lifecycle&lt;/a&gt; 
  @BuiltValueEnumConst(wireName: "CANCELED")
  static const OrderStatus cANCELED = _$cANCELED;
  /// Order statuses and the lifecycle are documented in the separate section: &lt;a href&#x3D;\&quot;#oeml-order-lifecycle\&quot;&gt;OEML / Starter Guide / Order Lifecycle&lt;/a&gt; 
  @BuiltValueEnumConst(wireName: "REJECTED")
  static const OrderStatus rEJECTED = _$rEJECTED;

  static Serializer<OrderStatus> get serializer => _$orderStatusSerializer;

  const OrderStatus._(String name): super(name);

  static BuiltSet<OrderStatus> get values => _$values;
  static OrderStatus valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class OrderStatusMixin = Object with _$OrderStatusMixin;

