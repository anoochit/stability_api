// //
// // AUTO-GENERATED FILE, DO NOT MODIFY!
// //

// import 'dart:async';

// import 'package:built_value/serializer.dart';
// import 'package:dio/dio.dart';

// import 'package:built_collection/built_collection.dart';
// import 'package:stability_api/src/api_util.dart';
// import 'package:stability_api/src/model/clip_guidance_preset.dart';
// import 'package:stability_api/src/model/error.dart';
// import 'package:stability_api/src/model/finish_reason.dart';
// import 'package:stability_api/src/model/init_image_mode.dart';
// import 'package:stability_api/src/model/inline_response2006.dart';
// import 'package:stability_api/src/model/sampler.dart';
// import 'package:stability_api/src/model/style_preset.dart';
// import 'package:stability_api/src/model/text_prompt.dart';
// import 'package:stability_api/src/model/text_to_image_request_body.dart';

// class SDXLSD16Api {
//   final Dio _dio;

//   final Serializers _serializers;

//   const SDXLSD16Api(this._dio, this._serializers);

//   /// Image-to-image with prompt
//   /// Produce an image from an existing image using a text prompt.  ### How to control strength of generation To preserve only roughly 35% of the initial image, pass in either &#x60;init_image_mode&#x3D;IMAGE_STRENGTH&#x60; and &#x60;image_strength&#x3D;0.35&#x60; or &#x60;init_image_mode&#x3D;STEP_SCHEDULE&#x60; and &#x60;step_schedule_start&#x3D;0.65&#x60;.  Both of these are equivalent, however &#x60;init_image_mode&#x3D;STEP_SCHEDULE&#x60; also lets you pass in &#x60;step_schedule_end&#x60;, which can provide an extra level of control for those who need it.  For more details, see the specific fields below.    &gt; NOTE: Only **Version 1** engines will work with this endpoint.
//   ///
//   /// Parameters:
//   /// * [engineId]
//   /// * [textPrompts] - An array of text prompts to use for generation.  Due to how arrays are represented in `multipart/form-data` requests, prompts must adhere to the format `text_prompts[index][text|weight]`, where `index` is some integer used to tie the text and weight together.  While `index` does not have to be sequential, duplicate entries  will override previous entries, so it is recommended to use sequential indices.  Given a text prompt with the text `A lighthouse on a cliff` and a weight of `0.5`, it would be represented as: ``` text_prompts[0][text]: \\\"A lighthouse on a cliff\\\" text_prompts[0][weight]: 0.5 ```  To add another prompt to that request simply provide the values under a new `index`:  ``` text_prompts[0][text]: \\\"A lighthouse on a cliff\\\" text_prompts[0][weight]: 0.5 text_prompts[1][text]: \\\"land, ground, dirt, grass\\\" text_prompts[1][weight]: -0.9 ```
//   /// * [initImage] - Image used to initialize the diffusion process, in lieu of random noise.
//   /// * [accept] - The format of the response.  Leave blank for JSON, or set to 'image/png' for a PNG image.
//   /// * [organization] - Allows for requests to be scoped to an organization other than the user's default.  If not provided, the user's default organization will be used.
//   /// * [stabilityClientID] - Used to identify the source of requests, such as the client application or sub-organization. Optional, but recommended for organizational clarity.
//   /// * [stabilityClientVersion] - Used to identify the version of the application or service making the requests. Optional, but recommended for organizational clarity.
//   /// * [initImageMode]
//   /// * [imageStrength] - How much influence the `init_image` has on the diffusion process. Values close to `1` will yield images very similar to the `init_image` while values close to `0` will yield images wildly different than the `init_image`. The behavior of this is meant to mirror DreamStudio's \\\"Image Strength\\\" slider.  <br/> <br/> This parameter is just an alternate way to set `step_schedule_start`, which is done via the calculation `1 - image_strength`. For example, passing in an Image Strength of 35% (`0.35`) would result in a `step_schedule_start` of `0.65`.
//   /// * [stepScheduleStart] - Skips a proportion of the start of the diffusion steps, allowing the init_image to influence the final generated image.  Lower values will result in more influence from the init_image, while higher values will result in more influence from the diffusion steps.  (e.g. a value of `0` would simply return you the init_image, where a value of `1` would return you a completely different image.)
//   /// * [stepScheduleEnd] - Skips a proportion of the end of the diffusion steps, allowing the init_image to influence the final generated image.  Lower values will result in more influence from the init_image, while higher values will result in more influence from the diffusion steps.
//   /// * [cfgScale] - How strictly the diffusion process adheres to the prompt text (higher values keep your image closer to your prompt)
//   /// * [clipGuidancePreset]
//   /// * [sampler]
//   /// * [samples] - Number of images to generate
//   /// * [seed] - Random noise seed (omit this option or use `0` for a random seed)
//   /// * [steps] - Number of diffusion steps to run.
//   /// * [stylePreset]
//   /// * [extras] - Extra parameters passed to the engine. These parameters are used for in-development or experimental features and may change without warning, so please use with caution.
//   /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
//   /// * [headers] - Can be used to add additional headers to the request
//   /// * [extras] - Can be used to add flags to the request
//   /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
//   /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
//   /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
//   ///
//   /// Returns a [Future] containing a [Response] with a [InlineResponse2006] as data
//   /// Throws [DioException] if API call or serialization fails
//   Future<Response<InlineResponse2006>> imageToImage({
//     required String engineId,
//     required BuiltList<TextPrompt> textPrompts,
//     required MultipartFile initImage,
//     String? accept = 'application/json',
//     String? organization,
//     String? stabilityClientID,
//     String? stabilityClientVersion,
//     InitImageMode? initImageMode,
//     double? imageStrength,
//     num? stepScheduleStart,
//     num? stepScheduleEnd,
//     num? cfgScale,
//     ClipGuidancePreset? clipGuidancePreset,
//     Sampler? sampler,
//     int? samples,
//     int? seed,
//     int? steps,
//     StylePreset? stylePreset,
//     JsonObject? extras,
//     CancelToken? cancelToken,
//     Map<String, dynamic>? headers,
//     Map<String, dynamic>? extra,
//     ValidateStatus? validateStatus,
//     ProgressCallback? onSendProgress,
//     ProgressCallback? onReceiveProgress,
//   }) async {
//     final _path = r'/v1/generation/{engine_id}/image-to-image'.replaceAll(
//         '{' r'engine_id' '}',
//         encodeQueryParameter(_serializers, engineId, const FullType(String))
//             .toString());
//     final _options = Options(
//       method: r'POST',
//       headers: <String, dynamic>{
//         if (accept != null) r'Accept': accept,
//         if (organization != null) r'Organization': organization,
//         if (stabilityClientID != null)
//           r'Stability-Client-ID': stabilityClientID,
//         if (stabilityClientVersion != null)
//           r'Stability-Client-Version': stabilityClientVersion,
//         ...?headers,
//       },
//       extra: <String, dynamic>{
//         'secure': <Map<String, String>>[
//           {
//             'type': 'apiKey',
//             'scheme': 'bearer',
//             'name': 'STABILITY_API_KEY',
//             'keyName': 'authorization',
//             'where': 'header',
//           },
//         ],
//         ...?extra,
//       },
//       contentType: 'multipart/form-data',
//       validateStatus: validateStatus,
//     );

