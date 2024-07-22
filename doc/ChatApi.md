# stability_api.api.ChatApi

## Load the API package
```dart
import 'package:stability_api/api.dart';
```

All URIs are relative to *https://api.stability.ai*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v2betaStableLmChatCompletionsPost**](ChatApi.md#v2betastablelmchatcompletionspost) | **POST** /v2beta/stable-lm/chat/completions | Create a completion


# **v2betaStableLmChatCompletionsPost**
> InlineResponse2005 v2betaStableLmChatCompletionsPost(authorization, contentType, chatCompletionsBody)

Create a completion

Create a chat completion using a StabilityAI LLM.  ### Streaming Streaming responses is supported by HTTP streaming, which can be enabled by passing in the `stream` parameter as `true`. Instead of a single response with the completion, you will receive a stream of responses, each containing the next token/word of the completion.

### Example
```dart
import 'package:stability_api/api.dart';
// TODO Configure API key authorization: STABILITY_API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('STABILITY_API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('STABILITY_API_KEY').apiKeyPrefix = 'Bearer';

final api = StabilityApi().getChatApi();
final String authorization = authorization_example; // String | 
final String contentType = application/json; // String | 
final ChatCompletionsBody chatCompletionsBody = ; // ChatCompletionsBody | 

try {
    final response = api.v2betaStableLmChatCompletionsPost(authorization, contentType, chatCompletionsBody);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ChatApi->v2betaStableLmChatCompletionsPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**|  | 
 **contentType** | **String**|  | 
 **chatCompletionsBody** | [**ChatCompletionsBody**](ChatCompletionsBody.md)|  | [optional] 

### Return type

[**InlineResponse2005**](InlineResponse2005.md)

### Authorization

[STABILITY_API_KEY](../README.md#STABILITY_API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

