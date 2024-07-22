//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:stability_api/src/model/chat_message_content_one_of.dart';
import 'package:stability_api/src/model/chat_message_content_image_url.dart';
import 'package:stability_api/src/model/chat_message_content_one_of1.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/one_of.dart';

part 'chat_message_content.g.dart';

/// The content of the message. Can either be text or image_url.
///
/// Properties:
/// * [type]
/// * [text] - The content of the message.
/// * [imageUrl]
@BuiltValue()
abstract class ChatMessageContent
    implements Built<ChatMessageContent, ChatMessageContentBuilder> {
  /// One Of [ChatMessageContentOneOf], [ChatMessageContentOneOf1]
  OneOf get oneOf;

  ChatMessageContent._();

  factory ChatMessageContent([void updates(ChatMessageContentBuilder b)]) =
      _$ChatMessageContent;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ChatMessageContentBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ChatMessageContent> get serializer =>
      _$ChatMessageContentSerializer();
}

class _$ChatMessageContentSerializer
    implements PrimitiveSerializer<ChatMessageContent> {
  @override
  final Iterable<Type> types = const [ChatMessageContent, _$ChatMessageContent];

  @override
  final String wireName = r'ChatMessageContent';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ChatMessageContent object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {}

  @override
  Object serialize(
    Serializers serializers,
    ChatMessageContent object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final oneOf = object.oneOf;
    return serializers.serialize(oneOf.value,
        specifiedType: FullType(oneOf.valueType))!;
  }

  @override
  ChatMessageContent deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ChatMessageContentBuilder();
    Object? oneOfDataSrc;
    final targetType = const FullType(OneOf, [
      FullType(ChatMessageContentOneOf),
      FullType(ChatMessageContentOneOf1),
    ]);
    oneOfDataSrc = serialized;
    result.oneOf = serializers.deserialize(oneOfDataSrc,
        specifiedType: targetType) as OneOf;
    return result.build();
  }
}

class ChatMessageContentTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'text')
  static const ChatMessageContentTypeEnum text =
      _$chatMessageContentTypeEnum_text;
  @BuiltValueEnumConst(wireName: r'image_url', fallback: true)
  static const ChatMessageContentTypeEnum imageUrl =
      _$chatMessageContentTypeEnum_imageUrl;

  static Serializer<ChatMessageContentTypeEnum> get serializer =>
      _$chatMessageContentTypeEnumSerializer;

  const ChatMessageContentTypeEnum._(String name) : super(name);

  static BuiltSet<ChatMessageContentTypeEnum> get values =>
      _$chatMessageContentTypeEnumValues;
  static ChatMessageContentTypeEnum valueOf(String name) =>
      _$chatMessageContentTypeEnumValueOf(name);
}