//     dynamic _bodyData;

//     try {
//       _bodyData = FormData.fromMap(<String, dynamic>{
//         r'text_prompts': encodeFormParameter(_serializers, textPrompts,
//             const FullType(BuiltList, [FullType(TextPrompt)])),
//         r'init_image': initImage,
//         if (initImageMode != null)
//           r'init_image_mode': encodeFormParameter(
//               _serializers, initImageMode, const FullType(InitImageMode)),
//         if (imageStrength != null)
//           r'image_strength': encodeFormParameter(
//               _serializers, imageStrength, const FullType(double)),
//         if (stepScheduleStart != null)
//           r'step_schedule_start': encodeFormParameter(
//               _serializers, stepScheduleStart, const FullType(num)),
//         if (stepScheduleEnd != null)
//           r'step_schedule_end': encodeFormParameter(
//               _serializers, stepScheduleEnd, const FullType(num)),
//         if (cfgScale != null)
//           r'cfg_scale':
//               encodeFormParameter(_serializers, cfgScale, const FullType(num)),
//         if (clipGuidancePreset != null)
//           r'clip_guidance_preset': encodeFormParameter(_serializers,
//               clipGuidancePreset, const FullType(ClipGuidancePreset)),
//         if (sampler != null)
//           r'sampler': encodeFormParameter(
//               _serializers, sampler, const FullType(Sampler)),
//         if (samples != null)
//           r'samples':
//               encodeFormParameter(_serializers, samples, const FullType(int)),
//         if (seed != null)
//           r'seed': encodeFormParameter(_serializers, seed, const FullType(int)),
//         if (steps != null)
//           r'steps':
//               encodeFormParameter(_serializers, steps, const FullType(int)),
//         if (stylePreset != null)
//           r'style_preset': encodeFormParameter(
//               _serializers, stylePreset, const FullType(StylePreset)),
//         if (extras != null)
//           r'extras': encodeFormParameter(
//               _serializers, extras, const FullType(JsonObject)),
//       });
//     } catch (error, stackTrace) {
//       throw DioException(
//         requestOptions: _options.compose(
//           _dio.options,
//           _path,
//         ),
//         type: DioExceptionType.unknown,
//         error: error,
//         stackTrace: stackTrace,
//       );
//     }

