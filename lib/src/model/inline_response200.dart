//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_response200.g.dart';

/// InlineResponse200
///
/// Properties:
/// * [id] - The `id` of a generation, typically used for async generations, that can be used to check the status of the generation or retrieve the result.
@BuiltValue()
abstract class InlineResponse200
    implements Built<InlineResponse200, InlineResponse200Builder> {
  /// The `id` of a generation, typically used for async generations, that can be used to check the status of the generation or retrieve the result.
  @BuiltValueField(wireName: r'id')
  String get id;

  InlineResponse200._();

  factory InlineResponse200([void updates(InlineResponse200Builder b)]) =
      _$InlineResponse200;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(InlineResponse200Builder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<InlineResponse200> get serializer =>
      _$InlineResponse200Serializer();
}

class _$InlineResponse200Serializer
    implements PrimitiveSerializer<InlineResponse200> {
  @override
  final Iterable<Type> types = const [InlineResponse200, _$InlineResponse200];

  @override
  final String wireName = r'InlineResponse200';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    InlineResponse200 object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    InlineResponse200 object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object,
            specifiedType: specifiedType)
        .toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required InlineResponse200Builder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  InlineResponse200 deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InlineResponse200Builder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}
