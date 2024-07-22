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

class EditApi {
  final Dio _dio;

  final Serializers _serializers;

  const EditApi(this._dio, this._serializers);

  /// Erase
  /// The Erase service removes unwanted objects, such as blemishes on portraits or items on desks, using image masks.  The mask is provided in one of two ways:   1. Explicitly passing in a separate image via the &#x60;mask&#x60; parameter    2. Derived from the alpha channel of the &#x60;image&#x60; parameter.  ### Try it out Grab your [API key](https://platform.stability.ai/account/keys) and head over to [![Open Google Colab](https://platform.stability.ai/svg/google-colab.svg)](https://colab.research.google.com/github/stability-ai/stability-sdk/blob/main/nbs/Stable_Image_API_Public.ipynb#scrollTo&#x3D;t1Q4w2uvvza0)  ### How to use  Please invoke this endpoint with a &#x60;POST&#x60; request.  The headers of the request must include an API key in the &#x60;authorization&#x60; field. The body of the request must be &#x60;multipart/form-data&#x60;, and the &#x60;accept&#x60; header should be set to one of the following:   - &#x60;image/_*&#x60; to receive the image in the format specified by the &#x60;output_format&#x60; parameter.   - &#x60;application/json&#x60; to receive the image encoded as base64 in a JSON response.    The body of the request must include: - &#x60;image&#x60;  Optionally, the body of the request may also include: - &#x60;mask&#x60; - &#x60;seed&#x60; - &#x60;output_format&#x60;  &gt; **Note:** for more details about these parameters please see the request schema below.  ### Output The resolution of the generated image will be 4 megapixels.  ### Credits Flat rate of 3 credits per successful generation.  You will not be charged for failed generations.
  ///
  /// Parameters:
  /// * [authorization]
  /// * [contentType]
  /// * [accept]
  /// * [image] - The image you wish to erase from.  Supported Formats: - jpeg - png - webp  Validation Rules: - Every side must be at least 64 pixels - Total pixel count must be between 4,096 and 9,437,184 pixels
  /// * [mask] - Controls the strength of the inpainting process on a per-pixel basis, either via a  second image (passed into this parameter) or via the alpha channel of the `image` parameter.  **Passing in a Mask**    The image passed to this parameter should be a black and white image that represents,  at any pixel, the strength of inpainting based on how dark or light the given pixel is.  Completely black pixels represent no inpainting strength while completely white pixels  represent maximum strength.  In the event the mask is a different size than the `image` parameter, it will be automatically resized.  **Alpha Channel Support**  If you don't provide an explicit mask, one will be derived from the alpha channel of the `image` parameter. Transparent pixels will be inpainted while opaque pixels will be preserved.  In the event an `image` with an alpha channel is provided along with a `mask`, the `mask` will take precedence.
  /// * [growMask] - Grows the edges of the mask outward in all directions by the specified number of pixels. The expanded area around the mask will be blurred, which can help smooth the transition between inpainted content and the original image.  Try this parameter if you notice seams or rough edges around the inpainted content.  > Note: Excessive growth may obscure fine details in the mask and/or merge nearby masked regions.
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
  Future<Response<Uint8List>> v2betaStableImageEditErasePost({
    required String authorization,
    required String contentType,
    String accept = 'image/*',
    required MultipartFile image,
    MultipartFile? mask,
    num? growMask,
    num? seed,
    String? outputFormat,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/v2beta/stable-image/edit/erase';
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
        if (mask != null) r'mask': mask,
        if (growMask != null)
          r'grow_mask':
              encodeFormParameter(_serializers, growMask, const FullType(num)),
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

  /// Inpaint
  /// Intelligently modify images by filling in or replacing specified areas with new content based on the content of a \&quot;mask\&quot; image.   The \&quot;mask\&quot; is provided in one of two ways:   1. Explicitly passing in a separate image via the &#x60;mask&#x60; parameter    2. Derived from the alpha channel of the &#x60;image&#x60; parameter.  ### Try it out Grab your [API key](https://platform.stability.ai/account/keys) and head over to [![Open Google Colab](https://platform.stability.ai/svg/google-colab.svg)](https://colab.research.google.com/github/stability-ai/stability-sdk/blob/main/nbs/Stable_Image_API_Public.ipynb#scrollTo&#x3D;t1Q4w2uvvza0)  ### How to use  Please invoke this endpoint with a &#x60;POST&#x60; request.  The headers of the request must include an API key in the &#x60;authorization&#x60; field. The body of the request must be &#x60;multipart/form-data&#x60;, and the &#x60;accept&#x60; header should be set to one of the following:   - &#x60;image/_*&#x60; to receive the image in the format specified by the &#x60;output_format&#x60; parameter.   - &#x60;application/json&#x60; to receive the image encoded as base64 in a JSON response.    The body of the request must include: - &#x60;image&#x60; - &#x60;prompt&#x60;  Optionally, the body of the request may also include: - &#x60;mask&#x60; - &#x60;negative_prompt&#x60; - &#x60;seed&#x60; - &#x60;output_format&#x60;  &gt; **Note:** for more details about these parameters please see the request schema below.  ### Output The resolution of the generated image will be 4 megapixels.  ### Credits Flat rate of 3 credits per successful generation.  You will not be charged for failed generations.
  ///
  /// Parameters:
  /// * [authorization]
  /// * [contentType]
  /// * [accept]
  /// * [image] - The image you wish to inpaint.  Supported Formats: - jpeg - png - webp  Validation Rules: - Every side must be at least 64 pixels - Total pixel count must be between 4,096 and 9,437,184 pixels
  /// * [prompt] - What you wish to see in the output image. A strong, descriptive prompt that clearly defines  elements, colors, and subjects will lead to better results.   To control the weight of a given word use the format `(word:weight)`,  where `word` is the word you'd like to control the weight of and `weight`  is a value between 0 and 1. For example: `The sky was a crisp (blue:0.3) and (green:0.8)` would convey a sky that was blue and green, but more green than blue.
  /// * [negativePrompt] - A blurb of text describing what you **do not** wish to see in the output image.   This is an advanced feature.
  /// * [mask] - Controls the strength of the inpainting process on a per-pixel basis, either via a  second image (passed into this parameter) or via the alpha channel of the `image` parameter.  **Passing in a Mask**    The image passed to this parameter should be a black and white image that represents,  at any pixel, the strength of inpainting based on how dark or light the given pixel is.  Completely black pixels represent no inpainting strength while completely white pixels  represent maximum strength.  In the event the mask is a different size than the `image` parameter, it will be automatically resized.  **Alpha Channel Support**  If you don't provide an explicit mask, one will be derived from the alpha channel of the `image` parameter. Transparent pixels will be inpainted while opaque pixels will be preserved.  In the event an `image` with an alpha channel is provided along with a `mask`, the `mask` will take precedence.
  /// * [growMask] - Grows the edges of the mask outward in all directions by the specified number of pixels. The expanded area around the mask will be blurred, which can help smooth the transition between inpainted content and the original image.  Try this parameter if you notice seams or rough edges around the inpainted content.  > Note: Excessive growth may obscure fine details in the mask and/or merge nearby masked regions.
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
  Future<Response<Uint8List>> v2betaStableImageEditInpaintPost({
    required String authorization,
    required String contentType,
    String accept = 'image/*',
    required MultipartFile image,
    required String prompt,
    String? negativePrompt,
    MultipartFile? mask,
    num? growMask,
    num? seed,
    String? outputFormat,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/v2beta/stable-image/edit/inpaint';
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
        if (mask != null) r'mask': mask,
        if (growMask != null)
          r'grow_mask':
              encodeFormParameter(_serializers, growMask, const FullType(num)),
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

  /// Outpaint
  /// The Outpaint service inserts additional content in an image to fill in the space in any direction.  Compared to other automated or manual attempts to expand the content in an image, the Outpaint service  should minimize artifacts and signs that the original image has been edited.  ### Try it out Grab your [API key](https://platform.stability.ai/account/keys) and head over to [![Open Google Colab](https://platform.stability.ai/svg/google-colab.svg)](https://colab.research.google.com/github/stability-ai/stability-sdk/blob/main/nbs/Stable_Image_API_Public.ipynb#scrollTo&#x3D;bZ2yK7VQSgLw)  ### How to use  Please invoke this endpoint with a POST request.  The headers of the request must include an API key in the &#x60;authorization&#x60; field. The body of the request must be &#x60;multipart/form-data&#x60;, and the &#x60;accept&#x60; header should be set to one of the following:   - &#x60;image/_*&#x60; to receive the image in the format specified by the &#x60;output_format&#x60; parameter.   - &#x60;application/json&#x60; to receive the image encoded as base64 in a JSON response.    The body of the request must include: - &#x60;image&#x60;  Along with _at least one_ outpaint direction: - &#x60;left&#x60; - &#x60;right&#x60; - &#x60;up&#x60; - &#x60;down&#x60;  &gt; **Note:** for best quality use outpaint direction values smaller or equal to your source image dimensions.      Each of these parameters should be set to a number between 0 and 2000, representing the number of pixels to outpaint in that direction.  Optionally, the body of the request may also include: - &#x60;prompt&#x60; - &#x60;seed&#x60; - &#x60;output_format&#x60; - &#x60;creativity&#x60;  &gt; **Note:** for more details about these parameters please see the request schema below.  ### Credits Flat rate of 4 credits per successful generation.  You will not be charged for failed generations.
  ///
  /// Parameters:
  /// * [authorization]
  /// * [contentType]
  /// * [accept]
  /// * [image] - The image you wish to outpaint.  Supported Formats: - jpeg - png - webp  Validation Rules: - Every side must be at least 64 pixels - Total pixel count must be between 4,096 and 9,437,184 pixels - The aspect ratio must be between 1:2.5 and 2.5:1
  /// * [left] - The number of pixels to outpaint on the left side of the image. At least one outpainting direction must be supplied with a non-zero value.
  /// * [right] - The number of pixels to outpaint on the right side of the image. At least one outpainting direction must be supplied with a non-zero value.
  /// * [up] - The number of pixels to outpaint on the top of the image. At least one outpainting direction must be supplied with a non-zero value.
  /// * [down] - The number of pixels to outpaint on the bottom of the image. At least one outpainting direction must be supplied with a non-zero value.
  /// * [creativity]
  /// * [prompt] - What you wish to see in the output image. A strong, descriptive prompt that clearly defines  elements, colors, and subjects will lead to better results.   To control the weight of a given word use the format `(word:weight)`,  where `word` is the word you'd like to control the weight of and `weight`  is a value between 0 and 1. For example: `The sky was a crisp (blue:0.3) and (green:0.8)` would convey a sky that was blue and green, but more green than blue.
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
  Future<Response<Uint8List>> v2betaStableImageEditOutpaintPost({
    required String authorization,
    required String contentType,
    String accept = 'image/*',
    required MultipartFile image,
    int? left,
    int? right,
    int? up,
    int? down,
    num? creativity,
    String? prompt,
    num? seed,
    String? outputFormat,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/v2beta/stable-image/edit/outpaint';
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
        if (left != null)
          r'left': encodeFormParameter(_serializers, left, const FullType(int)),
        if (right != null)
          r'right':
              encodeFormParameter(_serializers, right, const FullType(int)),
        if (up != null)
          r'up': encodeFormParameter(_serializers, up, const FullType(int)),
        if (down != null)
          r'down': encodeFormParameter(_serializers, down, const FullType(int)),
        if (creativity != null)
          r'creativity': encodeFormParameter(
              _serializers, creativity, const FullType(num)),
        if (prompt != null)
          r'prompt':
              encodeFormParameter(_serializers, prompt, const FullType(String)),
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

  /// Remove Background
  /// The Remove Background service accurately segments the foreground from an image and implements  and removes the background.  ### Try it out Grab your [API key](https://platform.stability.ai/account/keys) and head over to [![Open Google Colab](https://platform.stability.ai/svg/google-colab.svg)](https://colab.research.google.com/github/stability-ai/stability-sdk/blob/main/nbs/Stable_Image_API_Public.ipynb#scrollTo&#x3D;VHofb3LAVmqi)   ### How to use  Please invoke this endpoint with a &#x60;POST&#x60; request.  The headers of the request must include an API key in the &#x60;authorization&#x60; field. The body of the request must be &#x60;multipart/form-data&#x60;, and the &#x60;accept&#x60; header should be set to one of the following:   - &#x60;image/_*&#x60; to receive the image in the format specified by the &#x60;output_format&#x60; parameter.   - &#x60;application/json&#x60; to receive the image encoded as base64 in a JSON response.    The body of the request must include: - &#x60;image&#x60;  Optionally, the body of the request may also include: - &#x60;output_format&#x60;  &gt; **Note:** for more details about these parameters please see the request schema below.  ### Credits Flat rate of 2 credits per successful generation.  You will not be charged for failed generations.
  ///
  /// Parameters:
  /// * [authorization]
  /// * [contentType]
  /// * [accept]
  /// * [image] - The image whose background you wish to remove.  Supported Formats: - jpeg - png - webp  Validation Rules: - Every side must be at least 64 pixels - Total pixel count must be between 4,096 and 4,194,304 pixels
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
  Future<Response<Uint8List>> v2betaStableImageEditRemoveBackgroundPost({
    required String authorization,
    required String contentType,
    String accept = 'image/*',
    required MultipartFile image,
    String? outputFormat,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/v2beta/stable-image/edit/remove-background';
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

  /// Search and Replace
  /// The Search and Replace service is a specific version of inpainting that does not require a mask.  Instead, users can leverage a &#x60;search_prompt&#x60; to identify an object in simple language to be replaced.  The service will automatically segment the object and replace it with the object requested in the prompt.  ### Try it out Grab your [API key](https://platform.stability.ai/account/keys) and head over to [![Open Google Colab](https://platform.stability.ai/svg/google-colab.svg)](https://colab.research.google.com/github/stability-ai/stability-sdk/blob/main/nbs/Stable_Image_API_Public.ipynb#scrollTo&#x3D;0lDpGa2jAmAs)  ### How to use Please invoke this endpoint with a &#x60;POST&#x60; request.  The headers of the request must include an API key in the &#x60;authorization&#x60; field. The body of the request must be &#x60;multipart/form-data&#x60;, and the &#x60;accept&#x60; header should be set to one of the following:   - &#x60;image/_*&#x60; to receive the image in the format specified by the &#x60;output_format&#x60; parameter.   - &#x60;application/json&#x60; to receive the image encoded as base64 in a JSON response.  The body of the request should include: - &#x60;image&#x60; - &#x60;prompt&#x60; - &#x60;search_prompt&#x60;  The body may optionally include: - &#x60;seed&#x60; - &#x60;negative_prompt&#x60; - &#x60;output_format&#x60;  &gt; **Note:** for more details about these parameters please see the request schema below.  ### Output The resolution of the generated image will be 4 megapixels.  ### Credits Flat rate of 4 credits per successful generation.  You will not be charged for failed generations.
  ///
  /// Parameters:
  /// * [authorization]
  /// * [contentType]
  /// * [accept]
  /// * [image] - An image containing content you wish to replace.  Supported Formats: - jpeg - png - webp  Validation Rules: - Every side must be at least 64 pixels - Total pixel count must be between 4,096 and 9,437,184 pixels - The aspect ratio must be between 1:2.5 and 2.5:1
  /// * [prompt] - What you wish to see in the output image. A strong, descriptive prompt that clearly defines  elements, colors, and subjects will lead to better results.   To control the weight of a given word use the format `(word:weight)`,  where `word` is the word you'd like to control the weight of and `weight`  is a value between 0 and 1. For example: `The sky was a crisp (blue:0.3) and (green:0.8)` would convey a sky that was blue and green, but more green than blue.
  /// * [searchPrompt] - Short description of what to inpaint in the `image`.
  /// * [negativePrompt] - A blurb of text describing what you **do not** wish to see in the output image.   This is an advanced feature.
  /// * [growMask] - Grows the edges of the mask outward in all directions by the specified number of pixels. The expanded area around the mask will be blurred, which can help smooth the transition between inpainted content and the original image.  Try this parameter if you notice seams or rough edges around the inpainted content.  > Note: Excessive growth may obscure fine details in the mask and/or merge nearby masked regions.
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
  Future<Response<Uint8List>> v2betaStableImageEditSearchAndReplacePost({
    required String authorization,
    required String contentType,
    String accept = 'image/*',
    required MultipartFile image,
    required String prompt,
    required String searchPrompt,
    String? negativePrompt,
    num? growMask,
    num? seed,
    String? outputFormat,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/v2beta/stable-image/edit/search-and-replace';
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
        r'search_prompt': encodeFormParameter(
            _serializers, searchPrompt, const FullType(String)),
        if (negativePrompt != null)
          r'negative_prompt': encodeFormParameter(
              _serializers, negativePrompt, const FullType(String)),
        if (growMask != null)
          r'grow_mask':
              encodeFormParameter(_serializers, growMask, const FullType(num)),
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
