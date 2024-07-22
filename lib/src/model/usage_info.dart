//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'usage_info.g.dart';

/// Usage statistics.  For streaming responses, 'usage' field is included in the very last response chunk returned.  Note that returning 'usage' for streaming requests is an OpenAI API extension. If you use OpenAI SDK, you might access the field directly even if it's not present in the type signature in the SDK.
///
/// Properties:
/// * [promptTokens] - The number of tokens in the prompt.
/// * [completionTokens] - The number of tokens in the generated completion.
/// * [totalTokens] - The total number of tokens used in the request (prompt + completion).
@BuiltValue()
abstract class UsageInfo implements Built<UsageInfo, UsageInfoBuilder> {
  /// The number of tokens in the prompt.
  @BuiltValueField(wireName: r'prompt_tokens')
  int get promptTokens;

  /// The number of tokens in the generated completion.
  @BuiltValueField(wireName: r'completion_tokens')
  int get completionTokens;

  /// The total number of tokens used in the request (prompt + completion).
  @BuiltValueField(wireName: r'total_tokens')
  int get totalTokens;

  UsageInfo._();

  factory UsageInfo([void updates(UsageInfoBuilder b)]) = _$UsageInfo;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UsageInfoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UsageInfo> get serializer => _$UsageInfoSerializer();
}

class _$UsageInfoSerializer implements PrimitiveSerializer<UsageInfo> {
  @override
  final Iterable<Type> types = const [UsageInfo, _$UsageInfo];

  @override
  final String wireName = r'UsageInfo';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UsageInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'prompt_tokens';
    yield serializers.serialize(
      object.promptTokens,
      specifiedType: const FullType(int),
    );
    yield r'completion_tokens';
    yield serializers.serialize(
      object.completionTokens,
      specifiedType: const FullType(int),
    );
    yield r'total_tokens';
    yield serializers.serialize(
      object.totalTokens,
      specifiedType: const FullType(int),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    UsageInfo object, {
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
    required UsageInfoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'prompt_tokens':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.promptTokens = valueDes;
          break;
        case r'completion_tokens':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.completionTokens = valueDes;
          break;
        case r'total_tokens':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.totalTokens = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UsageInfo deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UsageInfoBuilder();
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
