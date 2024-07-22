//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'chat_message_content_image_url.g.dart';

/// ChatMessageContentImageUrl
///
/// Properties:
/// * [url] - base64 encoded string for image formatted as MIME_TYPE,\\<base64 encoded str\\> eg. data:image/jpeg;base64,\\<base64 encoded str\\>
@BuiltValue()
abstract class ChatMessageContentImageUrl
    implements
        Built<ChatMessageContentImageUrl, ChatMessageContentImageUrlBuilder> {
  /// base64 encoded string for image formatted as MIME_TYPE,\\<base64 encoded str\\> eg. data:image/jpeg;base64,\\<base64 encoded str\\>
  @BuiltValueField(wireName: r'url')
  String? get url;

  ChatMessageContentImageUrl._();

  factory ChatMessageContentImageUrl(
          [void updates(ChatMessageContentImageUrlBuilder b)]) =
      _$ChatMessageContentImageUrl;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ChatMessageContentImageUrlBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ChatMessageContentImageUrl> get serializer =>
      _$ChatMessageContentImageUrlSerializer();
}

class _$ChatMessageContentImageUrlSerializer
    implements PrimitiveSerializer<ChatMessageContentImageUrl> {
  @override
  final Iterable<Type> types = const [
    ChatMessageContentImageUrl,
    _$ChatMessageContentImageUrl
  ];

  @override
  final String wireName = r'ChatMessageContentImageUrl';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ChatMessageContentImageUrl object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.url != null) {
      yield r'url';
      yield serializers.serialize(
        object.url,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ChatMessageContentImageUrl object, {
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
    required ChatMessageContentImageUrlBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'url':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.url = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ChatMessageContentImageUrl deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ChatMessageContentImageUrlBuilder();
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