//     final _response = await _dio.request<Object>(
//       _path,
//       data: _bodyData,
//       options: _options,
//       cancelToken: cancelToken,
//       onSendProgress: onSendProgress,
//       onReceiveProgress: onReceiveProgress,
//     );

//     InlineResponse2006? _responseData;

//     try {
//       final rawResponse = _response.data;
//       _responseData = rawResponse == null
//           ? null
//           : _serializers.deserialize(
//               rawResponse,
//               specifiedType: const FullType(InlineResponse2006),
//             ) as InlineResponse2006;
//     } catch (error, stackTrace) {
//       throw DioException(
//         requestOptions: _response.requestOptions,
//         response: _response,
//         type: DioExceptionType.unknown,
//         error: error,
//         stackTrace: stackTrace,
//       );
//     }

//     return Response<InlineResponse2006>(
//       data: _responseData,
//       headers: _response.headers,
//       isRedirect: _response.isRedirect,
//       requestOptions: _response.requestOptions,
//       redirects: _response.redirects,
//       statusCode: _response.statusCode,
//       statusMessage: _response.statusMessage,
//       extra: _response.extra,
//     );
//   }

//   /// Image-to-image with a mask
//   /// Selectively modify portions of an image using a mask. The &#x60;mask&#x60; must be the same shape and size as the init image. This endpoint also supports &#x60;image&#x60; parameters with alpha channels.  See below for more details.   &gt; NOTE: Only **Version 1** engines will work with this endpoint.
//   ///
//   /// Parameters:
//   /// * [engineId]
//   /// * [initImage] - Image used to initialize the diffusion process, in lieu of random noise.
//   /// * [maskSource] - For any given pixel, the mask determines the strength of generation on a linear scale.  This parameter determines where to source the mask from: - `MASK_IMAGE_WHITE` will use the white pixels of the mask_image as the mask, where white pixels are completely replaced and black pixels are unchanged - `MASK_IMAGE_BLACK` will use the black pixels of the mask_image as the mask, where black pixels are completely replaced and white pixels are unchanged - `INIT_IMAGE_ALPHA` will use the alpha channel of the init_image as the mask, where fully transparent pixels are completely replaced and fully opaque pixels are unchanged
//   /// * [textPrompts] - An array of text prompts to use for generation.  Due to how arrays are represented in `multipart/form-data` requests, prompts must adhere to the format `text_prompts[index][text|weight]`, where `index` is some integer used to tie the text and weight together.  While `index` does not have to be sequential, duplicate entries  will override previous entries, so it is recommended to use sequential indices.  Given a text prompt with the text `A lighthouse on a cliff` and a weight of `0.5`, it would be represented as: ``` text_prompts[0][text]: \\\"A lighthouse on a cliff\\\" text_prompts[0][weight]: 0.5 ```  To add another prompt to that request simply provide the values under a new `index`:  ``` text_prompts[0][text]: \\\"A lighthouse on a cliff\\\" text_prompts[0][weight]: 0.5 text_prompts[1][text]: \\\"land, ground, dirt, grass\\\" text_prompts[1][weight]: -0.9 ```
//   /// * [accept] - The format of the response.  Leave blank for JSON, or set to 'image/png' for a PNG image.
//   /// * [organization] - Allows for requests to be scoped to an organization other than the user's default.  If not provided, the user's default organization will be used.
//   /// * [stabilityClientID] - Used to identify the source of requests, such as the client application or sub-organization. Optional, but recommended for organizational clarity.
//   /// * [stabilityClientVersion] - Used to identify the version of the application or service making the requests. Optional, but recommended for organizational clarity.
//   /// * [maskImage] - Optional grayscale mask that allows for influence over which pixels are eligible for diffusion and at what strength. Must be the same dimensions as the `init_image`. Use the `mask_source` option to specify whether the white or black pixels should be inpainted.
//   /// * [cfgScale] - How strictly the diffusion process adheres to the prompt text (higher values keep your image closer to your prompt)
//   /// * [clipGuidancePreset]
//   /// * [sampler]
//   /// * [samples] - Number of images to generate
//   /// * [seed] - Random noise seed (omit this option or use `0` for a random seed)
//   /// * [steps] - Number of diffusion steps to run.
//   /// * [stylePreset]
//   /// * [extras] - Extra parameters passed to the engine. These parameters are used for in-development or experimental features and may change without warning, so please use with caution.
//   /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
//   /// * [headers] - Can be used to add additional headers to the request
//   /// * [extras] - Can be used to add flags to the request
//   /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
//   /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
//   /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
//   ///
//   /// Returns a [Future] containing a [Response] with a [InlineResponse2006] as data
//   /// Throws [DioException] if API call or serialization fails
//   Future<Response<InlineResponse2006>> masking({
//     required String engineId,
//     required MultipartFile initImage,
//     required String maskSource,
//     required BuiltList<TextPrompt> textPrompts,
//     String? accept = 'application/json',
//     String? organization,
//     String? stabilityClientID,
//     String? stabilityClientVersion,
//     MultipartFile? maskImage,
//     num? cfgScale,
//     ClipGuidancePreset? clipGuidancePreset,
//     Sampler? sampler,
//     int? samples,
//     int? seed,
//     int? steps,
//     StylePreset? stylePreset,
//     JsonObject? extras,
//     CancelToken? cancelToken,
//     Map<String, dynamic>? headers,
//     Map<String, dynamic>? extra,
//     ValidateStatus? validateStatus,
//     ProgressCallback? onSendProgress,
//     ProgressCallback? onReceiveProgress,
//   }) async {
//     final _path = r'/v1/generation/{engine_id}/image-to-image/masking'
//         .replaceAll(
//             '{' r'engine_id' '}',
//             encodeQueryParameter(_serializers, engineId, const FullType(String))
//                 .toString());
//     final _options = Options(
//       method: r'POST',
//       headers: <String, dynamic>{
//         if (accept != null) r'Accept': accept,
//         if (organization != null) r'Organization': organization,
//         if (stabilityClientID != null)
//           r'Stability-Client-ID': stabilityClientID,
//         if (stabilityClientVersion != null)
//           r'Stability-Client-Version': stabilityClientVersion,
//         ...?headers,
//       },
//       extra: <String, dynamic>{
//         'secure': <Map<String, String>>[
//           {
//             'type': 'apiKey',
//             'scheme': 'bearer',
//             'name': 'STABILITY_API_KEY',
//             'keyName': 'authorization',
//             'where': 'header',
//           },
//         ],
//         ...?extra,
//       },
//       contentType: 'multipart/form-data',
//       validateStatus: validateStatus,
//     );

