//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'chat_message_content_one_of.g.dart';

/// A message containing text
///
/// Properties:
/// * [type]
/// * [text] - The content of the message.
@BuiltValue()
abstract class ChatMessageContentOneOf
    implements Built<ChatMessageContentOneOf, ChatMessageContentOneOfBuilder> {
  @BuiltValueField(wireName: r'type')
  ChatMessageContentOneOfTypeEnum? get type;
  // enum typeEnum {  text,  };

  /// The content of the message.
  @BuiltValueField(wireName: r'text')
  String? get text;

  ChatMessageContentOneOf._();

  factory ChatMessageContentOneOf(
          [void updates(ChatMessageContentOneOfBuilder b)]) =
      _$ChatMessageContentOneOf;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ChatMessageContentOneOfBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ChatMessageContentOneOf> get serializer =>
      _$ChatMessageContentOneOfSerializer();
}

class _$ChatMessageContentOneOfSerializer
    implements PrimitiveSerializer<ChatMessageContentOneOf> {
  @override
  final Iterable<Type> types = const [
    ChatMessageContentOneOf,
    _$ChatMessageContentOneOf
  ];

  @override
  final String wireName = r'ChatMessageContentOneOf';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ChatMessageContentOneOf object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType(ChatMessageContentOneOfTypeEnum),
      );
    }
    if (object.text != null) {
      yield r'text';
      yield serializers.serialize(
        object.text,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ChatMessageContentOneOf object, {
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
    required ChatMessageContentOneOfBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ChatMessageContentOneOfTypeEnum),
          ) as ChatMessageContentOneOfTypeEnum;
          result.type = valueDes;
          break;
        case r'text':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.text = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ChatMessageContentOneOf deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ChatMessageContentOneOfBuilder();
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

class ChatMessageContentOneOfTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'text', fallback: true)
  static const ChatMessageContentOneOfTypeEnum text =
      _$chatMessageContentOneOfTypeEnum_text;

  static Serializer<ChatMessageContentOneOfTypeEnum> get serializer =>
      _$chatMessageContentOneOfTypeEnumSerializer;

  const ChatMessageContentOneOfTypeEnum._(String name) : super(name);

  static BuiltSet<ChatMessageContentOneOfTypeEnum> get values =>
      _$chatMessageContentOneOfTypeEnumValues;
  static ChatMessageContentOneOfTypeEnum valueOf(String name) =>
      _$chatMessageContentOneOfTypeEnumValueOf(name);
}
