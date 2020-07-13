library serializers;

import 'package:built_value/iso_8601_date_time_serializer.dart';
import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/standard_json_plugin.dart';

import 'package:openapi/model/balance.dart';
import 'package:openapi/model/balance_data.dart';
import 'package:openapi/model/create_order_validation_error.dart';
import 'package:openapi/model/execution_report.dart';
import 'package:openapi/model/message.dart';
import 'package:openapi/model/new_order.dart';
import 'package:openapi/model/ord_status.dart';
import 'package:openapi/model/order.dart';
import 'package:openapi/model/order_cancel_all_request.dart';
import 'package:openapi/model/order_cancel_single_request.dart';
import 'package:openapi/model/order_data.dart';
import 'package:openapi/model/position.dart';
import 'package:openapi/model/position_data.dart';
import 'package:openapi/model/severity.dart';
import 'package:openapi/model/time_in_force.dart';


part 'serializers.g.dart';

@SerializersFor(const [
Balance,
BalanceData,
CreateOrderValidationError,
ExecutionReport,
Message,
NewOrder,
OrdStatus,
Order,
OrderCancelAllRequest,
OrderCancelSingleRequest,
OrderData,
Position,
PositionData,
Severity,
TimeInForce,

])

//allow all models to be serialized within a list
Serializers serializers = (_$serializers.toBuilder()
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(Balance)]),
() => new ListBuilder<Balance>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(BalanceData)]),
() => new ListBuilder<BalanceData>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(CreateOrderValidationError)]),
() => new ListBuilder<CreateOrderValidationError>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(ExecutionReport)]),
() => new ListBuilder<ExecutionReport>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(Message)]),
() => new ListBuilder<Message>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(NewOrder)]),
() => new ListBuilder<NewOrder>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(OrdStatus)]),
() => new ListBuilder<OrdStatus>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(Order)]),
() => new ListBuilder<Order>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(OrderCancelAllRequest)]),
() => new ListBuilder<OrderCancelAllRequest>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(OrderCancelSingleRequest)]),
() => new ListBuilder<OrderCancelSingleRequest>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(OrderData)]),
() => new ListBuilder<OrderData>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(Position)]),
() => new ListBuilder<Position>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(PositionData)]),
() => new ListBuilder<PositionData>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(Severity)]),
() => new ListBuilder<Severity>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(TimeInForce)]),
() => new ListBuilder<TimeInForce>())

..add(Iso8601DateTimeSerializer())
).build();

Serializers standardSerializers =
(serializers.toBuilder()
..addPlugin(StandardJsonPlugin())).build();
