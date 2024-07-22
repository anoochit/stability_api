//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:stability_api/src/model/organization_membership.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'account_response_body.g.dart';

/// AccountResponseBody
///
/// Properties:
/// * [email] - The user's email
/// * [id] - The user's ID
/// * [organizations] - The user's organizations
/// * [profilePicture] - The user's profile picture
@BuiltValue()
abstract class AccountResponseBody
    implements Built<AccountResponseBody, AccountResponseBodyBuilder> {
  /// The user's email
  @BuiltValueField(wireName: r'email')
  String get email;

  /// The user's ID
  @BuiltValueField(wireName: r'id')
  String get id;

  /// The user's organizations
  @BuiltValueField(wireName: r'organizations')
  BuiltList<OrganizationMembership> get organizations;

  /// The user's profile picture
  @BuiltValueField(wireName: r'profile_picture')
  String? get profilePicture;

  AccountResponseBody._();

  factory AccountResponseBody([void updates(AccountResponseBodyBuilder b)]) =
      _$AccountResponseBody;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AccountResponseBodyBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AccountResponseBody> get serializer =>
      _$AccountResponseBodySerializer();
}

class _$AccountResponseBodySerializer
    implements PrimitiveSerializer<AccountResponseBody> {
  @override
  final Iterable<Type> types = const [
    AccountResponseBody,
    _$AccountResponseBody
  ];

  @override
  final String wireName = r'AccountResponseBody';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AccountResponseBody object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'email';
    yield serializers.serialize(
      object.email,
      specifiedType: const FullType(String),
    );
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'organizations';
    yield serializers.serialize(
      object.organizations,
      specifiedType:
          const FullType(BuiltList, [FullType(OrganizationMembership)]),
    );
    if (object.profilePicture != null) {
      yield r'profile_picture';
      yield serializers.serialize(
        object.profilePicture,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AccountResponseBody object, {
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
    required AccountResponseBodyBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'email':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.email = valueDes;
          break;
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'organizations':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(BuiltList, [FullType(OrganizationMembership)]),
          ) as BuiltList<OrganizationMembership>;
          result.organizations.replace(valueDes);
          break;
        case r'profile_picture':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.profilePicture = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AccountResponseBody deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AccountResponseBodyBuilder();
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
