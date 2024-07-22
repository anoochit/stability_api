//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_response202.g.dart';

/// InlineResponse202
///
/// Properties:
/// * [id] - The `id` of a generation, typically used for async generations, that can be used to check the status of the generation or retrieve the result.
/// * [status] - The status of your generation.
@BuiltValue()
abstract class InlineResponse202
    implements Built<InlineResponse202, InlineResponse202Builder> {
  /// The `id` of a generation, typically used for async generations, that can be used to check the status of the generation or retrieve the result.
  @BuiltValueField(wireName: r'id')
  String get id;

  /// The status of your generation.
  @BuiltValueField(wireName: r'status')
  InlineResponse202StatusEnum get status;
  // enum statusEnum {  in-progress,  };

  InlineResponse202._();

  factory InlineResponse202([void updates(InlineResponse202Builder b)]) =
      _$InlineResponse202;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(InlineResponse202Builder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<InlineResponse202> get serializer =>
      _$InlineResponse202Serializer();
}

class _$InlineResponse202Serializer
    implements PrimitiveSerializer<InlineResponse202> {
  @override
  final Iterable<Type> types = const [InlineResponse202, _$InlineResponse202];

  @override
  final String wireName = r'InlineResponse202';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    InlineResponse202 object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(InlineResponse202StatusEnum),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    InlineResponse202 object, {
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
    required InlineResponse202Builder result,
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
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(InlineResponse202StatusEnum),
          ) as InlineResponse202StatusEnum;
          result.status = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  InlineResponse202 deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InlineResponse202Builder();
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

class InlineResponse202StatusEnum extends EnumClass {
  /// The status of your generation.
  @BuiltValueEnumConst(wireName: r'in-progress', fallback: true)
  static const InlineResponse202StatusEnum inProgress =
      _$inlineResponse202StatusEnum_inProgress;

  static Serializer<InlineResponse202StatusEnum> get serializer =>
      _$inlineResponse202StatusEnumSerializer;

  const InlineResponse202StatusEnum._(String name) : super(name);

  static BuiltSet<InlineResponse202StatusEnum> get values =>
      _$inlineResponse202StatusEnumValues;
  static InlineResponse202StatusEnum valueOf(String name) =>
      _$inlineResponse202StatusEnumValueOf(name);
}
