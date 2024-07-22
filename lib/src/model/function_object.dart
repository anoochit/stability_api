//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:stability_api/src/model/function_parameters.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'function_object.g.dart';

/// FunctionObject
///
/// Properties:
/// * [name] - The name of the function to be called. Must be a-z, A-Z, 0-9, or contain underscores and dashes, with a maximum length of 64.
/// * [parameters]
/// * [description] - A description of what the function does, used by the model to choose when and how to call the function.
@BuiltValue()
abstract class FunctionObject
    implements Built<FunctionObject, FunctionObjectBuilder> {
  /// The name of the function to be called. Must be a-z, A-Z, 0-9, or contain underscores and dashes, with a maximum length of 64.
  @BuiltValueField(wireName: r'name')
  String get name;

  @BuiltValueField(wireName: r'parameters')
  FunctionParameters get parameters;

  /// A description of what the function does, used by the model to choose when and how to call the function.
  @BuiltValueField(wireName: r'description')
  String? get description;

  FunctionObject._();

  factory FunctionObject([void updates(FunctionObjectBuilder b)]) =
      _$FunctionObject;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FunctionObjectBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<FunctionObject> get serializer =>
      _$FunctionObjectSerializer();
}

class _$FunctionObjectSerializer
    implements PrimitiveSerializer<FunctionObject> {
  @override
  final Iterable<Type> types = const [FunctionObject, _$FunctionObject];

  @override
  final String wireName = r'FunctionObject';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    FunctionObject object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    yield r'parameters';
    yield serializers.serialize(
      object.parameters,
      specifiedType: const FullType(FunctionParameters),
    );
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
    FunctionObject object, {
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
    required FunctionObjectBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'parameters':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(FunctionParameters),
          ) as FunctionParameters;
          result.parameters.replace(valueDes);
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
  FunctionObject deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FunctionObjectBuilder();
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