//     dynamic _bodyData;

//     try {
//       _bodyData = FormData.fromMap(<String, dynamic>{
//         r'init_image': initImage,
//         r'mask_source': encodeFormParameter(
//             _serializers, maskSource, const FullType(String)),
//         if (maskImage != null) r'mask_image': maskImage,
//         r'text_prompts': encodeFormParameter(_serializers, textPrompts,
//             const FullType(BuiltList, [FullType(TextPrompt)])),
//         if (cfgScale != null)
//           r'cfg_scale':
//               encodeFormParameter(_serializers, cfgScale, const FullType(num)),
//         if (clipGuidancePreset != null)
//           r'clip_guidance_preset': encodeFormParameter(_serializers,
//               clipGuidancePreset, const FullType(ClipGuidancePreset)),
//         if (sampler != null)
//           r'sampler': encodeFormParameter(
//               _serializers, sampler, const FullType(Sampler)),
//         if (samples != null)
//           r'samples':
//               encodeFormParameter(_serializers, samples, const FullType(int)),
//         if (seed != null)
//           r'seed': encodeFormParameter(_serializers, seed, const FullType(int)),
//         if (steps != null)
//           r'steps':
//               encodeFormParameter(_serializers, steps, const FullType(int)),
//         if (stylePreset != null)
//           r'style_preset': encodeFormParameter(
//               _serializers, stylePreset, const FullType(StylePreset)),
//         if (extras != null)
//           r'extras': encodeFormParameter(
//               _serializers, extras, const FullType(JsonObject)),
//       });
//     } catch (error, stackTrace) {
//       throw DioException(
//         requestOptions: _options.compose(
//           _dio.options,
//           _path,
//         ),
//         type: DioExceptionType.unknown,
//         error: error,
//         stackTrace: stackTrace,
//       );
//     }

