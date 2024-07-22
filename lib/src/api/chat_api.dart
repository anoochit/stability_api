//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'dart:async';

import 'package:built_value/serializer.dart';
import 'package:dio/dio.dart';

import 'package:stability_api/src/model/chat_completions_body.dart';
import 'package:stability_api/src/model/inline_response2005.dart';
import 'package:stability_api/src/model/inline_response400.dart';
import 'package:stability_api/src/model/inline_response429.dart';
import 'package:stability_api/src/model/inline_response500.dart';

class ChatApi {
  final Dio _dio;

  final Serializers _serializers;

  const ChatApi(this._dio, this._serializers);

  /// Create a completion
  /// Create a chat completion using a StabilityAI LLM.  ### Streaming Streaming responses is supported by HTTP streaming, which can be enabled by passing in the &#x60;stream&#x60; parameter as &#x60;true&#x60;. Instead of a single response with the completion, you will receive a stream of responses, each containing the next token/word of the completion.
  ///
  /// Parameters:
  /// * [authorization]
  /// * [contentType]
  /// * [chatCompletionsBody]
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [InlineResponse2005] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<InlineResponse2005>> v2betaStableLmChatCompletionsPost({
    required String authorization,
    required String contentType,
    ChatCompletionsBody? chatCompletionsBody,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/v2beta/stable-lm/chat/completions';
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
      contentType: 'application/json',
      validateStatus: validateStatus,
    );

    dynamic _bodyData;

    try {
      const _type = FullType(ChatCompletionsBody);
      _bodyData = chatCompletionsBody == null
          ? null
          : _serializers.serialize(chatCompletionsBody, specifiedType: _type);
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

    InlineResponse2005? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null
          ? null
          : _serializers.deserialize(
              rawResponse,
              specifiedType: const FullType(InlineResponse2005),
            ) as InlineResponse2005;
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<InlineResponse2005>(
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
