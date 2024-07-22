//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:stability_api/src/model/chat_completion_request_message_content.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'chat_completion_request_message.g.dart';

/// ChatCompletionRequestMessage
///
/// Properties:
/// * [role] - The role of the messages author. One of 'system', 'user', or 'assistant'.
/// * [content]
/// * [name] - The name of the author of this message. May contain a-z, A-Z, 0-9, and underscores, with a maximum length of 64 characters.
@BuiltValue()
abstract class ChatCompletionRequestMessage
    implements
        Built<ChatCompletionRequestMessage,
            ChatCompletionRequestMessageBuilder> {
  /// The role of the messages author. One of 'system', 'user', or 'assistant'.
  @BuiltValueField(wireName: r'role')
  ChatCompletionRequestMessageRoleEnum get role;
  // enum roleEnum {  system,  user,  assistant,  };

  @BuiltValueField(wireName: r'content')
  ChatCompletionRequestMessageContent get content;

  /// The name of the author of this message. May contain a-z, A-Z, 0-9, and underscores, with a maximum length of 64 characters.
  @BuiltValueField(wireName: r'name')
  String? get name;

  ChatCompletionRequestMessage._();

  factory ChatCompletionRequestMessage(
          [void updates(ChatCompletionRequestMessageBuilder b)]) =
      _$ChatCompletionRequestMessage;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ChatCompletionRequestMessageBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ChatCompletionRequestMessage> get serializer =>
      _$ChatCompletionRequestMessageSerializer();
}

class _$ChatCompletionRequestMessageSerializer
    implements PrimitiveSerializer<ChatCompletionRequestMessage> {
  @override
  final Iterable<Type> types = const [
    ChatCompletionRequestMessage,
    _$ChatCompletionRequestMessage
  ];

  @override
  final String wireName = r'ChatCompletionRequestMessage';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ChatCompletionRequestMessage object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'role';
    yield serializers.serialize(
      object.role,
      specifiedType: const FullType(ChatCompletionRequestMessageRoleEnum),
    );
    yield r'content';
    yield serializers.serialize(
      object.content,
      specifiedType: const FullType(ChatCompletionRequestMessageContent),
    );
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ChatCompletionRequestMessage object, {
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
    required ChatCompletionRequestMessageBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'role':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ChatCompletionRequestMessageRoleEnum),
          ) as ChatCompletionRequestMessageRoleEnum;
          result.role = valueDes;
          break;
        case r'content':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ChatCompletionRequestMessageContent),
          ) as ChatCompletionRequestMessageContent;
          result.content.replace(valueDes);
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ChatCompletionRequestMessage deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ChatCompletionRequestMessageBuilder();
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

class ChatCompletionRequestMessageRoleEnum extends EnumClass {
  /// The role of the messages author. One of 'system', 'user', or 'assistant'.
  @BuiltValueEnumConst(wireName: r'system')
  static const ChatCompletionRequestMessageRoleEnum system =
      _$chatCompletionRequestMessageRoleEnum_system;

  /// The role of the messages author. One of 'system', 'user', or 'assistant'.
  @BuiltValueEnumConst(wireName: r'user')
  static const ChatCompletionRequestMessageRoleEnum user =
      _$chatCompletionRequestMessageRoleEnum_user;

  /// The role of the messages author. One of 'system', 'user', or 'assistant'.
  @BuiltValueEnumConst(wireName: r'assistant', fallback: true)
  static const ChatCompletionRequestMessageRoleEnum assistant =
      _$chatCompletionRequestMessageRoleEnum_assistant;

  static Serializer<ChatCompletionRequestMessageRoleEnum> get serializer =>
      _$chatCompletionRequestMessageRoleEnumSerializer;

  const ChatCompletionRequestMessageRoleEnum._(String name) : super(name);

  static BuiltSet<ChatCompletionRequestMessageRoleEnum> get values =>
      _$chatCompletionRequestMessageRoleEnumValues;
  static ChatCompletionRequestMessageRoleEnum valueOf(String name) =>
      _$chatCompletionRequestMessageRoleEnumValueOf(name);
}