//     final _response = await _dio.request<Object>(
//       _path,
//       data: _bodyData,
//       options: _options,
//       cancelToken: cancelToken,
//       onSendProgress: onSendProgress,
//       onReceiveProgress: onReceiveProgress,
//     );

//     InlineResponse2006? _responseData;

//     try {
//       final rawResponse = _response.data;
//       _responseData = rawResponse == null
//           ? null
//           : _serializers.deserialize(
//               rawResponse,
//               specifiedType: const FullType(InlineResponse2006),
//             ) as InlineResponse2006;
//     } catch (error, stackTrace) {
//       throw DioException(
//         requestOptions: _response.requestOptions,
//         response: _response,
//         type: DioExceptionType.unknown,
//         error: error,
//         stackTrace: stackTrace,
//       );
//     }

//     return Response<InlineResponse2006>(
//       data: _responseData,
//       headers: _response.headers,
//       isRedirect: _response.isRedirect,
//       requestOptions: _response.requestOptions,
//       redirects: _response.redirects,
//       statusCode: _response.statusCode,
//       statusMessage: _response.statusMessage,
//       extra: _response.extra,
//     );
//   }

//   /// Text-to-image
//   /// Generate an image from a text prompt.  ### Using SDXL 1.0 Use &#x60;stable-diffusion-xl-1024-v1-0&#x60; as the &#x60;engine_id&#x60; of your request and pass in &#x60;height&#x60; &amp; &#x60;width&#x60; as one of the following combinations: - 1024x1024 - 1152x896 - 896x1152 - 1216x832 - 1344x768 - 768x1344 - 1536x640 - 640x1536.   ### Using SD 1.6 Pass in &#x60;stable-diffusion-v1-6&#x60; as the &#x60;engine_id&#x60; of your request and ensure the &#x60;height&#x60; &amp; &#x60;width&#x60; you pass in adhere to the following restrictions: - No dimension can be less than 320 pixels - No dimension can be greater than 1536 pixels  ### Using SD Beta Pass in &#x60;stable-diffusion-xl-beta-v2-2-2&#x60; as the &#x60;engine_id&#x60; of your request and ensure the &#x60;height&#x60; &amp; &#x60;width&#x60; you pass in adhere to the following restrictions: - dimensions must be between 128x128 and 512x896 (or 896x512) - only one dimension can be greater than 512, but not both   &gt; NOTE: Only **Version 1** engines will work with this endpoint.
//   ///
//   /// Parameters:
//   /// * [engineId]
//   /// * [textToImageRequestBody]
//   /// * [accept] - The format of the response.  Leave blank for JSON, or set to 'image/png' for a PNG image.
//   /// * [organization] - Allows for requests to be scoped to an organization other than the user's default.  If not provided, the user's default organization will be used.
//   /// * [stabilityClientID] - Used to identify the source of requests, such as the client application or sub-organization. Optional, but recommended for organizational clarity.
//   /// * [stabilityClientVersion] - Used to identify the version of the application or service making the requests. Optional, but recommended for organizational clarity.
//   /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
//   /// * [headers] - Can be used to add additional headers to the request
//   /// * [extras] - Can be used to add flags to the request
//   /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
//   /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
//   /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
//   ///
//   /// Returns a [Future] containing a [Response] with a [InlineResponse2006] as data
//   /// Throws [DioException] if API call or serialization fails
//   Future<Response<InlineResponse2006>> textToImage({
//     required String engineId,
//     required TextToImageRequestBody textToImageRequestBody,
//     String? accept = 'application/json',
//     String? organization,
//     String? stabilityClientID,
//     String? stabilityClientVersion,
//     CancelToken? cancelToken,
//     Map<String, dynamic>? headers,
//     Map<String, dynamic>? extra,
//     ValidateStatus? validateStatus,
//     ProgressCallback? onSendProgress,
//     ProgressCallback? onReceiveProgress,
//   }) async {
//     final _path = r'/v1/generation/{engine_id}/text-to-image'.replaceAll(
//         '{' r'engine_id' '}',
//         encodeQueryParameter(_serializers, engineId, const FullType(String))
//             .toString());
//     final _options = Options(
//       method: r'POST',
//       headers: <String, dynamic>{
//         if (accept != null) r'Accept': accept,
//         if (organization != null) r'Organization': organization,
//         if (stabilityClientID != null)
//           r'Stability-Client-ID': stabilityClientID,
//         if (stabilityClientVersion != null)
//           r'Stability-Client-Version': stabilityClientVersion,
//         ...?headers,
//       },
//       extra: <String, dynamic>{
//         'secure': <Map<String, String>>[
//           {
//             'type': 'apiKey',
//             'scheme': 'bearer',
//             'name': 'STABILITY_API_KEY',
//             'keyName': 'authorization',
//             'where': 'header',
//           },
//         ],
//         ...?extra,
//       },
//       contentType: 'application/json',
//       validateStatus: validateStatus,
//     );

