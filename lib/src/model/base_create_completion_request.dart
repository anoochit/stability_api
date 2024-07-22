//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:stability_api/src/model/base_create_completion_request_response_format.dart';
import 'package:stability_api/src/model/base_create_completion_request_stop.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'base_create_completion_request.g.dart';

/// BaseCreateCompletionRequest
///
/// Properties:
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
@BuiltValue(instantiable: false)
abstract class BaseCreateCompletionRequest {
  /// What sampling temperature to use, between 0 and 2. Higher values like 0.8 will make the output more random, while lower values like 0.2 will make it more focused and deterministic.  We generally recommend altering this or 'top_p' but not both.
  @BuiltValueField(wireName: r'temperature')
  num? get temperature;

  /// An alternative to sampling with temperature, called nucleus sampling, where the model considers the results of the tokens with top_p probability mass. So 0.1 means only the tokens comprising the top 10% probability mass are considered.  We generally recommend altering this or 'temperature' but not both.
  @BuiltValueField(wireName: r'top_p')
  num? get topP;

  /// Top-k sampling is another sampling method where the k most probable next tokens are filtered and the probability mass is redistributed among only those k next tokens. The value of k controls the number of candidates for the next token at each step during text generation.
  @BuiltValueField(wireName: r'top_k')
  int? get topK;

  /// Number between -2.0 and 2.0. Positive values penalize new tokens based on their existing frequency in the text so far, decreasing the model's likelihood to repeat the same line verbatim.  Reasonable value is around 0.1 to 1 if the aim is to just reduce repetitive samples somewhat. If the aim is to strongly suppress repetition, then one can increase the coefficients up to 2, but this can noticeably degrade the quality of samples. Negative values can be used to increase the likelihood of repetition.  See also 'presence_penalty' for penalizing tokens that have at least one appearance at a fixed rate.
  @BuiltValueField(wireName: r'frequency_penalty')
  num? get frequencyPenalty;

  /// Number between -2.0 and 2.0. Positive values penalize new tokens based on whether they appear in the text so far, increasing the model's likelihood to talk about new topics.  Reasonable value is around 0.1 to 1 if the aim is to just reduce repetitive samples somewhat. If the aim is to strongly suppress repetition, then one can increase the coefficients up to 2, but this can noticeably degrade the quality of samples. Negative values can be used to increase the likelihood of repetition.  See also 'frequency_penalty' for penalizing tokens at an increasing rate depending on how often they appear.
  @BuiltValueField(wireName: r'presence_penalty')
  num? get presencePenalty;

  /// How many completions to generate for each prompt.  **Note:** Because this parameter generates many completions, it can quickly consume your token quota. Use carefully and ensure that you have reasonable settings for 'max_tokens' and 'stop'.
  @BuiltValueField(wireName: r'n')
  int? get n;

  @BuiltValueField(wireName: r'stop')
  BaseCreateCompletionRequestStop? get stop;

  @BuiltValueField(wireName: r'response_format')
  BaseCreateCompletionRequestResponseFormat? get responseFormat;

  /// Whether to stream back partial progress. If set, tokens will be sent as data-only [server-sent events](https://developer.mozilla.org/en-US/docs/Web/API/Server-sent_events/Using_server-sent_events#Event_stream_format) as they become available, with the stream terminated by a 'data: [DONE]' message.
  @BuiltValueField(wireName: r'stream')
  bool? get stream;

  /// What to do if the token count of prompt plus 'max_tokens' exceeds the model's context window.  Passing 'truncate' limits the 'max_tokens' to at most 'context_window_length - prompt_length'. This is the default.  Passing 'error' would trigger a request error.  The default of 'truncate' is selected as it allows to ask for high 'max_tokens' value while respecting the context window length without having to do client-side prompt tokenization.  Note, that it differs from OpenAI's behavior that matches that of 'error'.
  @BuiltValueField(wireName: r'context_length_exceeded_behavior')
  BaseCreateCompletionRequestContextLengthExceededBehaviorEnum?
      get contextLengthExceededBehavior;
  // enum contextLengthExceededBehaviorEnum {  truncate,  error,  };

  /// A unique identifier representing your end-user, which can help monitor and detect abuse
  @BuiltValueField(wireName: r'user')
  String? get user;

  @BuiltValueSerializer(custom: true)
  static Serializer<BaseCreateCompletionRequest> get serializer =>
      _$BaseCreateCompletionRequestSerializer();
}

