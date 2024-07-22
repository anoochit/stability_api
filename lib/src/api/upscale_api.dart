//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'dart:async';

import 'package:built_value/serializer.dart';
import 'package:dio/dio.dart';

import 'dart:typed_data';
import 'package:stability_api/src/api_util.dart';
import 'package:stability_api/src/model/content_moderation_response.dart';
import 'package:stability_api/src/model/inline_response200.dart';
import 'package:stability_api/src/model/inline_response2004.dart';
import 'package:stability_api/src/model/inline_response202.dart';
import 'package:stability_api/src/model/inline_response400.dart';
import 'package:stability_api/src/model/inline_response404.dart';
import 'package:stability_api/src/model/inline_response413.dart';
import 'package:stability_api/src/model/inline_response429.dart';
import 'package:stability_api/src/model/inline_response500.dart';

class UpscaleApi {
  final Dio _dio;

  final Serializers _serializers;

  const UpscaleApi(this._dio, this._serializers);

  /// Conservative
  /// Takes images between 64x64 and 1 megapixel and upscales them all the way to 4K resolution. Put more generally, it can upscale images ~20-40x times while preserving all aspects. Conservative Upscale minimizes alterations to the image and should not be used to reimagine an image.  ### Try it out Grab your [API key](https://platform.stability.ai/account/keys) and head over to [![Open Google Colab](https://platform.stability.ai/svg/google-colab.svg)](https://colab.research.google.com/github/stability-ai/stability-sdk/blob/main/nbs/Stable_Image_API_Public.ipynb#scrollTo&#x3D;t1Q4w2uvvza0)  ### How to use  Please invoke this endpoint with a &#x60;POST&#x60; request.  The headers of the request must include an API key in the &#x60;authorization&#x60; field. The body of the request must be &#x60;multipart/form-data&#x60;, and the &#x60;accept&#x60; header should be set to one of the following:   - &#x60;image/_*&#x60; to receive the image in the format specified by the &#x60;output_format&#x60; parameter.   - &#x60;application/json&#x60; to receive the image encoded as base64 in a JSON response.    The body of the request must include: - &#x60;image&#x60; - &#x60;prompt&#x60;  Optionally, the body of the request may also include: - &#x60;negative_prompt&#x60; - &#x60;seed&#x60; - &#x60;output_format&#x60; - &#x60;creativity&#x60;  &gt; **Note:** for more details about these parameters please see the request schema below.  ### Output The resolution of the generated image will be 4 megapixels.  ### Credits Flat rate of 25 credits per successful generation.  You will not be charged for failed generations.
  ///
  /// Parameters:
  /// * [authorization]
  /// * [contentType]
  /// * [accept]
  /// * [image] - The image you wish to upscale.  Supported Formats: - jpeg - png - webp  Validation Rules: - Every side must be at least 64 pixels - Total pixel count must be between 4,096 and 9,437,184 pixels - The aspect ratio must be between 1:2.5 and 2.5:1
  /// * [prompt] - What you wish to see in the output image. A strong, descriptive prompt that clearly defines  elements, colors, and subjects will lead to better results.   To control the weight of a given word use the format `(word:weight)`,  where `word` is the word you'd like to control the weight of and `weight`  is a value between 0 and 1. For example: `The sky was a crisp (blue:0.3) and (green:0.8)` would convey a sky that was blue and green, but more green than blue.
  /// * [negativePrompt] - A blurb of text describing what you **do not** wish to see in the output image.   This is an advanced feature.
  /// * [seed] - A specific value that is used to guide the 'randomness' of the generation. (Omit this parameter or pass `0` to use a random seed.)
  /// * [outputFormat] - Dictates the `content-type` of the generated image.
  /// * [creativity] - Controls the likelihood of creating additional details not heavily conditioned by the init image.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [Uint8List] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<Uint8List>> v2betaStableImageUpscaleConservativePost({
    required String authorization,
    required String contentType,
    String accept = 'image/*',
    required MultipartFile image,
    required String prompt,
    String? negativePrompt,
    num? seed,
    String? outputFormat,
    num? creativity,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/v2beta/stable-image/upscale/conservative';
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
        r'image': image,
        r'prompt':
            encodeFormParameter(_serializers, prompt, const FullType(String)),
        if (negativePrompt != null)
          r'negative_prompt': encodeFormParameter(
              _serializers, negativePrompt, const FullType(String)),
        if (seed != null)
          r'seed': encodeFormParameter(_serializers, seed, const FullType(num)),
        if (outputFormat != null)
          r'output_format': encodeFormParameter(
              _serializers, outputFormat, const FullType(String)),
        if (creativity != null)
          r'creativity': encodeFormParameter(
              _serializers, creativity, const FullType(num)),
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