//     dynamic _bodyData;

//     try {
//       const _type = FullType(TextToImageRequestBody);
//       _bodyData =
//           _serializers.serialize(textToImageRequestBody, specifiedType: _type);
//     } catch (error, stackTrace) {
//       throw DioException(
//         requestOptions: _options.compose(
//           _dio.options,
//           _path,
//         ),
//         type: DioExceptionType.unknown,
//         error: error,
//         stackTrace: stackTrace,
//       );
//     }

//     final _response = await _dio.request<Object>(
//       _path,
//       data: _bodyData,
//       options: _options,
//       cancelToken: cancelToken,
//       onSendProgress: onSendProgress,
//       onReceiveProgress: onReceiveProgress,
//     );

//     InlineResponse2006? _responseData;

//     try {
//       final rawResponse = _response.data;
//       _responseData = rawResponse == null
//           ? null
//           : _serializers.deserialize(
//               rawResponse,
//               specifiedType: const FullType(InlineResponse2006),
//             ) as InlineResponse2006;
//     } catch (error, stackTrace) {
//       throw DioException(
//         requestOptions: _response.requestOptions,
//         response: _response,
//         type: DioExceptionType.unknown,
//         error: error,
//         stackTrace: stackTrace,
//       );
//     }

//     return Response<InlineResponse2006>(
//       data: _responseData,
//       headers: _response.headers,
//       isRedirect: _response.isRedirect,
//       requestOptions: _response.requestOptions,
//       redirects: _response.redirects,
//       statusCode: _response.statusCode,
//       statusMessage: _response.statusMessage,
//       extra: _response.extra,
//     );
//   }

