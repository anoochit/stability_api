//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:stability_api/src/model/base_create_completion_request.dart';
import 'package:stability_api/src/model/chat_completion_request_message.dart';
import 'package:built_collection/built_collection.dart';
import 'package:stability_api/src/model/base_create_completion_request_response_format.dart';
import 'package:stability_api/src/model/base_create_completion_request_stop.dart';
import 'package:stability_api/src/model/create_chat_completion_exclusive_fields.dart';
import 'package:stability_api/src/model/chat_completion_tool.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'chat_completions_body.g.dart';

/// ChatCompletionsBody
///
/// Properties:
/// * [model]
/// * [messages] - A list of messages comprising the conversation so far.
/// * [tools] - A list of tools the model may call. Currently, only functions are supported as a tool. Use this to provide a list of functions the model may generate JSON inputs for.
/// * [maxTokens] - The maximum number of tokens to generate in the completion.  If the token count of your prompt (previous messages) plus 'max_tokens' exceed the model's context length, the behavior is depends on 'context_length_exceeded_behavior'. By default, 'max_tokens' will be lowered to fit in the context window instead of returning an error.
/// * [promptTruncateLen] - The size to which to truncate chat prompts. Earlier user/assistant messages will be evicted to fit the prompt into this length.  This should usually be set to a number << the max context size of the model, to allow enough remaining tokens for generating a response.  If omitted, you may receive \"prompt too long\" errors in your responses as conversations grow. Note that even with this set, you may still receive \"prompt too long\" errors if individual messages are too long for the model context window.
/// * [temperature] - What sampling temperature to use, between 0 and 2. Higher values like 0.8 will make the output more random, while lower values like 0.2 will make it more focused and deterministic.  We generally recommend altering this or 'top_p' but not both.
/// * [topP] - An alternative to sampling with temperature, called nucleus sampling, where the model considers the results of the tokens with top_p probability mass. So 0.1 means only the tokens comprising the top 10% probability mass are considered.  We generally recommend altering this or 'temperature' but not both.
/// * [topK] - Top-k sampling is another sampling method where the k most probable next tokens are filtered and the probability mass is redistributed among only those k next tokens. The value of k controls the number of candidates for the next token at each step during text generation.
/// * [frequencyPenalty] - Number between -2.0 and 2.0. Positive values penalize new tokens based on their existing frequency in the text so far, decreasing the model's likelihood to repeat the same line verbatim.  Reasonable value is around 0.1 to 1 if the aim is to just reduce repetitive samples somewhat. If the aim is to strongly suppress repetition, then one can increase the coefficients up to 2, but this can noticeably degrade the quality of samples. Negative values can be used to increase the likelihood of repetition.  See also 'presence_penalty' for penalizing tokens that have at least one appearance at a fixed rate.
/// * [presencePenalty] - Number between -2.0 and 2.0. Positive values penalize new tokens based on whether they appear in the text so far, increasing the model's likelihood to talk about new topics.  Reasonable value is around 0.1 to 1 if the aim is to just reduce repetitive samples somewhat. If the aim is to strongly suppress repetition, then one can increase the coefficients up to 2, but this can noticeably degrade the quality of samples. Negative values can be used to increase the likelihood of repetition.  See also 'frequency_penalty' for penalizing tokens at an increasing rate depending on how often they appear.
/// * [n] - How many completions to generate for each prompt.  **Note:** Because this parameter generates many completions, it can quickly consume your token quota. Use carefully and ensure that you have reasonable settings for 'max_tokens' and 'stop'.
/// * [stop]
/// * [responseFormat]
/// * [stream] - Whether to stream back partial progress. If set, tokens will be sent as data-only [server-sent events](https://developer.mozilla.org/en-US/docs/Web/API/Server-sent_events/Using_server-sent_events#Event_stream_format) as they become available, with the stream terminated by a 'data: [DONE]' message.
/// * [contextLengthExceededBehavior] - What to do if the token count of prompt plus 'max_tokens' exceeds the model's context window.  Passing 'truncate' limits the 'max_tokens' to at most 'context_window_length - prompt_length'. This is the default.  Passing 'error' would trigger a request error.  The default of 'truncate' is selected as it allows to ask for high 'max_tokens' value while respecting the context window length without having to do client-side prompt tokenization.  Note, that it differs from OpenAI's behavior that matches that of 'error'.
/// * [user] - A unique identifier representing your end-user, which can help monitor and detect abuse
@BuiltValue()
abstract class ChatCompletionsBody
    implements
        BaseCreateCompletionRequest,
        CreateChatCompletionExclusiveFields,
        Built<ChatCompletionsBody, ChatCompletionsBodyBuilder> {
  ChatCompletionsBody._();

  factory ChatCompletionsBody([void updates(ChatCompletionsBodyBuilder b)]) =
      _$ChatCompletionsBody;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ChatCompletionsBodyBuilder b) => b
    ..topP = 1
    ..n = 1
    ..presencePenalty = 0
    ..stream = false
    ..temperature = 1
    ..maxTokens = 200
    ..promptTruncateLen = 1500
    ..frequencyPenalty = 0;

  @BuiltValueSerializer(custom: true)
  static Serializer<ChatCompletionsBody> get serializer =>
      _$ChatCompletionsBodySerializer();
}

