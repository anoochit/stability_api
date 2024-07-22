//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'dart:async';

import 'package:built_value/serializer.dart';
import 'package:dio/dio.dart';

import 'package:built_collection/built_collection.dart';
import 'package:stability_api/src/model/engine.dart';
import 'package:stability_api/src/model/error.dart';

class EnginesApi {
  final Dio _dio;

  final Serializers _serializers;

  const EnginesApi(this._dio, this._serializers);

  /// List engines
  /// List all engines available to your organization/user
  ///
  /// Parameters:
  /// * [organization] - Allows for requests to be scoped to an organization other than the user's default.  If not provided, the user's default organization will be used.
  /// * [stabilityClientID] - Used to identify the source of requests, such as the client application or sub-organization. Optional, but recommended for organizational clarity.
  /// * [stabilityClientVersion] - Used to identify the version of the application or service making the requests. Optional, but recommended for organizational clarity.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BuiltList<Engine>] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<BuiltList<Engine>>> listEngines({
    String? organization,
    String? stabilityClientID,
    String? stabilityClientVersion,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/v1/engines/list';
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        if (organization != null) r'Organization': organization,
        if (stabilityClientID != null)
          r'Stability-Client-ID': stabilityClientID,
        if (stabilityClientVersion != null)
          r'Stability-Client-Version': stabilityClientVersion,
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

    BuiltList<Engine>? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null
          ? null
          : _serializers.deserialize(
              rawResponse,
              specifiedType: const FullType(BuiltList, [FullType(Engine)]),
            ) as BuiltList<Engine>;
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<BuiltList<Engine>>(
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
