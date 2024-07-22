//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'base_create_completion_request_response_format.g.dart';

/// Allows to force the model to produce specific output format.  Setting to '{ \"type\": \"json_object\" }' enables JSON mode, which guarantees the message the model generates is valid JSON.  Optional JSON schema can be provided as 'response_format = {\"type\": \"json_object\", \"schema\": <json_schema>}'.  **Important:** when using JSON mode, it's crucial to also instruct the model to produce JSON via a system or user message. Without this, the model may generate an unending stream of whitespace until the generation reaches the token limit, resulting in a long-running and seemingly \"stuck\" request. Also note that the message content may be partially cut off if 'finish_reason=\"length\"', which indicates the generation exceeded 'max_tokens' or the conversation exceeded the max context length. In this case the return value might not be a valid JSON.
///
/// Properties:
/// * [type] - Must be one of 'text' or 'json_object'.
/// * [schema] - JSON schema according to https://json-schema.org/specification that can be provided if '\"type\": \"json_object\"'.  Most common fields like 'type', 'properties', 'items', 'required' and 'anyOf' are supported.  More sophisticated cases like 'oneOf' might not be covered.  Note: it's an OpenAI API extension.  Example: '{\"type\": \"object\", \"properties\": {\"foo\": {\"type\": \"string\"}, \"bar\": {\"type\": \"integer\"}}, \"required\": [\"foo\"]}'
@BuiltValue()
abstract class BaseCreateCompletionRequestResponseFormat
    implements
        Built<BaseCreateCompletionRequestResponseFormat,
            BaseCreateCompletionRequestResponseFormatBuilder> {
  /// Must be one of 'text' or 'json_object'.
  @BuiltValueField(wireName: r'type')
  BaseCreateCompletionRequestResponseFormatTypeEnum get type;
  // enum typeEnum {  text,  json_object,  };

  /// JSON schema according to https://json-schema.org/specification that can be provided if '\"type\": \"json_object\"'.  Most common fields like 'type', 'properties', 'items', 'required' and 'anyOf' are supported.  More sophisticated cases like 'oneOf' might not be covered.  Note: it's an OpenAI API extension.  Example: '{\"type\": \"object\", \"properties\": {\"foo\": {\"type\": \"string\"}, \"bar\": {\"type\": \"integer\"}}, \"required\": [\"foo\"]}'
  @BuiltValueField(wireName: r'schema')
  JsonObject? get schema;

  BaseCreateCompletionRequestResponseFormat._();

  factory BaseCreateCompletionRequestResponseFormat(
          [void updates(BaseCreateCompletionRequestResponseFormatBuilder b)]) =
      _$BaseCreateCompletionRequestResponseFormat;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BaseCreateCompletionRequestResponseFormatBuilder b) => b
    ..type = const BaseCreateCompletionRequestResponseFormatTypeEnum._('text');

  @BuiltValueSerializer(custom: true)
  static Serializer<BaseCreateCompletionRequestResponseFormat> get serializer =>
      _$BaseCreateCompletionRequestResponseFormatSerializer();
}

class _$BaseCreateCompletionRequestResponseFormatSerializer
    implements PrimitiveSerializer<BaseCreateCompletionRequestResponseFormat> {
  @override
  final Iterable<Type> types = const [
    BaseCreateCompletionRequestResponseFormat,
    _$BaseCreateCompletionRequestResponseFormat
  ];

  @override
  final String wireName = r'BaseCreateCompletionRequestResponseFormat';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BaseCreateCompletionRequestResponseFormat object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType:
          const FullType(BaseCreateCompletionRequestResponseFormatTypeEnum),
    );
    if (object.schema != null) {
      yield r'schema';
      yield serializers.serialize(
        object.schema,
        specifiedType: const FullType.nullable(JsonObject),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    BaseCreateCompletionRequestResponseFormat object, {
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
    required BaseCreateCompletionRequestResponseFormatBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(
                BaseCreateCompletionRequestResponseFormatTypeEnum),
          ) as BaseCreateCompletionRequestResponseFormatTypeEnum;
          result.type = valueDes;
          break;
        case r'schema':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(JsonObject),
          ) as JsonObject?;
          if (valueDes == null) continue;
          result.schema = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  BaseCreateCompletionRequestResponseFormat deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BaseCreateCompletionRequestResponseFormatBuilder();
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

class BaseCreateCompletionRequestResponseFormatTypeEnum extends EnumClass {
  /// Must be one of 'text' or 'json_object'.
  @BuiltValueEnumConst(wireName: r'text')
  static const BaseCreateCompletionRequestResponseFormatTypeEnum text =
      _$baseCreateCompletionRequestResponseFormatTypeEnum_text;

  /// Must be one of 'text' or 'json_object'.
  @BuiltValueEnumConst(wireName: r'json_object', fallback: true)
  static const BaseCreateCompletionRequestResponseFormatTypeEnum jsonObject =
      _$baseCreateCompletionRequestResponseFormatTypeEnum_jsonObject;

  static Serializer<BaseCreateCompletionRequestResponseFormatTypeEnum>
      get serializer =>
          _$baseCreateCompletionRequestResponseFormatTypeEnumSerializer;

  const BaseCreateCompletionRequestResponseFormatTypeEnum._(String name)
      : super(name);

  static BuiltSet<BaseCreateCompletionRequestResponseFormatTypeEnum>
      get values => _$baseCreateCompletionRequestResponseFormatTypeEnumValues;
  static BaseCreateCompletionRequestResponseFormatTypeEnum valueOf(
          String name) =>
      _$baseCreateCompletionRequestResponseFormatTypeEnumValueOf(name);
}
