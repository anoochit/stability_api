//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:stability_api/src/model/text_prompt.dart';
import 'package:stability_api/src/model/style_preset.dart';
import 'dart:typed_data';
import 'package:built_collection/built_collection.dart';
import 'package:stability_api/src/model/generation_request_optional_params.dart';
import 'package:stability_api/src/model/clip_guidance_preset.dart';
import 'package:stability_api/src/model/sampler.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'masking_using_mask_image_request_body.g.dart';

/// MaskingUsingMaskImageRequestBody
///
/// Properties:
/// * [textPrompts] - An array of text prompts to use for generation.  Due to how arrays are represented in `multipart/form-data` requests, prompts must adhere to the format `text_prompts[index][text|weight]`, where `index` is some integer used to tie the text and weight together.  While `index` does not have to be sequential, duplicate entries  will override previous entries, so it is recommended to use sequential indices.  Given a text prompt with the text `A lighthouse on a cliff` and a weight of `0.5`, it would be represented as: ``` text_prompts[0][text]: \"A lighthouse on a cliff\" text_prompts[0][weight]: 0.5 ```  To add another prompt to that request simply provide the values under a new `index`:  ``` text_prompts[0][text]: \"A lighthouse on a cliff\" text_prompts[0][weight]: 0.5 text_prompts[1][text]: \"land, ground, dirt, grass\" text_prompts[1][weight]: -0.9 ```
/// * [initImage] - Image used to initialize the diffusion process, in lieu of random noise.
/// * [maskSource] - For any given pixel, the mask determines the strength of generation on a linear scale.  This parameter determines where to source the mask from: - `MASK_IMAGE_WHITE` will use the white pixels of the mask_image as the mask, where white pixels are completely replaced and black pixels are unchanged - `MASK_IMAGE_BLACK` will use the black pixels of the mask_image as the mask, where black pixels are completely replaced and white pixels are unchanged - `INIT_IMAGE_ALPHA` will use the alpha channel of the init_image as the mask, where fully transparent pixels are completely replaced and fully opaque pixels are unchanged
/// * [maskImage] - Optional grayscale mask that allows for influence over which pixels are eligible for diffusion and at what strength. Must be the same dimensions as the `init_image`. Use the `mask_source` option to specify whether the white or black pixels should be inpainted.
/// * [cfgScale] - How strictly the diffusion process adheres to the prompt text (higher values keep your image closer to your prompt)
/// * [clipGuidancePreset]
/// * [sampler]
/// * [samples] - Number of images to generate
/// * [seed] - Random noise seed (omit this option or use `0` for a random seed)
/// * [steps] - Number of diffusion steps to run.
/// * [stylePreset]
/// * [extras] - Extra parameters passed to the engine. These parameters are used for in-development or experimental features and may change without warning, so please use with caution.
@BuiltValue()
abstract class MaskingUsingMaskImageRequestBody
    implements
        GenerationRequestOptionalParams,
        Built<MaskingUsingMaskImageRequestBody,
            MaskingUsingMaskImageRequestBodyBuilder> {
  /// Image used to initialize the diffusion process, in lieu of random noise.
  @BuiltValueField(wireName: r'init_image')
  Uint8List get initImage;

  /// An array of text prompts to use for generation.  Due to how arrays are represented in `multipart/form-data` requests, prompts must adhere to the format `text_prompts[index][text|weight]`, where `index` is some integer used to tie the text and weight together.  While `index` does not have to be sequential, duplicate entries  will override previous entries, so it is recommended to use sequential indices.  Given a text prompt with the text `A lighthouse on a cliff` and a weight of `0.5`, it would be represented as: ``` text_prompts[0][text]: \"A lighthouse on a cliff\" text_prompts[0][weight]: 0.5 ```  To add another prompt to that request simply provide the values under a new `index`:  ``` text_prompts[0][text]: \"A lighthouse on a cliff\" text_prompts[0][weight]: 0.5 text_prompts[1][text]: \"land, ground, dirt, grass\" text_prompts[1][weight]: -0.9 ```
  @BuiltValueField(wireName: r'text_prompts')
  BuiltList<TextPrompt> get textPrompts;

  /// For any given pixel, the mask determines the strength of generation on a linear scale.  This parameter determines where to source the mask from: - `MASK_IMAGE_WHITE` will use the white pixels of the mask_image as the mask, where white pixels are completely replaced and black pixels are unchanged - `MASK_IMAGE_BLACK` will use the black pixels of the mask_image as the mask, where black pixels are completely replaced and white pixels are unchanged - `INIT_IMAGE_ALPHA` will use the alpha channel of the init_image as the mask, where fully transparent pixels are completely replaced and fully opaque pixels are unchanged
  @BuiltValueField(wireName: r'mask_source')
  String get maskSource;

  /// Optional grayscale mask that allows for influence over which pixels are eligible for diffusion and at what strength. Must be the same dimensions as the `init_image`. Use the `mask_source` option to specify whether the white or black pixels should be inpainted.
  @BuiltValueField(wireName: r'mask_image')
  Uint8List get maskImage;

  MaskingUsingMaskImageRequestBody._();

  factory MaskingUsingMaskImageRequestBody(
          [void updates(MaskingUsingMaskImageRequestBodyBuilder b)]) =
      _$MaskingUsingMaskImageRequestBody;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MaskingUsingMaskImageRequestBodyBuilder b) => b
    ..seed = 0
    ..cfgScale = 7
    ..steps = 30
    ..samples = 1;

  @BuiltValueSerializer(custom: true)
  static Serializer<MaskingUsingMaskImageRequestBody> get serializer =>
      _$MaskingUsingMaskImageRequestBodySerializer();
}

