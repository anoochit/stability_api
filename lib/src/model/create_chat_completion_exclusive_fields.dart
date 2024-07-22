//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:stability_api/src/model/chat_completion_request_message.dart';
import 'package:built_collection/built_collection.dart';
import 'package:stability_api/src/model/chat_completion_tool.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_chat_completion_exclusive_fields.g.dart';

/// CreateChatCompletionExclusiveFields
///
/// Properties:
/// * [model] - The name of the model to use.
/// * [messages] - A list of messages comprising the conversation so far.
/// * [tools] - A list of tools the model may call. Currently, only functions are supported as a tool. Use this to provide a list of functions the model may generate JSON inputs for.
/// * [maxTokens] - The maximum number of tokens to generate in the completion.  If the token count of your prompt (previous messages) plus 'max_tokens' exceed the model's context length, the behavior is depends on 'context_length_exceeded_behavior'. By default, 'max_tokens' will be lowered to fit in the context window instead of returning an error.
/// * [promptTruncateLen] - The size to which to truncate chat prompts. Earlier user/assistant messages will be evicted to fit the prompt into this length.  This should usually be set to a number << the max context size of the model, to allow enough remaining tokens for generating a response.  If omitted, you may receive \"prompt too long\" errors in your responses as conversations grow. Note that even with this set, you may still receive \"prompt too long\" errors if individual messages are too long for the model context window.
@BuiltValue(instantiable: false)
abstract class CreateChatCompletionExclusiveFields {
  /// The name of the model to use.
  @BuiltValueField(wireName: r'model')
  CreateChatCompletionExclusiveFieldsModelEnum get model;
  // enum modelEnum {  stablelm-2-12b,  stablelm-2-zephyr-2b,  };

  /// A list of messages comprising the conversation so far.
  @BuiltValueField(wireName: r'messages')
  BuiltList<ChatCompletionRequestMessage> get messages;

  /// A list of tools the model may call. Currently, only functions are supported as a tool. Use this to provide a list of functions the model may generate JSON inputs for.
  @BuiltValueField(wireName: r'tools')
  BuiltList<ChatCompletionTool>? get tools;

  /// The maximum number of tokens to generate in the completion.  If the token count of your prompt (previous messages) plus 'max_tokens' exceed the model's context length, the behavior is depends on 'context_length_exceeded_behavior'. By default, 'max_tokens' will be lowered to fit in the context window instead of returning an error.
  @BuiltValueField(wireName: r'max_tokens')
  int? get maxTokens;

  /// The size to which to truncate chat prompts. Earlier user/assistant messages will be evicted to fit the prompt into this length.  This should usually be set to a number << the max context size of the model, to allow enough remaining tokens for generating a response.  If omitted, you may receive \"prompt too long\" errors in your responses as conversations grow. Note that even with this set, you may still receive \"prompt too long\" errors if individual messages are too long for the model context window.
  @BuiltValueField(wireName: r'prompt_truncate_len')
  int? get promptTruncateLen;

  @BuiltValueSerializer(custom: true)
  static Serializer<CreateChatCompletionExclusiveFields> get serializer =>
      _$CreateChatCompletionExclusiveFieldsSerializer();
}

class _$CreateChatCompletionExclusiveFieldsSerializer
    implements PrimitiveSerializer<CreateChatCompletionExclusiveFields> {
  @override
  final Iterable<Type> types = const [CreateChatCompletionExclusiveFields];

  @override
  final String wireName = r'CreateChatCompletionExclusiveFields';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CreateChatCompletionExclusiveFields object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'model';
    yield serializers.serialize(
      object.model,
      specifiedType:
          const FullType(CreateChatCompletionExclusiveFieldsModelEnum),
    );
    yield r'messages';
    yield serializers.serialize(
      object.messages,
      specifiedType:
          const FullType(BuiltList, [FullType(ChatCompletionRequestMessage)]),
    );
    if (object.tools != null) {
      yield r'tools';
      yield serializers.serialize(
        object.tools,
        specifiedType:
            const FullType(BuiltList, [FullType(ChatCompletionTool)]),
      );
    }
    if (object.maxTokens != null) {
      yield r'max_tokens';
      yield serializers.serialize(
        object.maxTokens,
        specifiedType: const FullType(int),
      );
    }
    if (object.promptTruncateLen != null) {
      yield r'prompt_truncate_len';
      yield serializers.serialize(
        object.promptTruncateLen,
        specifiedType: const FullType.nullable(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CreateChatCompletionExclusiveFields object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object,
            specifiedType: specifiedType)
        .toList();
  }

  @override
  CreateChatCompletionExclusiveFields deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.deserialize(serialized,
            specifiedType: FullType($CreateChatCompletionExclusiveFields))
        as $CreateChatCompletionExclusiveFields;
  }
}

