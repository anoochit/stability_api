//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:dio/dio.dart';
import 'package:built_value/serializer.dart';
import 'package:stability_api/src/serializers.dart';
import 'package:stability_api/src/auth/api_key_auth.dart';
import 'package:stability_api/src/auth/basic_auth.dart';
import 'package:stability_api/src/auth/bearer_auth.dart';
import 'package:stability_api/src/auth/oauth.dart';
import 'package:stability_api/src/api/chat_api.dart';
import 'package:stability_api/src/api/control_api.dart';
import 'package:stability_api/src/api/edit_api.dart';
import 'package:stability_api/src/api/engines_api.dart';
import 'package:stability_api/src/api/generate_api.dart';
import 'package:stability_api/src/api/image_to_video_api.dart';
import 'package:stability_api/src/api/sdxlsd16_api.dart';
import 'package:stability_api/src/api/upscale_api.dart';
import 'package:stability_api/src/api/user_api.dart';
import 'package:stability_api/src/api/v2alpha_generation_api.dart';

class StabilityApi {
  static const String basePath = r'https://api.stability.ai';

  final Dio dio;
  final Serializers serializers;

  StabilityApi({
    Dio? dio,
    Serializers? serializers,
    String? basePathOverride,
    List<Interceptor>? interceptors,
  })  : this.serializers = serializers ?? standardSerializers,
        this.dio = dio ??
            Dio(BaseOptions(
              baseUrl: basePathOverride ?? basePath,
              connectTimeout: const Duration(milliseconds: 5000),
              receiveTimeout: const Duration(milliseconds: 3000),
            )) {
    if (interceptors == null) {
      this.dio.interceptors.addAll([
        OAuthInterceptor(),
        BasicAuthInterceptor(),
        BearerAuthInterceptor(),
        ApiKeyAuthInterceptor(),
      ]);
    } else {
      this.dio.interceptors.addAll(interceptors);
    }
  }

  void setOAuthToken(String name, String token) {
    if (this.dio.interceptors.any((i) => i is OAuthInterceptor)) {
      (this.dio.interceptors.firstWhere((i) => i is OAuthInterceptor)
              as OAuthInterceptor)
          .tokens[name] = token;
    }
  }

  void setBearerAuth(String name, String token) {
    if (this.dio.interceptors.any((i) => i is BearerAuthInterceptor)) {
      (this.dio.interceptors.firstWhere((i) => i is BearerAuthInterceptor)
              as BearerAuthInterceptor)
          .tokens[name] = token;
    }
  }

  void setBasicAuth(String name, String username, String password) {
    if (this.dio.interceptors.any((i) => i is BasicAuthInterceptor)) {
      (this.dio.interceptors.firstWhere((i) => i is BasicAuthInterceptor)
              as BasicAuthInterceptor)
          .authInfo[name] = BasicAuthInfo(username, password);
    }
  }

  void setApiKey(String name, String apiKey) {
    if (this.dio.interceptors.any((i) => i is ApiKeyAuthInterceptor)) {
      (this
                  .dio
                  .interceptors
                  .firstWhere((element) => element is ApiKeyAuthInterceptor)
              as ApiKeyAuthInterceptor)
          .apiKeys[name] = apiKey;
    }
  }

  /// Get ChatApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  ChatApi getChatApi() {
    return ChatApi(dio, serializers);
  }

  /// Get ControlApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  ControlApi getControlApi() {
    return ControlApi(dio, serializers);
  }

  /// Get EditApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  EditApi getEditApi() {
    return EditApi(dio, serializers);
  }

  /// Get EnginesApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  EnginesApi getEnginesApi() {
    return EnginesApi(dio, serializers);
  }

  /// Get GenerateApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  GenerateApi getGenerateApi() {
    return GenerateApi(dio, serializers);
  }

  /// Get ImageToVideoApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  ImageToVideoApi getImageToVideoApi() {
    return ImageToVideoApi(dio, serializers);
  }

  /// Get SDXLSD16Api instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  // SDXLSD16Api getSDXLSD16Api() {
  //   return SDXLSD16Api(dio, serializers);
  // }

  /// Get UpscaleApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  UpscaleApi getUpscaleApi() {
    return UpscaleApi(dio, serializers);
  }

  /// Get UserApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  UserApi getUserApi() {
    return UserApi(dio, serializers);
  }

  /// Get V2alphaGenerationApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  V2alphaGenerationApi getV2alphaGenerationApi() {
    return V2alphaGenerationApi(dio, serializers);
  }
}
