        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'cancel_order_all_request.g.dart';

abstract class CancelOrderAllRequest implements Built<CancelOrderAllRequest, CancelOrderAllRequestBuilder> {

    /* Exchange identifier from which active orders should be canceled. */
        @nullable
    @BuiltValueField(wireName: r'exchange_id')
    String get exchangeId;

    // Boilerplate code needed to wire-up generated code
    CancelOrderAllRequest._();

    factory CancelOrderAllRequest([updates(CancelOrderAllRequestBuilder b)]) = _$CancelOrderAllRequest;
    static Serializer<CancelOrderAllRequest> get serializer => _$cancelOrderAllRequestSerializer;

}

