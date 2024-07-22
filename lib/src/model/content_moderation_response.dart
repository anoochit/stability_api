//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'content_moderation_response.g.dart';

/// Your request was flagged by our content moderation system.
///
/// Properties:
/// * [id] - A unique identifier associated with this error. Please include this in any [support tickets](https://stabilityplatform.freshdesk.com/support/tickets/new)  you file, as it will greatly assist us in diagnosing the root cause of the problem.
/// * [name] - Our content moderation system has flagged some part of your request and subsequently denied it.  You were not charged for this request.  While this may at times be frustrating, it is necessary to maintain the integrity of our platform and ensure a safe experience for all users.  If you would like to provide feedback, please use the [Support Form](https://stabilityplatform.freshdesk.com/support/tickets/new).
/// * [errors] - One or more error messages indicating what went wrong.
@BuiltValue()
abstract class ContentModerationResponse
    implements
        Built<ContentModerationResponse, ContentModerationResponseBuilder> {
  /// A unique identifier associated with this error. Please include this in any [support tickets](https://stabilityplatform.freshdesk.com/support/tickets/new)  you file, as it will greatly assist us in diagnosing the root cause of the problem.
  @BuiltValueField(wireName: r'id')
  String get id;

  /// Our content moderation system has flagged some part of your request and subsequently denied it.  You were not charged for this request.  While this may at times be frustrating, it is necessary to maintain the integrity of our platform and ensure a safe experience for all users.  If you would like to provide feedback, please use the [Support Form](https://stabilityplatform.freshdesk.com/support/tickets/new).
  @BuiltValueField(wireName: r'name')
  ContentModerationResponseNameEnum get name;
  // enum nameEnum {  content_moderation,  };

  /// One or more error messages indicating what went wrong.
  @BuiltValueField(wireName: r'errors')
  BuiltList<String> get errors;

  ContentModerationResponse._();

  factory ContentModerationResponse(
          [void updates(ContentModerationResponseBuilder b)]) =
      _$ContentModerationResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ContentModerationResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ContentModerationResponse> get serializer =>
      _$ContentModerationResponseSerializer();
}

class _$ContentModerationResponseSerializer
    implements PrimitiveSerializer<ContentModerationResponse> {
  @override
  final Iterable<Type> types = const [
    ContentModerationResponse,
    _$ContentModerationResponse
  ];

  @override
  final String wireName = r'ContentModerationResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ContentModerationResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(ContentModerationResponseNameEnum),
    );
    yield r'errors';
    yield serializers.serialize(
      object.errors,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ContentModerationResponse object, {
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
    required ContentModerationResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ContentModerationResponseNameEnum),
          ) as ContentModerationResponseNameEnum;
          result.name = valueDes;
          break;
        case r'errors':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.errors.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ContentModerationResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ContentModerationResponseBuilder();
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

class ContentModerationResponseNameEnum extends EnumClass {
  /// Our content moderation system has flagged some part of your request and subsequently denied it.  You were not charged for this request.  While this may at times be frustrating, it is necessary to maintain the integrity of our platform and ensure a safe experience for all users.  If you would like to provide feedback, please use the [Support Form](https://stabilityplatform.freshdesk.com/support/tickets/new).
  @BuiltValueEnumConst(wireName: r'content_moderation', fallback: true)
  static const ContentModerationResponseNameEnum contentModeration =
      _$contentModerationResponseNameEnum_contentModeration;

  static Serializer<ContentModerationResponseNameEnum> get serializer =>
      _$contentModerationResponseNameEnumSerializer;

  const ContentModerationResponseNameEnum._(String name) : super(name);

  static BuiltSet<ContentModerationResponseNameEnum> get values =>
      _$contentModerationResponseNameEnumValues;
  static ContentModerationResponseNameEnum valueOf(String name) =>
      _$contentModerationResponseNameEnumValueOf(name);
}
