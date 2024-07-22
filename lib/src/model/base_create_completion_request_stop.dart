//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'dart:core';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/one_of.dart';

part 'base_create_completion_request_stop.g.dart';

/// Up to 4 sequences where the API will stop generating further tokens. The returned text will contain the stop sequence.
@BuiltValue()
abstract class BaseCreateCompletionRequestStop
    implements
        Built<BaseCreateCompletionRequestStop,
            BaseCreateCompletionRequestStopBuilder> {
  /// One Of [BuiltList<String>], [String]
  OneOf get oneOf;

  BaseCreateCompletionRequestStop._();

  factory BaseCreateCompletionRequestStop(
          [void updates(BaseCreateCompletionRequestStopBuilder b)]) =
      _$BaseCreateCompletionRequestStop;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BaseCreateCompletionRequestStopBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<BaseCreateCompletionRequestStop> get serializer =>
      _$BaseCreateCompletionRequestStopSerializer();
}

class _$BaseCreateCompletionRequestStopSerializer
    implements PrimitiveSerializer<BaseCreateCompletionRequestStop> {
  @override
  final Iterable<Type> types = const [
    BaseCreateCompletionRequestStop,
    _$BaseCreateCompletionRequestStop
  ];

  @override
  final String wireName = r'BaseCreateCompletionRequestStop';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BaseCreateCompletionRequestStop object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {}

  @override
  Object serialize(
    Serializers serializers,
    BaseCreateCompletionRequestStop object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final oneOf = object.oneOf;
    return serializers.serialize(oneOf.value,
        specifiedType: FullType(oneOf.valueType))!;
  }

  @override
  BaseCreateCompletionRequestStop deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BaseCreateCompletionRequestStopBuilder();
    Object? oneOfDataSrc;
    final targetType = const FullType(OneOf, [
      FullType.nullable(String),
      FullType(BuiltList, [FullType(String)]),
    ]);
    oneOfDataSrc = serialized;
    result.oneOf = serializers.deserialize(oneOfDataSrc,
        specifiedType: targetType) as OneOf;
    return result.build();
  }
}