class _$MaskingUsingMaskImageRequestBodySerializer
    implements PrimitiveSerializer<MaskingUsingMaskImageRequestBody> {
  @override
  final Iterable<Type> types = const [
    MaskingUsingMaskImageRequestBody,
    _$MaskingUsingMaskImageRequestBody
  ];

  @override
  final String wireName = r'MaskingUsingMaskImageRequestBody';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    MaskingUsingMaskImageRequestBody object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'init_image';
    yield serializers.serialize(
      object.initImage,
      specifiedType: const FullType(Uint8List),
    );
    yield r'text_prompts';
    yield serializers.serialize(
      object.textPrompts,
      specifiedType: const FullType(BuiltList, [FullType(TextPrompt)]),
    );
    if (object.seed != null) {
      yield r'seed';
      yield serializers.serialize(
        object.seed,
        specifiedType: const FullType(int),
      );
    }
    if (object.cfgScale != null) {
      yield r'cfg_scale';
      yield serializers.serialize(
        object.cfgScale,
        specifiedType: const FullType(num),
      );
    }
    if (object.extras != null) {
      yield r'extras';
      yield serializers.serialize(
        object.extras,
        specifiedType: const FullType(JsonObject),
      );
    }
    if (object.clipGuidancePreset != null) {
      yield r'clip_guidance_preset';
      yield serializers.serialize(
        object.clipGuidancePreset,
        specifiedType: const FullType(ClipGuidancePreset),
      );
    }
    if (object.stylePreset != null) {
      yield r'style_preset';
      yield serializers.serialize(
        object.stylePreset,
        specifiedType: const FullType(StylePreset),
      );
    }
    yield r'mask_source';
    yield serializers.serialize(
      object.maskSource,
      specifiedType: const FullType(String),
    );
    if (object.steps != null) {
      yield r'steps';
      yield serializers.serialize(
        object.steps,
        specifiedType: const FullType(int),
      );
    }
    if (object.samples != null) {
      yield r'samples';
      yield serializers.serialize(
        object.samples,
        specifiedType: const FullType(int),
      );
    }
    yield r'mask_image';
    yield serializers.serialize(
      object.maskImage,
      specifiedType: const FullType(Uint8List),
    );
    if (object.sampler != null) {
      yield r'sampler';
      yield serializers.serialize(
        object.sampler,
        specifiedType: const FullType(Sampler),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    MaskingUsingMaskImageRequestBody object, {
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
    required MaskingUsingMaskImageRequestBodyBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'init_image':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Uint8List),
          ) as Uint8List;
          result.initImage = valueDes;
          break;
        case r'text_prompts':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(TextPrompt)]),
          ) as BuiltList<TextPrompt>;
          result.textPrompts.replace(valueDes);
          break;
        case r'seed':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.seed = valueDes;
          break;
        case r'cfg_scale':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.cfgScale = valueDes;
          break;
        case r'extras':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JsonObject),
          ) as JsonObject;
          result.extras = valueDes;
          break;
        case r'clip_guidance_preset':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ClipGuidancePreset),
          ) as ClipGuidancePreset;
          result.clipGuidancePreset = valueDes;
          break;
        case r'style_preset':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(StylePreset),
          ) as StylePreset;
          result.stylePreset = valueDes;
          break;
        case r'mask_source':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.maskSource = valueDes;
          break;
        case r'steps':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.steps = valueDes;
          break;
        case r'samples':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.samples = valueDes;
          break;
        case r'mask_image':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Uint8List),
          ) as Uint8List;
          result.maskImage = valueDes;
          break;
        case r'sampler':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Sampler),
          ) as Sampler;
          result.sampler = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  MaskingUsingMaskImageRequestBody deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MaskingUsingMaskImageRequestBodyBuilder();
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
