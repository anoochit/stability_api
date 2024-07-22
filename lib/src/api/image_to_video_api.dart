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
import 'package:stability_api/src/model/inline_response2003.dart';
import 'package:stability_api/src/model/inline_response202.dart';
import 'package:stability_api/src/model/inline_response400.dart';
import 'package:stability_api/src/model/inline_response404.dart';
import 'package:stability_api/src/model/inline_response413.dart';
import 'package:stability_api/src/model/inline_response429.dart';
import 'package:stability_api/src/model/inline_response500.dart';

class ImageToVideoApi {
  final Dio _dio;

  final Serializers _serializers;

  const ImageToVideoApi(this._dio, this._serializers);

  /// Start generation
  /// Generate a short video based on an initial image with [Stable Video Diffusion](https://static1.squarespace.com/static/6213c340453c3f502425776e/t/655ce779b9d47d342a93c890/1700587395994/stable_video_diffusion.pdf), a latent video diffusion model.     ### How to use Please invoke this endpoint with a &#x60;POST&#x60; request.  The headers of the request must include an API key in the &#x60;authorization&#x60; field. The body of the request must be &#x60;multipart/form-data&#x60;.  The body of the request should include: - &#x60;image&#x60;  The body may optionally include: - &#x60;seed&#x60; - &#x60;cfg_scale&#x60; - &#x60;motion_bucket_id&#x60;  &gt; **Note:** for more details about these parameters please see the request schema below.  After invoking this endpoint with the required parameters, use the &#x60;id&#x60; in the response to poll for results at the [image-to-video/result/{id}](#tag/Image-to-Video/paths/~1v2beta~1image-to-video~1result~1%7Bid%7D/get) endpoint.  Rate-limiting or other errors may occur if you poll more than once every 10 seconds.  ### Credits Flat rate of 20 credits per successful generation.  You will not be charged for failed generations.
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
  Future<Response<InlineResponse200>> v2betaImageToVideoPost({
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
    final _path = r'/v2beta/image-to-video';
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

  /// Fetch generation result
  /// Fetch the result of an image-to-video generation by ID.  Make sure to use the same API key to fetch the generation result that you used to create the generation,  otherwise you will receive a &#x60;404&#x60; response.  ### How to use Please invoke this endpoint with a &#x60;GET&#x60; request.  The headers of the request must include an API key in the &#x60;authorization&#x60; field and the ID of your generation must be in the path.  ### How is progress reported? Your generation is either &#x60;in-progress&#x60; (i.e. status code &#x60;202&#x60;) or it is complete (i.e. status code &#x60;200&#x60;).  We may add more fine-grained progress reporting in the future (e.g. a numerical progress).  ### How long are results stored? Results are stored for 24 hours after generation. After that, the results are deleted and you will need to  re-generate your video.
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
  Future<Response<Uint8List>> v2betaImageToVideoResultIdGet({
    required String id,
    required String authorization,
    String accept = 'video/*',
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/v2beta/image-to-video/result/{id}'.replaceAll(
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