//   /// Image-to-image upscale
//   /// Create a higher resolution version of an input image.  This operation outputs an image with a maximum pixel count of **4,194,304**. This is equivalent to dimensions such as &#x60;2048x2048&#x60; and &#x60;4096x1024&#x60;.  By default, the input image will be upscaled by a factor of 2.  For additional control over the output dimensions, a &#x60;width&#x60; or &#x60;height&#x60; parameter may be specified.
//   ///
//   /// Parameters:
//   /// * [engineId]
//   /// * [image] - The image to upscale using ESRGAN.
//   /// * [accept] - The format of the response.  Leave blank for JSON, or set to 'image/png' for a PNG image.
//   /// * [organization] - Allows for requests to be scoped to an organization other than the user's default.  If not provided, the user's default organization will be used.
//   /// * [stabilityClientID] - Used to identify the source of requests, such as the client application or sub-organization. Optional, but recommended for organizational clarity.
//   /// * [stabilityClientVersion] - Used to identify the version of the application or service making the requests. Optional, but recommended for organizational clarity.
//   /// * [width] - Desired width of the output image.  Only one of `width` or `height` may be specified.
//   /// * [height] - Desired height of the output image.  Only one of `width` or `height` may be specified.
//   /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
//   /// * [headers] - Can be used to add additional headers to the request
//   /// * [extras] - Can be used to add flags to the request
//   /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
//   /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
//   /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
//   ///
//   /// Returns a [Future] containing a [Response] with a [InlineResponse2006] as data
//   /// Throws [DioException] if API call or serialization fails
//   Future<Response<InlineResponse2006>> upscaleImage({
//     required String engineId,
//     required MultipartFile image,
//     String? accept = 'application/json',
//     String? organization,
//     String? stabilityClientID,
//     String? stabilityClientVersion,
//     int? width,
//     int? height,
//     CancelToken? cancelToken,
//     Map<String, dynamic>? headers,
//     Map<String, dynamic>? extra,
//     ValidateStatus? validateStatus,
//     ProgressCallback? onSendProgress,
//     ProgressCallback? onReceiveProgress,
//   }) async {
//     final _path = r'/v1/generation/{engine_id}/image-to-image/upscale'
//         .replaceAll(
//             '{' r'engine_id' '}',
//             encodeQueryParameter(_serializers, engineId, const FullType(String))
//                 .toString());
//     final _options = Options(
//       method: r'POST',
//       headers: <String, dynamic>{
//         if (accept != null) r'Accept': accept,
//         if (organization != null) r'Organization': organization,
//         if (stabilityClientID != null)
//           r'Stability-Client-ID': stabilityClientID,
//         if (stabilityClientVersion != null)
//           r'Stability-Client-Version': stabilityClientVersion,
//         ...?headers,
//       },
//       extra: <String, dynamic>{
//         'secure': <Map<String, String>>[
//           {
//             'type': 'apiKey',
//             'scheme': 'bearer',
//             'name': 'STABILITY_API_KEY',
//             'keyName': 'authorization',
//             'where': 'header',
//           },
//         ],
//         ...?extra,
//       },
//       contentType: 'multipart/form-data',
//       validateStatus: validateStatus,
//     );

//     dynamic _bodyData;

//     try {
//       _bodyData = FormData.fromMap(<String, dynamic>{
//         r'image': image,
//         if (width != null)
//           r'width':
//               encodeFormParameter(_serializers, width, const FullType(int)),
//         if (height != null)
//           r'height':
//               encodeFormParameter(_serializers, height, const FullType(int)),
//       });
//     } catch (error, stackTrace) {
//       throw DioException(
//         requestOptions: _options.compose(
//           _dio.options,
//           _path,
//         ),
//         type: DioExceptionType.unknown,
//         error: error,
//         stackTrace: stackTrace,
//       );
//     }

//     final _response = await _dio.request<Object>(
//       _path,
//       data: _bodyData,
//       options: _options,
//       cancelToken: cancelToken,
//       onSendProgress: onSendProgress,
//       onReceiveProgress: onReceiveProgress,
//     );

//     InlineResponse2006? _responseData;

//     try {
//       final rawResponse = _response.data;
//       _responseData = rawResponse == null
//           ? null
//           : _serializers.deserialize(
//               rawResponse,
//               specifiedType: const FullType(InlineResponse2006),
//             ) as InlineResponse2006;
//     } catch (error, stackTrace) {
//       throw DioException(
//         requestOptions: _response.requestOptions,
//         response: _response,
//         type: DioExceptionType.unknown,
//         error: error,
//         stackTrace: stackTrace,
//       );
//     }

//     return Response<InlineResponse2006>(
//       data: _responseData,
//       headers: _response.headers,
//       isRedirect: _response.isRedirect,
//       requestOptions: _response.requestOptions,
//       redirects: _response.redirects,
//       statusCode: _response.statusCode,
//       statusMessage: _response.statusMessage,
//       extra: _response.extra,
//     );
//   }
// }