/// a concrete implementation of [CreateChatCompletionExclusiveFields], since [CreateChatCompletionExclusiveFields] is not instantiable
@BuiltValue(instantiable: true)
abstract class $CreateChatCompletionExclusiveFields
    implements
        CreateChatCompletionExclusiveFields,
        Built<$CreateChatCompletionExclusiveFields,
            $CreateChatCompletionExclusiveFieldsBuilder> {
  $CreateChatCompletionExclusiveFields._();

  factory $CreateChatCompletionExclusiveFields(
      [void Function($CreateChatCompletionExclusiveFieldsBuilder)?
          updates]) = _$$CreateChatCompletionExclusiveFields;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults($CreateChatCompletionExclusiveFieldsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<$CreateChatCompletionExclusiveFields> get serializer =>
      _$$CreateChatCompletionExclusiveFieldsSerializer();
}

class _$$CreateChatCompletionExclusiveFieldsSerializer
    implements PrimitiveSerializer<$CreateChatCompletionExclusiveFields> {
  @override
  final Iterable<Type> types = const [
    $CreateChatCompletionExclusiveFields,
    _$$CreateChatCompletionExclusiveFields
  ];

  @override
  final String wireName = r'$CreateChatCompletionExclusiveFields';

  @override
  Object serialize(
    Serializers serializers,
    $CreateChatCompletionExclusiveFields object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.serialize(object,
        specifiedType: FullType(CreateChatCompletionExclusiveFields))!;
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CreateChatCompletionExclusiveFieldsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'model':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(CreateChatCompletionExclusiveFieldsModelEnum),
          ) as CreateChatCompletionExclusiveFieldsModelEnum;
          result.model = valueDes;
          break;
        case r'messages':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(
                BuiltList, [FullType(ChatCompletionRequestMessage)]),
          ) as BuiltList<ChatCompletionRequestMessage>;
          result.messages.replace(valueDes);
          break;
        case r'tools':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(BuiltList, [FullType(ChatCompletionTool)]),
          ) as BuiltList<ChatCompletionTool>;
          result.tools.replace(valueDes);
          break;
        case r'max_tokens':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.maxTokens = valueDes;
          break;
        case r'prompt_truncate_len':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.promptTruncateLen = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  $CreateChatCompletionExclusiveFields deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = $CreateChatCompletionExclusiveFieldsBuilder();
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

class CreateChatCompletionExclusiveFieldsModelEnum extends EnumClass {
  /// The name of the model to use.
  @BuiltValueEnumConst(wireName: r'stablelm-2-12b')
  static const CreateChatCompletionExclusiveFieldsModelEnum n12b =
      _$createChatCompletionExclusiveFieldsModelEnum_n12b;

  /// The name of the model to use.
  @BuiltValueEnumConst(wireName: r'stablelm-2-zephyr-2b', fallback: true)
  static const CreateChatCompletionExclusiveFieldsModelEnum zephyr2b =
      _$createChatCompletionExclusiveFieldsModelEnum_zephyr2b;

  static Serializer<CreateChatCompletionExclusiveFieldsModelEnum>
      get serializer =>
          _$createChatCompletionExclusiveFieldsModelEnumSerializer;

  const CreateChatCompletionExclusiveFieldsModelEnum._(String name)
      : super(name);

  static BuiltSet<CreateChatCompletionExclusiveFieldsModelEnum> get values =>
      _$createChatCompletionExclusiveFieldsModelEnumValues;
  static CreateChatCompletionExclusiveFieldsModelEnum valueOf(String name) =>
      _$createChatCompletionExclusiveFieldsModelEnumValueOf(name);
}
