//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:stability_api/src/model/function_parameters_properties.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'function_parameters.g.dart';

/// The parameters the functions accepts, described as a JSON Schema object.   To describe a function that accepts no parameters, provide the value '{\"type\": \"object\", \"properties\": {}}'.
///
/// Properties:
/// * [type] - type of parameter
/// * [required_] - which one of the parameter is required
/// * [properties] - A map of property names to their types and descriptions. Each property is an object with 'type' and 'description' fields.
@BuiltValue()
abstract class FunctionParameters
    implements Built<FunctionParameters, FunctionParametersBuilder> {
  /// type of parameter
  @BuiltValueField(wireName: r'type')
  FunctionParametersTypeEnum? get type;
  // enum typeEnum {  object,  };

  /// which one of the parameter is required
  @BuiltValueField(wireName: r'required')
  BuiltList<String>? get required_;

  /// A map of property names to their types and descriptions. Each property is an object with 'type' and 'description' fields.
  @BuiltValueField(wireName: r'properties')
  BuiltMap<String, FunctionParametersProperties>? get properties;

  FunctionParameters._();

  factory FunctionParameters([void updates(FunctionParametersBuilder b)]) =
      _$FunctionParameters;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FunctionParametersBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<FunctionParameters> get serializer =>
      _$FunctionParametersSerializer();
}

class _$FunctionParametersSerializer
    implements PrimitiveSerializer<FunctionParameters> {
  @override
  final Iterable<Type> types = const [FunctionParameters, _$FunctionParameters];

  @override
  final String wireName = r'FunctionParameters';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    FunctionParameters object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType(FunctionParametersTypeEnum),
      );
    }
    if (object.required_ != null) {
      yield r'required';
      yield serializers.serialize(
        object.required_,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.properties != null) {
      yield r'properties';
      yield serializers.serialize(
        object.properties,
        specifiedType: const FullType(BuiltMap,
            [FullType(String), FullType(FunctionParametersProperties)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    FunctionParameters object, {
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
    required FunctionParametersBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(FunctionParametersTypeEnum),
          ) as FunctionParametersTypeEnum;
          result.type = valueDes;
          break;
        case r'required':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.required_.replace(valueDes);
          break;
        case r'properties':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltMap,
                [FullType(String), FullType(FunctionParametersProperties)]),
          ) as BuiltMap<String, FunctionParametersProperties>;
          result.properties.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  FunctionParameters deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FunctionParametersBuilder();
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

class FunctionParametersTypeEnum extends EnumClass {
  /// type of parameter
  @BuiltValueEnumConst(wireName: r'object', fallback: true)
  static const FunctionParametersTypeEnum object =
      _$functionParametersTypeEnum_object;

  static Serializer<FunctionParametersTypeEnum> get serializer =>
      _$functionParametersTypeEnumSerializer;

  const FunctionParametersTypeEnum._(String name) : super(name);

  static BuiltSet<FunctionParametersTypeEnum> get values =>
      _$functionParametersTypeEnumValues;
  static FunctionParametersTypeEnum valueOf(String name) =>
      _$functionParametersTypeEnumValueOf(name);
}
