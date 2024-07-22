//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:stability_api/src/model/style_preset.dart';
import 'package:stability_api/src/model/clip_guidance_preset.dart';
import 'package:stability_api/src/model/sampler.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'generation_request_optional_params.g.dart';

/// Represents the optional parameters that can be passed to any generation request.
///
/// Properties:
/// * [cfgScale] - How strictly the diffusion process adheres to the prompt text (higher values keep your image closer to your prompt)
/// * [clipGuidancePreset]
/// * [sampler]
/// * [samples] - Number of images to generate
/// * [seed] - Random noise seed (omit this option or use `0` for a random seed)
/// * [steps] - Number of diffusion steps to run.
/// * [stylePreset]
/// * [extras] - Extra parameters passed to the engine. These parameters are used for in-development or experimental features and may change without warning, so please use with caution.
@BuiltValue(instantiable: false)
abstract class GenerationRequestOptionalParams {
  /// How strictly the diffusion process adheres to the prompt text (higher values keep your image closer to your prompt)
  @BuiltValueField(wireName: r'cfg_scale')
  num? get cfgScale;

  @BuiltValueField(wireName: r'clip_guidance_preset')
  ClipGuidancePreset? get clipGuidancePreset;
  // enum clipGuidancePresetEnum {  FAST_BLUE,  FAST_GREEN,  NONE,  SIMPLE,  SLOW,  SLOWER,  SLOWEST,  };

  @BuiltValueField(wireName: r'sampler')
  Sampler? get sampler;
  // enum samplerEnum {  DDIM,  DDPM,  K_DPMPP_2M,  K_DPMPP_2S_ANCESTRAL,  K_DPM_2,  K_DPM_2_ANCESTRAL,  K_EULER,  K_EULER_ANCESTRAL,  K_HEUN,  K_LMS,  };

  /// Number of images to generate
  @BuiltValueField(wireName: r'samples')
  int? get samples;

  /// Random noise seed (omit this option or use `0` for a random seed)
  @BuiltValueField(wireName: r'seed')
  int? get seed;

  /// Number of diffusion steps to run.
  @BuiltValueField(wireName: r'steps')
  int? get steps;

  @BuiltValueField(wireName: r'style_preset')
  StylePreset? get stylePreset;
  // enum stylePresetEnum {  3d-model,  analog-film,  anime,  cinematic,  comic-book,  digital-art,  enhance,  fantasy-art,  isometric,  line-art,  low-poly,  modeling-compound,  neon-punk,  origami,  photographic,  pixel-art,  tile-texture,  };

  /// Extra parameters passed to the engine. These parameters are used for in-development or experimental features and may change without warning, so please use with caution.
  @BuiltValueField(wireName: r'extras')
  JsonObject? get extras;

  @BuiltValueSerializer(custom: true)
  static Serializer<GenerationRequestOptionalParams> get serializer =>
      _$GenerationRequestOptionalParamsSerializer();
}

class _$GenerationRequestOptionalParamsSerializer
    implements PrimitiveSerializer<GenerationRequestOptionalParams> {
  @override
  final Iterable<Type> types = const [GenerationRequestOptionalParams];

  @override
  final String wireName = r'GenerationRequestOptionalParams';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GenerationRequestOptionalParams object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.cfgScale != null) {
      yield r'cfg_scale';
      yield serializers.serialize(
        object.cfgScale,
        specifiedType: const FullType(num),
      );
    }
    if (object.clipGuidancePreset != null) {
      yield r'clip_guidance_preset';
      yield serializers.serialize(
        object.clipGuidancePreset,
        specifiedType: const FullType(ClipGuidancePreset),
      );
    }
    if (object.sampler != null) {
      yield r'sampler';
      yield serializers.serialize(
        object.sampler,
        specifiedType: const FullType(Sampler),
      );
    }
    if (object.samples != null) {
      yield r'samples';
      yield serializers.serialize(
        object.samples,
        specifiedType: const FullType(int),
      );
    }
    if (object.seed != null) {
      yield r'seed';
      yield serializers.serialize(
        object.seed,
        specifiedType: const FullType(int),
      );
    }
    if (object.steps != null) {
      yield r'steps';
      yield serializers.serialize(
        object.steps,
        specifiedType: const FullType(int),
      );
    }
    if (object.stylePreset != null) {
      yield r'style_preset';
      yield serializers.serialize(
        object.stylePreset,
        specifiedType: const FullType(StylePreset),
      );
    }
    if (object.extras != null) {
      yield r'extras';
      yield serializers.serialize(
        object.extras,
        specifiedType: const FullType(JsonObject),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    GenerationRequestOptionalParams object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object,
            specifiedType: specifiedType)
        .toList();
  }

  @override
  GenerationRequestOptionalParams deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.deserialize(serialized,
            specifiedType: FullType($GenerationRequestOptionalParams))
        as $GenerationRequestOptionalParams;
  }
}

/// a concrete implementation of [GenerationRequestOptionalParams], since [GenerationRequestOptionalParams] is not instantiable
@BuiltValue(instantiable: true)
abstract class $GenerationRequestOptionalParams
    implements
        GenerationRequestOptionalParams,
        Built<$GenerationRequestOptionalParams,
            $GenerationRequestOptionalParamsBuilder> {
  $GenerationRequestOptionalParams._();

  factory $GenerationRequestOptionalParams(
          [void Function($GenerationRequestOptionalParamsBuilder)? updates]) =
      _$$GenerationRequestOptionalParams;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults($GenerationRequestOptionalParamsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<$GenerationRequestOptionalParams> get serializer =>
      _$$GenerationRequestOptionalParamsSerializer();
}

class _$$GenerationRequestOptionalParamsSerializer
    implements PrimitiveSerializer<$GenerationRequestOptionalParams> {
  @override
  final Iterable<Type> types = const [
    $GenerationRequestOptionalParams,
    _$$GenerationRequestOptionalParams
  ];

  @override
  final String wireName = r'$GenerationRequestOptionalParams';

  @override
  Object serialize(
    Serializers serializers,
    $GenerationRequestOptionalParams object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.serialize(object,
        specifiedType: FullType(GenerationRequestOptionalParams))!;
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GenerationRequestOptionalParamsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'cfg_scale':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.cfgScale = valueDes;
          break;
        case r'clip_guidance_preset':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ClipGuidancePreset),
          ) as ClipGuidancePreset;
          result.clipGuidancePreset = valueDes;
          break;
        case r'sampler':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Sampler),
          ) as Sampler;
          result.sampler = valueDes;
          break;
        case r'samples':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.samples = valueDes;
          break;
        case r'seed':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.seed = valueDes;
          break;
        case r'steps':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.steps = valueDes;
          break;
        case r'style_preset':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(StylePreset),
          ) as StylePreset;
          result.stylePreset = valueDes;
          break;
        case r'extras':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JsonObject),
          ) as JsonObject;
          result.extras = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  $GenerationRequestOptionalParams deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = $GenerationRequestOptionalParamsBuilder();
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