class _$ChatCompletionsBodySerializer
    implements PrimitiveSerializer<ChatCompletionsBody> {
  @override
  final Iterable<Type> types = const [
    ChatCompletionsBody,
    _$ChatCompletionsBody
  ];

  @override
  final String wireName = r'ChatCompletionsBody';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ChatCompletionsBody object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.topK != null) {
      yield r'top_k';
      yield serializers.serialize(
        object.topK,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.responseFormat != null) {
      yield r'response_format';
      yield serializers.serialize(
        object.responseFormat,
        specifiedType:
            const FullType.nullable(BaseCreateCompletionRequestResponseFormat),
      );
    }
    if (object.topP != null) {
      yield r'top_p';
      yield serializers.serialize(
        object.topP,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.tools != null) {
      yield r'tools';
      yield serializers.serialize(
        object.tools,
        specifiedType:
            const FullType(BuiltList, [FullType(ChatCompletionTool)]),
      );
    }
    if (object.n != null) {
      yield r'n';
      yield serializers.serialize(
        object.n,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.presencePenalty != null) {
      yield r'presence_penalty';
      yield serializers.serialize(
        object.presencePenalty,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.stop != null) {
      yield r'stop';
      yield serializers.serialize(
        object.stop,
        specifiedType: const FullType(BaseCreateCompletionRequestStop),
      );
    }
    if (object.stream != null) {
      yield r'stream';
      yield serializers.serialize(
        object.stream,
        specifiedType: const FullType.nullable(bool),
      );
    }
    if (object.temperature != null) {
      yield r'temperature';
      yield serializers.serialize(
        object.temperature,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.maxTokens != null) {
      yield r'max_tokens';
      yield serializers.serialize(
        object.maxTokens,
        specifiedType: const FullType(int),
      );
    }
    yield r'messages';
    yield serializers.serialize(
      object.messages,
      specifiedType:
          const FullType(BuiltList, [FullType(ChatCompletionRequestMessage)]),
    );
    yield r'model';
    yield serializers.serialize(
      object.model,
      specifiedType:
          const FullType(CreateChatCompletionExclusiveFieldsModelEnum),
    );
    if (object.promptTruncateLen != null) {
      yield r'prompt_truncate_len';
      yield serializers.serialize(
        object.promptTruncateLen,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.frequencyPenalty != null) {
      yield r'frequency_penalty';
      yield serializers.serialize(
        object.frequencyPenalty,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.user != null) {
      yield r'user';
      yield serializers.serialize(
        object.user,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.contextLengthExceededBehavior != null) {
      yield r'context_length_exceeded_behavior';
      yield serializers.serialize(
        object.contextLengthExceededBehavior,
        specifiedType: const FullType(
            BaseCreateCompletionRequestContextLengthExceededBehaviorEnum),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ChatCompletionsBody object, {
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
    required ChatCompletionsBodyBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'top_k':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.topK = valueDes;
          break;
        case r'response_format':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                BaseCreateCompletionRequestResponseFormat),
          ) as BaseCreateCompletionRequestResponseFormat?;
          if (valueDes == null) continue;
          result.responseFormat.replace(valueDes);
          break;
        case r'top_p':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.topP = valueDes;
          break;
        case r'tools':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(BuiltList, [FullType(ChatCompletionTool)]),
          ) as BuiltList<ChatCompletionTool>;
          result.tools.replace(valueDes);
          break;
        case r'n':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.n = valueDes;
          break;
        case r'presence_penalty':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.presencePenalty = valueDes;
          break;
        case r'stop':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BaseCreateCompletionRequestStop),
          ) as BaseCreateCompletionRequestStop;
          result.stop.replace(valueDes);
          break;
        case r'stream':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.stream = valueDes;
          break;
        case r'temperature':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.temperature = valueDes;
          break;
        case r'max_tokens':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.maxTokens = valueDes;
          break;
        case r'messages':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(
                BuiltList, [FullType(ChatCompletionRequestMessage)]),
          ) as BuiltList<ChatCompletionRequestMessage>;
          result.messages.replace(valueDes);
          break;
        case r'model':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(CreateChatCompletionExclusiveFieldsModelEnum),
          ) as CreateChatCompletionExclusiveFieldsModelEnum;
          result.model = valueDes;
          break;
        case r'prompt_truncate_len':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.promptTruncateLen = valueDes;
          break;
        case r'frequency_penalty':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.frequencyPenalty = valueDes;
          break;
        case r'user':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.user = valueDes;
          break;
        case r'context_length_exceeded_behavior':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(
                BaseCreateCompletionRequestContextLengthExceededBehaviorEnum),
          ) as BaseCreateCompletionRequestContextLengthExceededBehaviorEnum;
          result.contextLengthExceededBehavior = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ChatCompletionsBody deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ChatCompletionsBodyBuilder();
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

class ChatCompletionsBodyModelEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'stablelm-2-12b')
  static const ChatCompletionsBodyModelEnum n12b =
      _$chatCompletionsBodyModelEnum_n12b;
  @BuiltValueEnumConst(wireName: r'stablelm-2-zephyr-2b', fallback: true)
  static const ChatCompletionsBodyModelEnum zephyr2b =
      _$chatCompletionsBodyModelEnum_zephyr2b;

  static Serializer<ChatCompletionsBodyModelEnum> get serializer =>
      _$chatCompletionsBodyModelEnumSerializer;

  const ChatCompletionsBodyModelEnum._(String name) : super(name);

  static BuiltSet<ChatCompletionsBodyModelEnum> get values =>
      _$chatCompletionsBodyModelEnumValues;
  static ChatCompletionsBodyModelEnum valueOf(String name) =>
      _$chatCompletionsBodyModelEnumValueOf(name);
}

class ChatCompletionsBodyContextLengthExceededBehaviorEnum extends EnumClass {
  /// What to do if the token count of prompt plus 'max_tokens' exceeds the model's context window.  Passing 'truncate' limits the 'max_tokens' to at most 'context_window_length - prompt_length'. This is the default.  Passing 'error' would trigger a request error.  The default of 'truncate' is selected as it allows to ask for high 'max_tokens' value while respecting the context window length without having to do client-side prompt tokenization.  Note, that it differs from OpenAI's behavior that matches that of 'error'.
  @BuiltValueEnumConst(wireName: r'truncate')
  static const ChatCompletionsBodyContextLengthExceededBehaviorEnum truncate =
      _$chatCompletionsBodyContextLengthExceededBehaviorEnum_truncate;

  /// What to do if the token count of prompt plus 'max_tokens' exceeds the model's context window.  Passing 'truncate' limits the 'max_tokens' to at most 'context_window_length - prompt_length'. This is the default.  Passing 'error' would trigger a request error.  The default of 'truncate' is selected as it allows to ask for high 'max_tokens' value while respecting the context window length without having to do client-side prompt tokenization.  Note, that it differs from OpenAI's behavior that matches that of 'error'.
  @BuiltValueEnumConst(wireName: r'error', fallback: true)
  static const ChatCompletionsBodyContextLengthExceededBehaviorEnum error =
      _$chatCompletionsBodyContextLengthExceededBehaviorEnum_error;

  static Serializer<ChatCompletionsBodyContextLengthExceededBehaviorEnum>
      get serializer =>
          _$chatCompletionsBodyContextLengthExceededBehaviorEnumSerializer;

  const ChatCompletionsBodyContextLengthExceededBehaviorEnum._(String name)
      : super(name);

  static BuiltSet<ChatCompletionsBodyContextLengthExceededBehaviorEnum>
      get values =>
          _$chatCompletionsBodyContextLengthExceededBehaviorEnumValues;
  static ChatCompletionsBodyContextLengthExceededBehaviorEnum valueOf(
          String name) =>
      _$chatCompletionsBodyContextLengthExceededBehaviorEnumValueOf(name);
}
