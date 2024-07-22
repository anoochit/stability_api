//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'dart:async';

import 'package:built_value/serializer.dart';
import 'package:dio/dio.dart';

import 'dart:typed_data';
import 'package:stability_api/src/api_util.dart';
import 'package:stability_api/src/model/content_moderation_response.dart';
import 'package:stability_api/src/model/inline_response2004.dart';
import 'package:stability_api/src/model/inline_response400.dart';
import 'package:stability_api/src/model/inline_response413.dart';
import 'package:stability_api/src/model/inline_response429.dart';
import 'package:stability_api/src/model/inline_response500.dart';

class GenerateApi {
  final Dio _dio;

  final Serializers _serializers;

  const GenerateApi(this._dio, this._serializers);

  /// Stable Image Core
  /// Our primary service for text-to-image generation, Stable Image Core represents the best quality achievable at high  speed. No prompt engineering is required! Try asking for a style, a scene, or a character, and see what you get.  ### Try it out Grab your [API key](https://platform.stability.ai/account/keys) and head over to [![Open Google Colab](https://platform.stability.ai/svg/google-colab.svg)](https://colab.research.google.com/github/stability-ai/stability-sdk/blob/main/nbs/Stable_Image_API_Public.ipynb#scrollTo&#x3D;yXhs626oZdr1)  ### How to use Please invoke this endpoint with a &#x60;POST&#x60; request.  The headers of the request must include an API key in the &#x60;authorization&#x60; field. The body of the request must be &#x60;multipart/form-data&#x60;, and the &#x60;accept&#x60; header should be set to one of the following:   - &#x60;image/_*&#x60; to receive the image in the format specified by the &#x60;output_format&#x60; parameter.   - &#x60;application/json&#x60; to receive the image encoded as base64 in a JSON response.  The body of the request should include: - &#x60;prompt&#x60;  The body may optionally include: - &#x60;aspect_ratio&#x60; - &#x60;negative_prompt&#x60; - &#x60;seed&#x60; - &#x60;style_preset&#x60; - &#x60;output_format&#x60;  &gt; **Note:** for more details about these parameters please see the request schema below.  ### Output The resolution of the generated image will be 1.5 megapixels.  ### Credits Flat rate of 3 credits per successful generation.  You will not be charged for failed generations.
  ///
  /// Parameters:
  /// * [authorization]
  /// * [contentType]
  /// * [accept]
  /// * [prompt] - What you wish to see in the output image. A strong, descriptive prompt that clearly defines  elements, colors, and subjects will lead to better results.   To control the weight of a given word use the format `(word:weight)`,  where `word` is the word you'd like to control the weight of and `weight`  is a value between 0 and 1. For example: `The sky was a crisp (blue:0.3) and (green:0.8)` would convey a sky that was blue and green, but more green than blue.
  /// * [aspectRatio] - Controls the aspect ratio of the generated image.
  /// * [negativePrompt] - A blurb of text describing what you **do not** wish to see in the output image.   This is an advanced feature.
  /// * [seed] - A specific value that is used to guide the 'randomness' of the generation. (Omit this parameter or pass `0` to use a random seed.)
  /// * [stylePreset] - Guides the image model towards a particular style.
  /// * [outputFormat] - Dictates the `content-type` of the generated image.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [Uint8List] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<Uint8List>> v2betaStableImageGenerateCorePost({
    required String authorization,
    required String contentType,
    String accept = 'image/*',
    required String prompt,
    String? aspectRatio,
    String? negativePrompt,
    num? seed,
    String? stylePreset,
    String? outputFormat,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/v2beta/stable-image/generate/core';
    final _options = Options(
      method: r'POST',
      responseType: ResponseType.bytes,
      headers: <String, dynamic>{
        r'authorization': authorization,
        r'content-type': contentType,
        r'accept': accept,
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'apiKey',
            'scheme': 'bearer',
            'name': 'STABILITY_API_KEY',
            'keyName': 'authorization',
            'where': 'header',
          },
        ],
        ...?extra,
      },
      contentType: 'multipart/form-data',
      validateStatus: validateStatus,
    );

    dynamic _bodyData;

    try {
      _bodyData = FormData.fromMap(<String, dynamic>{
        r'prompt':
            encodeFormParameter(_serializers, prompt, const FullType(String)),
        if (aspectRatio != null)
          r'aspect_ratio': encodeFormParameter(
              _serializers, aspectRatio, const FullType(String)),
        if (negativePrompt != null)
          r'negative_prompt': encodeFormParameter(
              _serializers, negativePrompt, const FullType(String)),
        if (seed != null)
          r'seed': encodeFormParameter(_serializers, seed, const FullType(num)),
        if (stylePreset != null)
          r'style_preset': encodeFormParameter(
              _serializers, stylePreset, const FullType(String)),
        if (outputFormat != null)
          r'output_format': encodeFormParameter(
              _serializers, outputFormat, const FullType(String)),
      });
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _options.compose(
          _dio.options,
          _path,
        ),
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    final _response = await _dio.request<Object>(
      _path,
      data: _bodyData,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    Uint8List? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : rawResponse as Uint8List;
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<Uint8List>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// Stable Diffusion 3
  /// Generate an image using a Stable Diffusion 3 model: - SD3 Medium - the 2 billion parameter model - SD3 Large - the 8 billion parameter model - SD3 Large Turbo - the 8 billion parameter model with a faster inference time   This API is powered by [Fireworks AI](https://fireworks.ai/).  API status can be reviewed [here](https://readme.fireworks.ai/page/application-status).   ### Try it out Grab your [API key](https://platform.stability.ai/account/keys) and head over to one of the following sites:     - [![Open Fireworks Playground](https://platform.stability.ai/svg/fireworks.svg)](https://fireworks.ai/models/stability/sd3) - [![Open Google Colab](https://platform.stability.ai/svg/google-colab.svg)](https://colab.research.google.com/github/stability-ai/stability-sdk/blob/main/nbs/SD3_API.ipynb)   ### How to use Please invoke this endpoint with a &#x60;POST&#x60; request.  The headers of the request must include an API key in the &#x60;authorization&#x60; field. The body of the request must be &#x60;multipart/form-data&#x60;.  The accept header should be set to one of the following: - &#x60;image/_*&#x60; to receive the image in the format specified by the &#x60;output_format&#x60; parameter. - &#x60;application/json&#x60; to receive the image encoded as base64 in a JSON response.  #### **Generating with a prompt** Commonly referred to as **text-to-image**, this mode generates an image from text alone. While the only required   parameter is the &#x60;prompt&#x60;, it also supports an &#x60;aspect_ratio&#x60; parameter which can be used to control the  aspect ratio of the generated image.  #### **Generating with a prompt *and* an image** Commonly referred to as **image-to-image**, this mode also generates an image from text but uses an existing image as the starting point. The required parameters are: - &#x60;prompt&#x60; - text to generate the image from - &#x60;image&#x60; - the image to use as the starting point for the generation - &#x60;strength&#x60; - controls how much influence the &#x60;image&#x60; parameter has on the output image - &#x60;mode&#x60; - must be set to &#x60;image-to-image&#x60;  &gt; **Note:** maximum request size is 10MiB.  #### **Optional Parameters:** Both modes support the following optional parameters: - &#x60;model&#x60; - the model to use (SD3 Medium, SD3 Large, or SD3 Large Turbo) - &#x60;output_format&#x60; - the the format of the output image - &#x60;seed&#x60; - the randomness seed to use for the generation - &#x60;negative_prompt&#x60; - keywords of what you **do not** wish to see in the output image  &gt; **Note:** for more details about these parameters please see the request schema below.  ### Output The resolution of the generated image will be 1MP. The default resolution is 1024x1024.  ### Credits - SD3 Medium: Flat rate of 3.5 credits per successful generation. - SD3 Large: Flat rate of 6.5 credits per successful generation. - SD3 Large Turbo: Flat rate of 4 credits per successful generation.  As always, you will not be charged for failed generations.
  ///
  /// Parameters:
  /// * [authorization]
  /// * [contentType]
  /// * [accept]
  /// * [prompt] - What you wish to see in the output image. A strong, descriptive prompt that clearly defines elements, colors, and subjects will lead to better results.
  /// * [mode] - Controls whether this is a text-to-image or image-to-image generation, which affects which parameters are required: - **text-to-image** requires only the `prompt` parameter - **image-to-image** requires the `prompt`, `image`, and `strength` parameters
  /// * [image] - The image to use as the starting point for the generation.  Supported formats:   - jpeg   - png   - webp  Supported dimensions:   - Every side must be at least 64 pixels    > **Important:** This parameter is only valid for **image-to-image** requests.
  /// * [strength] - Sometimes referred to as _denoising_, this parameter controls how much influence the  `image` parameter has on the generated image.  A value of 0 would yield an image that  is identical to the input.  A value of 1 would be as if you passed in no image at all.  > **Important:** This parameter is only valid for **image-to-image** requests.
  /// * [aspectRatio] - Controls the aspect ratio of the generated image. Defaults to 1:1.  > **Important:** This parameter is only valid for **text-to-image** requests.
  /// * [model] - The model to use for generation.  - `sd3-medium` requires 3.5 credits per generation - `sd3-large` requires 6.5 credits per generation - `sd3-large-turbo` requires 4 credits per generation
  /// * [seed] - A specific value that is used to guide the 'randomness' of the generation. (Omit this parameter or pass `0` to use a random seed.)
  /// * [outputFormat] - Dictates the `content-type` of the generated image.
  /// * [negativePrompt] - Keywords of what you **do not** wish to see in the output image. This is an advanced feature.  > **Important:** This parameter does **not** work with `sd3-large-turbo`.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [Uint8List] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<Uint8List>> v2betaStableImageGenerateSd3Post({
    required String authorization,
    required String contentType,
    String accept = 'image/*',
    required String prompt,
    String? mode,
    MultipartFile? image,
    num? strength,
    String? aspectRatio,
    String? model,
    num? seed,
    String? outputFormat,
    String? negativePrompt,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/v2beta/stable-image/generate/sd3';
    final _options = Options(
      method: r'POST',
      responseType: ResponseType.bytes,
      headers: <String, dynamic>{
        r'authorization': authorization,
        r'content-type': contentType,
        r'accept': accept,
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'apiKey',
            'scheme': 'bearer',
            'name': 'STABILITY_API_KEY',
            'keyName': 'authorization',
            'where': 'header',
          },
        ],
        ...?extra,
      },
      contentType: 'multipart/form-data',
      validateStatus: validateStatus,
    );

    dynamic _bodyData;

    try {
      _bodyData = FormData.fromMap(<String, dynamic>{
        r'prompt':
            encodeFormParameter(_serializers, prompt, const FullType(String)),
        if (mode != null)
          r'mode':
              encodeFormParameter(_serializers, mode, const FullType(String)),
        if (image != null) r'image': image,
        if (strength != null)
          r'strength':
              encodeFormParameter(_serializers, strength, const FullType(num)),
        if (aspectRatio != null)
          r'aspect_ratio': encodeFormParameter(
              _serializers, aspectRatio, const FullType(String)),
        if (model != null)
          r'model':
              encodeFormParameter(_serializers, model, const FullType(String)),
        if (seed != null)
          r'seed': encodeFormParameter(_serializers, seed, const FullType(num)),
        if (outputFormat != null)
          r'output_format': encodeFormParameter(
              _serializers, outputFormat, const FullType(String)),
        if (negativePrompt != null)
          r'negative_prompt': encodeFormParameter(
              _serializers, negativePrompt, const FullType(String)),
      });
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _options.compose(
          _dio.options,
          _path,
        ),
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    final _response = await _dio.request<Object>(
      _path,
      data: _bodyData,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    Uint8List? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : rawResponse as Uint8List;
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<Uint8List>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// Stable Image Ultra
  /// Our most advanced text to image generation service, Stable Image Ultra creates the highest quality images with unprecedented prompt understanding. Ultra excels in typography, complex compositions, dynamic lighting,  vibrant hues, and overall cohesion and structure of an art piece. Made from the most advanced models, including Stable Diffusion 3, Ultra offers the best of the Stable Diffusion ecosystem.  ### Try it out Grab your [API key](https://platform.stability.ai/account/keys) and head over to [![Open Google Colab](https://platform.stability.ai/svg/google-colab.svg)](https://colab.research.google.com/github/stability-ai/stability-sdk/blob/main/nbs/Stable_Image_API_Public.ipynb#scrollTo&#x3D;yXhs626oZdr1)  ### How to use Please invoke this endpoint with a &#x60;POST&#x60; request.  The headers of the request must include an API key in the &#x60;authorization&#x60; field. The body of the request must be &#x60;multipart/form-data&#x60;.  The accept header should be set to one of the following: - &#x60;image/_*&#x60; to receive the image in the format specified by the &#x60;output_format&#x60; parameter. - &#x60;application/json&#x60; to receive the image in the format specified by the &#x60;output_format&#x60; parameter, but encoded to base64 in a JSON response.  The only required parameter is the &#x60;prompt&#x60; field, which should contain the text prompt for the image generation.  &gt; **Note:** for the full list of optional parameters, please see the request schema below.  ### Output The resolution of the generated image will be 1 megapixel. The default resolution is 1024x1024.  ### Credits The Ultra service uses 8 credits per successful result. You will not be charged for failed results.
  ///
  /// Parameters:
  /// * [authorization]
  /// * [contentType]
  /// * [accept]
  /// * [prompt] - What you wish to see in the output image. A strong, descriptive prompt that clearly defines  elements, colors, and subjects will lead to better results.   To control the weight of a given word use the format `(word:weight)`,  where `word` is the word you'd like to control the weight of and `weight`  is a value between 0 and 1. For example: `The sky was a crisp (blue:0.3) and (green:0.8)` would convey a sky that was blue and green, but more green than blue.
  /// * [negativePrompt] - A blurb of text describing what you **do not** wish to see in the output image.   This is an advanced feature.
  /// * [aspectRatio] - Controls the aspect ratio of the generated image.
  /// * [seed] - A specific value that is used to guide the 'randomness' of the generation. (Omit this parameter or pass `0` to use a random seed.)
  /// * [outputFormat] - Dictates the `content-type` of the generated image.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [Uint8List] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<Uint8List>> v2betaStableImageGenerateUltraPost({
    required String authorization,
    required String contentType,
    String accept = 'image/*',
    required String prompt,
    String? negativePrompt,
    String? aspectRatio,
    num? seed,
    String? outputFormat,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/v2beta/stable-image/generate/ultra';
    final _options = Options(
      method: r'POST',
      responseType: ResponseType.bytes,
      headers: <String, dynamic>{
        r'authorization': authorization,
        r'content-type': contentType,
        r'accept': accept,
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'apiKey',
            'scheme': 'bearer',
            'name': 'STABILITY_API_KEY',
            'keyName': 'authorization',
            'where': 'header',
          },
        ],
        ...?extra,
      },
      contentType: 'multipart/form-data',
      validateStatus: validateStatus,
    );

    dynamic _bodyData;

    try {
      _bodyData = FormData.fromMap(<String, dynamic>{
        r'prompt':
            encodeFormParameter(_serializers, prompt, const FullType(String)),
        if (negativePrompt != null)
          r'negative_prompt': encodeFormParameter(
              _serializers, negativePrompt, const FullType(String)),
        if (aspectRatio != null)
          r'aspect_ratio': encodeFormParameter(
              _serializers, aspectRatio, const FullType(String)),
        if (seed != null)
          r'seed': encodeFormParameter(_serializers, seed, const FullType(num)),
        if (outputFormat != null)
          r'output_format': encodeFormParameter(
              _serializers, outputFormat, const FullType(String)),
      });
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _options.compose(
          _dio.options,
          _path,
        ),
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    final _response = await _dio.request<Object>(
      _path,
      data: _bodyData,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    Uint8List? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : rawResponse as Uint8List;
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<Uint8List>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }
}
