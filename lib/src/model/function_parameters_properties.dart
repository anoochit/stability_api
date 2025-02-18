//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'function_parameters_properties.g.dart';

/// FunctionParametersProperties
///
/// Properties:
/// * [type] - The type of the property
/// * [description] - A description of the property
@BuiltValue()
abstract class FunctionParametersProperties
    implements
        Built<FunctionParametersProperties,
            FunctionParametersPropertiesBuilder> {
  /// The type of the property
  @BuiltValueField(wireName: r'type')
  String? get type;

  /// A description of the property
  @BuiltValueField(wireName: r'description')
  String? get description;

  FunctionParametersProperties._();

  factory FunctionParametersProperties(
          [void updates(FunctionParametersPropertiesBuilder b)]) =
      _$FunctionParametersProperties;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FunctionParametersPropertiesBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<FunctionParametersProperties> get serializer =>
      _$FunctionParametersPropertiesSerializer();
}

class _$FunctionParametersPropertiesSerializer
    implements PrimitiveSerializer<FunctionParametersProperties> {
  @override
  final Iterable<Type> types = const [
    FunctionParametersProperties,
    _$FunctionParametersProperties
  ];

  @override
  final String wireName = r'FunctionParametersProperties';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    FunctionParametersProperties object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType(String),
      );
    }
    if (object.description != null) {
      yield r'description';
      yield serializers.serialize(
        object.description,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    FunctionParametersProperties object, {
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
    required FunctionParametersPropertiesBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.type = valueDes;
          break;
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.description = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  FunctionParametersProperties deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FunctionParametersPropertiesBuilder();
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
