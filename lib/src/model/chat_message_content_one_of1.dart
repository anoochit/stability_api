//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:stability_api/src/model/chat_message_content_image_url.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'chat_message_content_one_of1.g.dart';

/// A message containing image
///
/// Properties:
/// * [type]
/// * [imageUrl]
@BuiltValue()
abstract class ChatMessageContentOneOf1
    implements
        Built<ChatMessageContentOneOf1, ChatMessageContentOneOf1Builder> {
  @BuiltValueField(wireName: r'type')
  ChatMessageContentOneOf1TypeEnum? get type;
  // enum typeEnum {  image_url,  };

  @BuiltValueField(wireName: r'image_url')
  ChatMessageContentImageUrl? get imageUrl;

  ChatMessageContentOneOf1._();

  factory ChatMessageContentOneOf1(
          [void updates(ChatMessageContentOneOf1Builder b)]) =
      _$ChatMessageContentOneOf1;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ChatMessageContentOneOf1Builder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ChatMessageContentOneOf1> get serializer =>
      _$ChatMessageContentOneOf1Serializer();
}

class _$ChatMessageContentOneOf1Serializer
    implements PrimitiveSerializer<ChatMessageContentOneOf1> {
  @override
  final Iterable<Type> types = const [
    ChatMessageContentOneOf1,
    _$ChatMessageContentOneOf1
  ];

  @override
  final String wireName = r'ChatMessageContentOneOf1';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ChatMessageContentOneOf1 object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType(ChatMessageContentOneOf1TypeEnum),
      );
    }
    if (object.imageUrl != null) {
      yield r'image_url';
      yield serializers.serialize(
        object.imageUrl,
        specifiedType: const FullType(ChatMessageContentImageUrl),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ChatMessageContentOneOf1 object, {
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
    required ChatMessageContentOneOf1Builder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ChatMessageContentOneOf1TypeEnum),
          ) as ChatMessageContentOneOf1TypeEnum;
          result.type = valueDes;
          break;
        case r'image_url':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ChatMessageContentImageUrl),
          ) as ChatMessageContentImageUrl;
          result.imageUrl.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ChatMessageContentOneOf1 deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ChatMessageContentOneOf1Builder();
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

class ChatMessageContentOneOf1TypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'image_url', fallback: true)
  static const ChatMessageContentOneOf1TypeEnum imageUrl =
      _$chatMessageContentOneOf1TypeEnum_imageUrl;

  static Serializer<ChatMessageContentOneOf1TypeEnum> get serializer =>
      _$chatMessageContentOneOf1TypeEnumSerializer;

  const ChatMessageContentOneOf1TypeEnum._(String name) : super(name);

  static BuiltSet<ChatMessageContentOneOf1TypeEnum> get values =>
      _$chatMessageContentOneOf1TypeEnumValues;
  static ChatMessageContentOneOf1TypeEnum valueOf(String name) =>
      _$chatMessageContentOneOf1TypeEnumValueOf(name);
}
