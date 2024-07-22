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

class ControlApi {
  final Dio _dio;

  final Serializers _serializers;

  const ControlApi(this._dio, this._serializers);

  /// Sketch
  /// This service offers an ideal solution for design projects that require brainstorming and frequent iterations. It upgrades rough hand-drawn sketches to refined outputs with precise  control. For non-sketch images, it allows detailed manipulation of the final appearance by  leveraging the contour lines and edges within the image.  ### Try it out Grab your [API key](https://platform.stability.ai/account/keys) and head over to [![Open Google Colab](https://platform.stability.ai/svg/google-colab.svg)](https://colab.research.google.com/github/stability-ai/stability-sdk/blob/main/nbs/Stable_Image_API_Public.ipynb#scrollTo&#x3D;ZKIAqHzJzzUo)  ### How to use Please invoke this endpoint with a &#x60;POST&#x60; request.  The headers of the request must include an API key in the &#x60;authorization&#x60; field. The body of the request must be &#x60;multipart/form-data&#x60;, and the &#x60;accept&#x60; header should be set to one of the following:   - &#x60;image/_*&#x60; to receive the image in the format specified by the &#x60;output_format&#x60; parameter.   - &#x60;application/json&#x60; to receive the image encoded as base64 in a JSON response.  The body of the request should include: - &#x60;image&#x60; - &#x60;prompt&#x60;  The body may optionally include: - &#x60;control_strength&#x60; - &#x60;negative_prompt&#x60; - &#x60;seed&#x60; - &#x60;output_format&#x60;  &gt; **Note:** for more details about these parameters please see the request schema below.  ### Output The resolution of the generated image will match that of the input image.  ### Credits Flat rate of 3 credits per successful generation. You will not be charged for failed generations.
  ///
  /// Parameters:
  /// * [authorization]
  /// * [contentType]
  /// * [accept]
  /// * [prompt] - What you wish to see in the output image. A strong, descriptive prompt that clearly defines  elements, colors, and subjects will lead to better results.   To control the weight of a given word use the format `(word:weight)`,  where `word` is the word you'd like to control the weight of and `weight`  is a value between 0 and 1. For example: `The sky was a crisp (blue:0.3) and (green:0.8)` would convey a sky that was blue and green, but more green than blue.
  /// * [image] - Supported Formats: - jpeg - png - webp  Image Dimensions: - Every side must be at least 64 pixels - The total pixel count cannot exceed 9,437,184 pixels (e.g. 3072x3072, 4096x2304, etc.)  Image Aspect Ratio: - Must be between 1:2.5 and 2.5:1 (i.e. cannot be too tall or too wide)
  /// * [controlStrength] - How much influence, or control, the `image` has on the generation. Represented as a float between 0 and 1, where 0 is the least influence and 1 is the maximum.
  /// * [negativePrompt] - A blurb of text describing what you **do not** wish to see in the output image.   This is an advanced feature.
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
  Future<Response<Uint8List>> v2betaStableImageControlSketchPost({
    required String authorization,
    required String contentType,
    String accept = 'image/*',
    required String prompt,
    required MultipartFile image,
    num? controlStrength,
    String? negativePrompt,
    num? seed,
    String? outputFormat,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/v2beta/stable-image/control/sketch';
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
        r'image': image,
        if (controlStrength != null)
          r'control_strength': encodeFormParameter(
              _serializers, controlStrength, const FullType(num)),
        if (negativePrompt != null)
          r'negative_prompt': encodeFormParameter(
              _serializers, negativePrompt, const FullType(String)),
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

  /// Structure
  /// This service excels in generating images by maintaining the structure of an input image,  making it especially valuable for advanced content creation scenarios such as recreating  scenes or rendering characters from models.  ### Try it out Grab your [API key](https://platform.stability.ai/account/keys) and head over to [![Open Google Colab](https://platform.stability.ai/svg/google-colab.svg)](https://colab.research.google.com/github/stability-ai/stability-sdk/blob/main/nbs/Stable_Image_API_Public.ipynb#scrollTo&#x3D;59RaZazXz0AU)  ### How to use Please invoke this endpoint with a &#x60;POST&#x60; request.  The headers of the request must include an API key in the &#x60;authorization&#x60; field. The body of the request must be &#x60;multipart/form-data&#x60;, and the &#x60;accept&#x60; header should be set to one of the following:   - &#x60;image/_*&#x60; to receive the image in the format specified by the &#x60;output_format&#x60; parameter.   - &#x60;application/json&#x60; to receive the image encoded as base64 in a JSON response.  The body of the request should include: - &#x60;image&#x60; - &#x60;prompt&#x60;  The body may optionally include: - &#x60;control_strength&#x60; - &#x60;negative_prompt&#x60; - &#x60;seed&#x60; - &#x60;output_format&#x60;  &gt; **Note:** for more details about these parameters please see the request schema below.  ### Output The resolution of the generated image will match that of the input image.  ### Credits Flat rate of 3 credits per successful generation. You will not be charged for failed generations.
  ///
  /// Parameters:
  /// * [authorization]
  /// * [contentType]
  /// * [accept]
  /// * [prompt] - What you wish to see in the output image. A strong, descriptive prompt that clearly defines  elements, colors, and subjects will lead to better results.   To control the weight of a given word use the format `(word:weight)`,  where `word` is the word you'd like to control the weight of and `weight`  is a value between 0 and 1. For example: `The sky was a crisp (blue:0.3) and (green:0.8)` would convey a sky that was blue and green, but more green than blue.
  /// * [image] - An image whose structure you wish to use as the foundation for a generation.  Supported Formats: - jpeg - png - webp  Validation Rules: - Every side must be at least 64 pixels - Total pixel count must be between 4,096 and 9,437,184 pixels - The aspect ratio must be between 1:2.5 and 2.5:1
  /// * [controlStrength] - How much influence, or control, the `image` has on the generation. Represented as a float between 0 and 1, where 0 is the least influence and 1 is the maximum.
  /// * [negativePrompt] - A blurb of text describing what you **do not** wish to see in the output image.   This is an advanced feature.
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
  Future<Response<Uint8List>> v2betaStableImageControlStructurePost({
    required String authorization,
    required String contentType,
    String accept = 'image/*',
    required String prompt,
    required MultipartFile image,
    num? controlStrength,
    String? negativePrompt,
    num? seed,
    String? outputFormat,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/v2beta/stable-image/control/structure';
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
        r'image': image,
        if (controlStrength != null)
          r'control_strength': encodeFormParameter(
              _serializers, controlStrength, const FullType(num)),
        if (negativePrompt != null)
          r'negative_prompt': encodeFormParameter(
              _serializers, negativePrompt, const FullType(String)),
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
