# stability_api.api.UserApi

## Load the API package
```dart
import 'package:stability_api/api.dart';
```

All URIs are relative to *https://api.stability.ai*

Method | HTTP request | Description
------------- | ------------- | -------------
[**userAccount**](UserApi.md#useraccount) | **GET** /v1/user/account | Account details
[**userBalance**](UserApi.md#userbalance) | **GET** /v1/user/balance | Account balance


# **userAccount**
> AccountResponseBody userAccount()

Account details

Get information about the account associated with the provided API key

### Example
```dart
import 'package:stability_api/api.dart';
// TODO Configure API key authorization: STABILITY_API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('STABILITY_API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('STABILITY_API_KEY').apiKeyPrefix = 'Bearer';

final api = StabilityApi().getUserApi();

try {
    final response = api.userAccount();
    print(response);
} catch on DioException (e) {
    print('Exception when calling UserApi->userAccount: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**AccountResponseBody**](AccountResponseBody.md)

### Authorization

[STABILITY_API_KEY](../README.md#STABILITY_API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userBalance**
> BalanceResponseBody userBalance(organization, stabilityClientID, stabilityClientVersion)

Account balance

Get the credit balance of the account/organization associated with the API key

### Example
```dart
import 'package:stability_api/api.dart';
// TODO Configure API key authorization: STABILITY_API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('STABILITY_API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('STABILITY_API_KEY').apiKeyPrefix = 'Bearer';

final api = StabilityApi().getUserApi();
final String organization = org-123456; // String | Allows for requests to be scoped to an organization other than the user's default.  If not provided, the user's default organization will be used.
final String stabilityClientID = my-great-plugin; // String | Used to identify the source of requests, such as the client application or sub-organization. Optional, but recommended for organizational clarity.
final String stabilityClientVersion = 1.2.1; // String | Used to identify the version of the application or service making the requests. Optional, but recommended for organizational clarity.

try {
    final response = api.userBalance(organization, stabilityClientID, stabilityClientVersion);
    print(response);
} catch on DioException (e) {
    print('Exception when calling UserApi->userBalance: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| Allows for requests to be scoped to an organization other than the user's default.  If not provided, the user's default organization will be used. | [optional] 
 **stabilityClientID** | **String**| Used to identify the source of requests, such as the client application or sub-organization. Optional, but recommended for organizational clarity. | [optional] 
 **stabilityClientVersion** | **String**| Used to identify the version of the application or service making the requests. Optional, but recommended for organizational clarity. | [optional] 

### Return type

[**BalanceResponseBody**](BalanceResponseBody.md)

### Authorization

[STABILITY_API_KEY](../README.md#STABILITY_API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

