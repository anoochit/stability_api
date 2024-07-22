//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:stability_api/src/model/inline_response2005_choices.dart';
import 'package:stability_api/src/model/usage_info.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_response2005.g.dart';

/// InlineResponse2005
///
/// Properties:
/// * [id] - A unique identifier of the response.
/// * [object] - The object type, which is always \"chat.completion\".
/// * [created] - The Unix time in seconds when the response was generated.
/// * [model] - The model used for the chat completion.
/// * [choices] - The list of chat completion choices.
/// * [usage]
@BuiltValue()
abstract class InlineResponse2005
    implements Built<InlineResponse2005, InlineResponse2005Builder> {
  /// A unique identifier of the response.
  @BuiltValueField(wireName: r'id')
  String get id;

  /// The object type, which is always \"chat.completion\".
  @BuiltValueField(wireName: r'object')
  String get object;

  /// The Unix time in seconds when the response was generated.
  @BuiltValueField(wireName: r'created')
  int get created;

  /// The model used for the chat completion.
  @BuiltValueField(wireName: r'model')
  String get model;

  /// The list of chat completion choices.
  @BuiltValueField(wireName: r'choices')
  BuiltList<InlineResponse2005Choices> get choices;

  @BuiltValueField(wireName: r'usage')
  UsageInfo? get usage;

  InlineResponse2005._();

  factory InlineResponse2005([void updates(InlineResponse2005Builder b)]) =
      _$InlineResponse2005;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(InlineResponse2005Builder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<InlineResponse2005> get serializer =>
      _$InlineResponse2005Serializer();
}

class _$InlineResponse2005Serializer
    implements PrimitiveSerializer<InlineResponse2005> {
  @override
  final Iterable<Type> types = const [InlineResponse2005, _$InlineResponse2005];

  @override
  final String wireName = r'InlineResponse2005';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    InlineResponse2005 object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'object';
    yield serializers.serialize(
      object.object,
      specifiedType: const FullType(String),
    );
    yield r'created';
    yield serializers.serialize(
      object.created,
      specifiedType: const FullType(int),
    );
    yield r'model';
    yield serializers.serialize(
      object.model,
      specifiedType: const FullType(String),
    );
    yield r'choices';
    yield serializers.serialize(
      object.choices,
      specifiedType:
          const FullType(BuiltList, [FullType(InlineResponse2005Choices)]),
    );
    if (object.usage != null) {
      yield r'usage';
      yield serializers.serialize(
        object.usage,
        specifiedType: const FullType(UsageInfo),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    InlineResponse2005 object, {
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
    required InlineResponse2005Builder result,
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
        case r'object':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.object = valueDes;
          break;
        case r'created':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.created = valueDes;
          break;
        case r'model':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.model = valueDes;
          break;
        case r'choices':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(
                BuiltList, [FullType(InlineResponse2005Choices)]),
          ) as BuiltList<InlineResponse2005Choices>;
          result.choices.replace(valueDes);
          break;
        case r'usage':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(UsageInfo),
          ) as UsageInfo;
          result.usage.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  InlineResponse2005 deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InlineResponse2005Builder();
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
