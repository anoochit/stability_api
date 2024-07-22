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
import 'package:stability_api/src/model/inline_response2001.dart';
import 'package:stability_api/src/model/inline_response2002.dart';
import 'package:stability_api/src/model/inline_response202.dart';
import 'package:stability_api/src/model/inline_response400.dart';
import 'package:stability_api/src/model/inline_response404.dart';
import 'package:stability_api/src/model/inline_response500.dart';

class V2alphaGenerationApi {
  final Dio _dio;

  final Serializers _serializers;

  const V2alphaGenerationApi(this._dio, this._serializers);

  /// image-to-video
  /// Generate a short video based on an initial image with [Stable Video Diffusion](https://static1.squarespace.com/static/6213c340453c3f502425776e/t/655ce779b9d47d342a93c890/1700587395994/stable_video_diffusion.pdf), a latent video diffusion model.     ### How to generate a video Video generations are asynchronous, so after starting a generation use the &#x60;id&#x60; returned in the response to poll [/v2alpha/generation/image-to-video/result/{id}](#tag/v2alphageneration/paths/~1v2alpha~1generation~1image-to-video~1result~1%7Bid%7D/get) for results.  ### Price Flat rate of 20 cents per generation.
  ///
  /// Parameters:
  /// * [authorization]
  /// * [contentType]
  /// * [image] - The source image used in the video generation process.  Supported Formats: - jpeg - png  Supported Dimensions: - 1024x576 - 576x1024 - 768x768
  /// * [seed] - A specific value that is used to guide the 'randomness' of the generation. (Omit this parameter or pass `0` to use a random seed.)
  /// * [cfgScale] - How strongly the video sticks to the original image. Use lower values to allow the model more freedom to make changes and higher values to correct motion distortions.
  /// * [motionBucketId] - Lower values generally result in less motion in the output video, while higher values generally result in more motion. This parameter corresponds to the motion_bucket_id parameter from the [paper](https://static1.squarespace.com/static/6213c340453c3f502425776e/t/655ce779b9d47d342a93c890/1700587395994/stable_video_diffusion.pdf).
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [InlineResponse200] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<InlineResponse200>> v2alphaGenerationImageToVideoPost({
    required String authorization,
    required String contentType,
    required MultipartFile image,
    num? seed,
    num? cfgScale,
    num? motionBucketId,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/v2alpha/generation/image-to-video';
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
        if (seed != null)
          r'seed': encodeFormParameter(_serializers, seed, const FullType(num)),
        if (cfgScale != null)
          r'cfg_scale':
              encodeFormParameter(_serializers, cfgScale, const FullType(num)),
        if (motionBucketId != null)
          r'motion_bucket_id': encodeFormParameter(
              _serializers, motionBucketId, const FullType(num)),
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

  /// image-to-video/result
  /// Fetch the result of an image-to-video generation by ID. Make sure you use the same API key that you used to generate the video, otherwise you will receive a &#x60;404&#x60; response.  ### How is progress reported? Your generation is either &#x60;in-progress&#x60; (i.e. status code &#x60;202&#x60;) or it is complete (i.e. status code &#x60;200&#x60;).  We may add more fine-grained progress reporting in the future (e.g. a numerical progress).  ### How long are results stored? Results are stored for 24 hours after generation. After that, the results are deleted and you will need to  re-generate your video.
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
  Future<Response<Uint8List>> v2alphaGenerationImageToVideoResultIdGet({
    required String id,
    required String authorization,
    String? accept = 'video/*',
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/v2alpha/generation/image-to-video/result/{id}'.replaceAll(
        '{' r'id' '}',
        encodeQueryParameter(_serializers, id, const FullType(String))
            .toString());
    final _options = Options(
      method: r'GET',
      responseType: ResponseType.bytes,
      headers: <String, dynamic>{
        r'authorization': authorization,
        if (accept != null) r'accept': accept,
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

  /// stable-image/inpaint
  /// Inpaint an existing image, with or without a mask, using our latest-and-greatest inpainting model.  ### Search-and-Replace Mode This mode is ideal for individuals of all levels of skill in design. It can be used for straightforward  adjustments to images. The service will automatically mask the most appropriate object based on the contents of the &#x60;search_prompt&#x60;, and replace it with a generated result based on the &#x60;prompt&#x60;.  **How to use:** set the &#x60;mode&#x60; parameter to &#x60;search&#x60; and provide a short description of what to  search-and-replace in the &#x60;search_prompt&#x60; parameter.  ### Mask Mode This mode allows for precise control of generative fill tasks on an image, down to the level of  individual pixels. Design professionals can provide a &#x60;mask&#x60; for the section of the image to be replaced,  and use standard image prompting to describe the full image as it should appear after the editing.  The resulting image will incorporate all of the elements described in the &#x60;prompt&#x60;.  **How to use:** set the &#x60;mode&#x60; parameter to &#x60;mask&#x60; and either pass in an &#x60;image&#x60; with an alpha channel  or provide an explicit mask image to the &#x60;mask&#x60; parameter. If both are present the &#x60;mask&#x60; parameter will take precedence.  ### Price - Requests with &#x60;mode&#x60; set to &#x60;search&#x60; cost 4 cents. - Requests with &#x60;mode&#x60; set to &#x60;mask&#x60; cost 3 cents.
  ///
  /// Parameters:
  /// * [authorization]
  /// * [contentType]
  /// * [accept]
  /// * [mode] - Controls how the model decides which areas to inpaint and which areas to leave alone.    Specifying `mask` requires:   - Provide an explicit mask image in the `mask` parameter   - Use the alpha channel of the `image` parameter as the mask    Specifying `search` requires:   - Provide a small description of what to inpaint in the `search_prompt` parameter
  /// * [searchPrompt] - Short description of what to inpaint in the `image`.
  /// * [image] - The image you wish to inpaint.  Supported Formats: - jpeg - png - webp  Validation Rules: - Every side must be at least 64 pixels - Total pixel count must be between 4,096 and 9,437,184 pixels
  /// * [prompt] - What you wish to see in the output image. A strong, descriptive prompt that clearly defines  elements, colors, and subjects will lead to better results.   To control the weight of a given word use the format `(word:weight)`,  where `word` is the word you'd like to control the weight of and `weight`  is a value between 0 and 1. For example: `The sky was a crisp (blue:0.3) and (green:0.8)` would convey a sky that was blue and green, but more green than blue.
  /// * [negativePrompt] - A blurb of text describing what you **do not** wish to see in the output image.   This is an advanced feature.
  /// * [seed] - A specific value that is used to guide the 'randomness' of the generation. (Omit this parameter or pass `0` to use a random seed.)
  /// * [outputFormat] - Dictates the `content-type` of the generated image.
  /// * [mask] - Controls the strength of the inpainting process on a per-pixel basis, either via a  second image (passed into this parameter) or via the alpha channel of the `image` parameter.  **Passing in a Mask**    The image passed to this parameter should be a black and white image that represents,  at any pixel, the strength of inpainting based on how dark or light the given pixel is.  Completely black pixels represent no inpainting strength while completely white pixels  represent maximum strength.  In the event the mask is a different size than the `image` parameter, it will be automatically resized.  **Alpha Channel Support**  If you don't provide an explicit mask, one will be derived from the alpha channel of the `image` parameter. Transparent pixels will be inpainted while opaque pixels will be preserved.  In the event an `image` with an alpha channel is provided along with a `mask`, the `mask` will take precedence.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [Uint8List] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<Uint8List>> v2alphaGenerationStableImageInpaintPost({
    required String authorization,
    required String contentType,
    String? accept = 'image/*',
    String? mode,
    String? searchPrompt,
    MultipartFile? image,
    String? prompt,
    String? negativePrompt,
    num? seed,
    String? outputFormat,
    MultipartFile? mask,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/v2alpha/generation/stable-image/inpaint';
    final _options = Options(
      method: r'POST',
      responseType: ResponseType.bytes,
      headers: <String, dynamic>{
        r'authorization': authorization,
        r'content-type': contentType,
        if (accept != null) r'accept': accept,
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
        if (mode != null)
          r'mode':
              encodeFormParameter(_serializers, mode, const FullType(String)),
        if (searchPrompt != null)
          r'search_prompt': encodeFormParameter(
              _serializers, searchPrompt, const FullType(String)),
        if (image != null) r'image': image,
        if (prompt != null)
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
        if (mask != null) r'mask': mask,
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

  /// stable-image/upscale
  /// Takes images between 64x64 and 1 megapixel and upscales them all the way to **4K** resolution.  Put more  generally, it can upscale images ~20-40x times while preserving, and often enhancing, quality.  ### How to use   - Invoke this endpoint with the required parameters to start a generation   - Use that &#x60;id&#x60; in the response to poll for results at the [upscale/result/{id}](#tag/v2alphageneration/paths/~1v2alpha~1generation~1stable-image~1upscale~1result~1%7Bid%7D/get) endpoint     - Rate-limiting or other errors may occur if you poll more than once every 10 seconds      ### Price Flat rate of 25 cents per generation.
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
  Future<Response<InlineResponse200>> v2alphaGenerationStableImageUpscalePost({
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
    final _path = r'/v2alpha/generation/stable-image/upscale';
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

  /// stable-image/upscale/result
  /// Fetch the result of an upscale generation by ID. Make sure to use the same API key to fetch the generation result that you used to create the generation, otherwise you will receive a &#x60;404&#x60; response.  ### How is progress reported? Your generation is either &#x60;in-progress&#x60; (i.e. status code &#x60;202&#x60;) or it is complete (i.e. status code &#x60;200&#x60;).  We may add more fine-grained progress reporting in the future (e.g. a numerical progress).  ### How long are results stored? Results are stored for 24 hours after generation. After that, the results are deleted.
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
  Future<Response<Uint8List>> v2alphaGenerationStableImageUpscaleResultIdGet({
    required String id,
    required String authorization,
    String? accept = 'image/*',
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/v2alpha/generation/stable-image/upscale/result/{id}'
        .replaceAll(
            '{' r'id' '}',
            encodeQueryParameter(_serializers, id, const FullType(String))
                .toString());
    final _options = Options(
      method: r'GET',
      responseType: ResponseType.bytes,
      headers: <String, dynamic>{
        r'authorization': authorization,
        if (accept != null) r'accept': accept,
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
