//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:stability_api/src/model/chat_completion_response_message.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_response2005_choices.g.dart';

/// InlineResponse2005Choices
///
/// Properties:
/// * [index] - The index of the chat completion choice.
/// * [message]
/// * [finishReason] - The reason the model stopped generating tokens. This will be \"stop\" if the model hit a natural stop point or a provided stop sequence, or \"length\" if the maximum number of tokens specified in the request was reached.
@BuiltValue()
abstract class InlineResponse2005Choices
    implements
        Built<InlineResponse2005Choices, InlineResponse2005ChoicesBuilder> {
  /// The index of the chat completion choice.
  @BuiltValueField(wireName: r'index')
  int get index;

  @BuiltValueField(wireName: r'message')
  ChatCompletionResponseMessage get message;

  /// The reason the model stopped generating tokens. This will be \"stop\" if the model hit a natural stop point or a provided stop sequence, or \"length\" if the maximum number of tokens specified in the request was reached.
  @BuiltValueField(wireName: r'finish_reason')
  InlineResponse2005ChoicesFinishReasonEnum get finishReason;
  // enum finishReasonEnum {  stop,  length,  };

  InlineResponse2005Choices._();

  factory InlineResponse2005Choices(
          [void updates(InlineResponse2005ChoicesBuilder b)]) =
      _$InlineResponse2005Choices;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(InlineResponse2005ChoicesBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<InlineResponse2005Choices> get serializer =>
      _$InlineResponse2005ChoicesSerializer();
}

class _$InlineResponse2005ChoicesSerializer
    implements PrimitiveSerializer<InlineResponse2005Choices> {
  @override
  final Iterable<Type> types = const [
    InlineResponse2005Choices,
    _$InlineResponse2005Choices
  ];

  @override
  final String wireName = r'InlineResponse2005Choices';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    InlineResponse2005Choices object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'index';
    yield serializers.serialize(
      object.index,
      specifiedType: const FullType(int),
    );
    yield r'message';
    yield serializers.serialize(
      object.message,
      specifiedType: const FullType(ChatCompletionResponseMessage),
    );
    yield r'finish_reason';
    yield serializers.serialize(
      object.finishReason,
      specifiedType: const FullType(InlineResponse2005ChoicesFinishReasonEnum),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    InlineResponse2005Choices object, {
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
    required InlineResponse2005ChoicesBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'index':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.index = valueDes;
          break;
        case r'message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ChatCompletionResponseMessage),
          ) as ChatCompletionResponseMessage;
          result.message.replace(valueDes);
          break;
        case r'finish_reason':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(InlineResponse2005ChoicesFinishReasonEnum),
          ) as InlineResponse2005ChoicesFinishReasonEnum;
          result.finishReason = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  InlineResponse2005Choices deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InlineResponse2005ChoicesBuilder();
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

class InlineResponse2005ChoicesFinishReasonEnum extends EnumClass {
  /// The reason the model stopped generating tokens. This will be \"stop\" if the model hit a natural stop point or a provided stop sequence, or \"length\" if the maximum number of tokens specified in the request was reached.
  @BuiltValueEnumConst(wireName: r'stop')
  static const InlineResponse2005ChoicesFinishReasonEnum stop =
      _$inlineResponse2005ChoicesFinishReasonEnum_stop;

  /// The reason the model stopped generating tokens. This will be \"stop\" if the model hit a natural stop point or a provided stop sequence, or \"length\" if the maximum number of tokens specified in the request was reached.
  @BuiltValueEnumConst(wireName: r'length', fallback: true)
  static const InlineResponse2005ChoicesFinishReasonEnum length =
      _$inlineResponse2005ChoicesFinishReasonEnum_length;

  static Serializer<InlineResponse2005ChoicesFinishReasonEnum> get serializer =>
      _$inlineResponse2005ChoicesFinishReasonEnumSerializer;

  const InlineResponse2005ChoicesFinishReasonEnum._(String name) : super(name);

  static BuiltSet<InlineResponse2005ChoicesFinishReasonEnum> get values =>
      _$inlineResponse2005ChoicesFinishReasonEnumValues;
  static InlineResponse2005ChoicesFinishReasonEnum valueOf(String name) =>
      _$inlineResponse2005ChoicesFinishReasonEnumValueOf(name);
}