  /// Start Creative Upscale
  /// Takes images between 64x64 and 1 megapixel and upscales them all the way to **4K** resolution.  Put more  generally, it can upscale images ~20-40x times while preserving, and often enhancing, quality.  Creative Upscale **works best on highly degraded images and is not for photos of 1mp or above** as it performs  heavy reimagining (controlled by creativity scale).  ### Try it out Grab your [API key](https://platform.stability.ai/account/keys) and head over to [![Open Google Colab](https://platform.stability.ai/svg/google-colab.svg)](https://colab.research.google.com/github/stability-ai/stability-sdk/blob/main/nbs/Stable_Image_API_Public.ipynb#scrollTo&#x3D;QXxi9tfI425t)   ### How to use Please invoke this endpoint with a &#x60;POST&#x60; request.  The headers of the request must include an API key in the &#x60;authorization&#x60; field. The body of the request must be &#x60;multipart/form-data&#x60;.  The body of the request should include: - &#x60;image&#x60; - &#x60;prompt&#x60;  The body may optionally include: - &#x60;seed&#x60; - &#x60;negative_prompt&#x60; - &#x60;output_format&#x60; - &#x60;creativity&#x60;  &gt; **Note:** for more details about these parameters please see the request schema below.  After invoking this endpoint with the required parameters, use the &#x60;id&#x60; in the response to poll for results at the [upscale/result/{id}](#tag/Upscale/paths/~1v2beta~1stable-image~1upscale~1creative~1result~1%7Bid%7D/get) endpoint.  Rate-limiting or other errors may occur if you poll more than once every 10 seconds.  ### Credits Flat rate of 25 credits per successful generation.  You will not be charged for failed generations.
  ///
  /// Parameters:
  /// * [authorization]
  /// * [contentType]
  /// * [image] - The image you wish to upscale.  Supported Formats: - jpeg - png - webp  Validation Rules: - Every side must be at least 64 pixels - Total pixel count must be between 4,096 and 1,048,576 pixels
  /// * [prompt] - What you wish to see in the output image. A strong, descriptive prompt that clearly defines  elements, colors, and subjects will lead to better results.   To control the weight of a given word use the format `(word:weight)`,  where `word` is the word you'd like to control the weight of and `weight`  is a value between 0 and 1. For example: `The sky was a crisp (blue:0.3) and (green:0.8)` would convey a sky that was blue and green, but more green than blue.
  /// * [negativePrompt] - A blurb of text describing what you **do not** wish to see in the output image.   This is an advanced feature.
  /// * [outputFormat] - Dictates the `content-type` of the generated image.
  /// * [seed] - A specific value that is used to guide the 'randomness' of the generation. (Omit this parameter or pass `0` to use a random seed.)
  /// * [creativity] - Indicates how creative the model should be when upscaling an image. Higher values will result in more details being added to the image during upscaling.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [InlineResponse200] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<InlineResponse200>> v2betaStableImageUpscaleCreativePost({
    required String authorization,
    required String contentType,
    required MultipartFile image,
    required String prompt,
    String? negativePrompt,
    String? outputFormat,
    num? seed,
    num? creativity,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/v2beta/stable-image/upscale/creative';
    final _options = Options(
      method: r'POST',
      headers: <String, dynamic>{
        r'authorization': authorization,
        r'content-type': contentType,
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
        r'image': image,
        r'prompt':
            encodeFormParameter(_serializers, prompt, const FullType(String)),
        if (negativePrompt != null)
          r'negative_prompt': encodeFormParameter(
              _serializers, negativePrompt, const FullType(String)),
        if (outputFormat != null)
          r'output_format': encodeFormParameter(
              _serializers, outputFormat, const FullType(String)),
        if (seed != null)
          r'seed': encodeFormParameter(_serializers, seed, const FullType(num)),
        if (creativity != null)
          r'creativity': encodeFormParameter(
              _serializers, creativity, const FullType(num)),
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

    InlineResponse200? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null
          ? null
          : _serializers.deserialize(
              rawResponse,
              specifiedType: const FullType(InlineResponse200),
            ) as InlineResponse200;
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<InlineResponse200>(
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

  /// Fetch Creative Upscale result
  /// Fetch the result of an upscale generation by ID.   Make sure to use the same API key to fetch the generation result that you used to create the generation,  otherwise you will receive a &#x60;404&#x60; response.  ### How to use Please invoke this endpoint with a &#x60;GET&#x60; request.  The headers of the request must include an API key in the &#x60;authorization&#x60; field and the ID of your generation must be in the path.  ### How is progress reported? Your generation is either &#x60;in-progress&#x60; (i.e. status code &#x60;202&#x60;) or it is complete (i.e. status code &#x60;200&#x60;).  We may add more fine-grained progress reporting in the future (e.g. a numerical progress).  ### How long are results stored? Results are stored for 24 hours after generation. After that, the results are deleted.
  ///
  /// Parameters:
  /// * [id]
  /// * [authorization]
  /// * [accept]
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [Uint8List] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<Uint8List>> v2betaStableImageUpscaleCreativeResultIdGet({
    required String id,
    required String authorization,
    String accept = 'image/*',
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/v2beta/stable-image/upscale/creative/result/{id}'
        .replaceAll(
            '{' r'id' '}',
            encodeQueryParameter(_serializers, id, const FullType(String))
                .toString());
    final _options = Options(
      method: r'GET',
      responseType: ResponseType.bytes,
      headers: <String, dynamic>{
        r'authorization': authorization,
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
      validateStatus: validateStatus,
    );

    final _response = await _dio.request<Object>(
      _path,
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