class _$BaseCreateCompletionRequestSerializer
    implements PrimitiveSerializer<BaseCreateCompletionRequest> {
  @override
  final Iterable<Type> types = const [BaseCreateCompletionRequest];

  @override
  final String wireName = r'BaseCreateCompletionRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BaseCreateCompletionRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.temperature != null) {
      yield r'temperature';
      yield serializers.serialize(
        object.temperature,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.topP != null) {
      yield r'top_p';
      yield serializers.serialize(
        object.topP,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.topK != null) {
      yield r'top_k';
      yield serializers.serialize(
        object.topK,
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
    if (object.presencePenalty != null) {
      yield r'presence_penalty';
      yield serializers.serialize(
        object.presencePenalty,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.n != null) {
      yield r'n';
      yield serializers.serialize(
        object.n,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.stop != null) {
      yield r'stop';
      yield serializers.serialize(
        object.stop,
        specifiedType: const FullType(BaseCreateCompletionRequestStop),
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
    if (object.stream != null) {
      yield r'stream';
      yield serializers.serialize(
        object.stream,
        specifiedType: const FullType.nullable(bool),
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
    if (object.user != null) {
      yield r'user';
      yield serializers.serialize(
        object.user,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    BaseCreateCompletionRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object,
            specifiedType: specifiedType)
        .toList();
  }

  @override
  BaseCreateCompletionRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.deserialize(serialized,
            specifiedType: FullType($BaseCreateCompletionRequest))
        as $BaseCreateCompletionRequest;
  }
}

/// a concrete implementation of [BaseCreateCompletionRequest], since [BaseCreateCompletionRequest] is not instantiable
@BuiltValue(instantiable: true)
abstract class $BaseCreateCompletionRequest
    implements
        BaseCreateCompletionRequest,
        Built<$BaseCreateCompletionRequest,
            $BaseCreateCompletionRequestBuilder> {
  $BaseCreateCompletionRequest._();

  factory $BaseCreateCompletionRequest(
          [void Function($BaseCreateCompletionRequestBuilder)? updates]) =
      _$$BaseCreateCompletionRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults($BaseCreateCompletionRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<$BaseCreateCompletionRequest> get serializer =>
      _$$BaseCreateCompletionRequestSerializer();
}

class _$$BaseCreateCompletionRequestSerializer
    implements PrimitiveSerializer<$BaseCreateCompletionRequest> {
  @override
  final Iterable<Type> types = const [
    $BaseCreateCompletionRequest,
    _$$BaseCreateCompletionRequest
  ];

  @override
  final String wireName = r'$BaseCreateCompletionRequest';

  @override
  Object serialize(
    Serializers serializers,
    $BaseCreateCompletionRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.serialize(object,
        specifiedType: FullType(BaseCreateCompletionRequest))!;
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required BaseCreateCompletionRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'temperature':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.temperature = valueDes;
          break;
        case r'top_p':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.topP = valueDes;
          break;
        case r'top_k':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.topK = valueDes;
          break;
        case r'frequency_penalty':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.frequencyPenalty = valueDes;
          break;
        case r'presence_penalty':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.presencePenalty = valueDes;
          break;
        case r'n':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.n = valueDes;
          break;
        case r'stop':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BaseCreateCompletionRequestStop),
          ) as BaseCreateCompletionRequestStop;
          result.stop.replace(valueDes);
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
        case r'stream':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.stream = valueDes;
          break;
        case r'context_length_exceeded_behavior':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(
                BaseCreateCompletionRequestContextLengthExceededBehaviorEnum),
          ) as BaseCreateCompletionRequestContextLengthExceededBehaviorEnum;
          result.contextLengthExceededBehavior = valueDes;
          break;
        case r'user':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.user = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  $BaseCreateCompletionRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = $BaseCreateCompletionRequestBuilder();
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

class BaseCreateCompletionRequestContextLengthExceededBehaviorEnum
    extends EnumClass {
  /// What to do if the token count of prompt plus 'max_tokens' exceeds the model's context window.  Passing 'truncate' limits the 'max_tokens' to at most 'context_window_length - prompt_length'. This is the default.  Passing 'error' would trigger a request error.  The default of 'truncate' is selected as it allows to ask for high 'max_tokens' value while respecting the context window length without having to do client-side prompt tokenization.  Note, that it differs from OpenAI's behavior that matches that of 'error'.
  @BuiltValueEnumConst(wireName: r'truncate')
  static const BaseCreateCompletionRequestContextLengthExceededBehaviorEnum
      truncate =
      _$baseCreateCompletionRequestContextLengthExceededBehaviorEnum_truncate;

  /// What to do if the token count of prompt plus 'max_tokens' exceeds the model's context window.  Passing 'truncate' limits the 'max_tokens' to at most 'context_window_length - prompt_length'. This is the default.  Passing 'error' would trigger a request error.  The default of 'truncate' is selected as it allows to ask for high 'max_tokens' value while respecting the context window length without having to do client-side prompt tokenization.  Note, that it differs from OpenAI's behavior that matches that of 'error'.
  @BuiltValueEnumConst(wireName: r'error', fallback: true)
  static const BaseCreateCompletionRequestContextLengthExceededBehaviorEnum
      error =
      _$baseCreateCompletionRequestContextLengthExceededBehaviorEnum_error;

  static Serializer<
          BaseCreateCompletionRequestContextLengthExceededBehaviorEnum>
      get serializer =>
          _$baseCreateCompletionRequestContextLengthExceededBehaviorEnumSerializer;

  const BaseCreateCompletionRequestContextLengthExceededBehaviorEnum._(
      String name)
      : super(name);

  static BuiltSet<BaseCreateCompletionRequestContextLengthExceededBehaviorEnum>
      get values =>
          _$baseCreateCompletionRequestContextLengthExceededBehaviorEnumValues;
  static BaseCreateCompletionRequestContextLengthExceededBehaviorEnum valueOf(
          String name) =>
      _$baseCreateCompletionRequestContextLengthExceededBehaviorEnumValueOf(
          name);
}
