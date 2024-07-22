//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:stability_api/src/model/chat_message_content.dart';
import 'package:built_collection/built_collection.dart';
import 'dart:core';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/one_of.dart';

part 'chat_completion_request_message_content.g.dart';

/// ChatCompletionRequestMessageContent
@BuiltValue()
abstract class ChatCompletionRequestMessageContent
    implements
        Built<ChatCompletionRequestMessageContent,
            ChatCompletionRequestMessageContentBuilder> {
  /// One Of [BuiltList<ChatMessageContent>], [String]
  OneOf get oneOf;

  ChatCompletionRequestMessageContent._();

  factory ChatCompletionRequestMessageContent(
          [void updates(ChatCompletionRequestMessageContentBuilder b)]) =
      _$ChatCompletionRequestMessageContent;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ChatCompletionRequestMessageContentBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ChatCompletionRequestMessageContent> get serializer =>
      _$ChatCompletionRequestMessageContentSerializer();
}

class _$ChatCompletionRequestMessageContentSerializer
    implements PrimitiveSerializer<ChatCompletionRequestMessageContent> {
  @override
  final Iterable<Type> types = const [
    ChatCompletionRequestMessageContent,
    _$ChatCompletionRequestMessageContent
  ];

  @override
  final String wireName = r'ChatCompletionRequestMessageContent';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ChatCompletionRequestMessageContent object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {}

  @override
  Object serialize(
    Serializers serializers,
    ChatCompletionRequestMessageContent object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final oneOf = object.oneOf;
    return serializers.serialize(oneOf.value,
        specifiedType: FullType(oneOf.valueType))!;
  }

  @override
  ChatCompletionRequestMessageContent deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ChatCompletionRequestMessageContentBuilder();
    Object? oneOfDataSrc;
    final targetType = const FullType(OneOf, [
      FullType.nullable(String),
      FullType(BuiltList, [FullType(ChatMessageContent)]),
    ]);
    oneOfDataSrc = serialized;
    result.oneOf = serializers.deserialize(oneOfDataSrc,
        specifiedType: targetType) as OneOf;
    return result.build();
  }
}
