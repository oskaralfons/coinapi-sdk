        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_order_validation_error.g.dart';

abstract class CreateOrderValidationError implements Built<CreateOrderValidationError, CreateOrderValidationErrorBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'type')
    String get type;
    
        @nullable
    @BuiltValueField(wireName: r'title')
    String get title;
    
        @nullable
    @BuiltValueField(wireName: r'status')
    num get status;
    
        @nullable
    @BuiltValueField(wireName: r'traceId')
    String get traceId;
    
        @nullable
    @BuiltValueField(wireName: r'errors')
    String get errors;

    // Boilerplate code needed to wire-up generated code
    CreateOrderValidationError._();

    factory CreateOrderValidationError([updates(CreateOrderValidationErrorBuilder b)]) = _$CreateOrderValidationError;
    static Serializer<CreateOrderValidationError> get serializer => _$createOrderValidationErrorSerializer;

}

