# stability_api.api.ImageToVideoApi

## Load the API package
```dart
import 'package:stability_api/api.dart';
```

All URIs are relative to *https://api.stability.ai*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v2betaImageToVideoPost**](ImageToVideoApi.md#v2betaimagetovideopost) | **POST** /v2beta/image-to-video | Start generation
[**v2betaImageToVideoResultIdGet**](ImageToVideoApi.md#v2betaimagetovideoresultidget) | **GET** /v2beta/image-to-video/result/{id} | Fetch generation result


# **v2betaImageToVideoPost**
> InlineResponse200 v2betaImageToVideoPost(authorization, contentType, image, seed, cfgScale, motionBucketId)

Start generation

Generate a short video based on an initial image with [Stable Video Diffusion](https://static1.squarespace.com/static/6213c340453c3f502425776e/t/655ce779b9d47d342a93c890/1700587395994/stable_video_diffusion.pdf), a latent video diffusion model.     ### How to use Please invoke this endpoint with a `POST` request.  The headers of the request must include an API key in the `authorization` field. The body of the request must be `multipart/form-data`.  The body of the request should include: - `image`  The body may optionally include: - `seed` - `cfg_scale` - `motion_bucket_id`  > **Note:** for more details about these parameters please see the request schema below.  After invoking this endpoint with the required parameters, use the `id` in the response to poll for results at the [image-to-video/result/{id}](#tag/Image-to-Video/paths/~1v2beta~1image-to-video~1result~1%7Bid%7D/get) endpoint.  Rate-limiting or other errors may occur if you poll more than once every 10 seconds.  ### Credits Flat rate of 20 credits per successful generation.  You will not be charged for failed generations.

### Example
```dart
import 'package:stability_api/api.dart';
// TODO Configure API key authorization: STABILITY_API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('STABILITY_API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('STABILITY_API_KEY').apiKeyPrefix = 'Bearer';

final api = StabilityApi().getImageToVideoApi();
final String authorization = authorization_example; // String | 
final String contentType = multipart/form-data; // String | 
final MultipartFile image = BINARY_DATA_HERE; // MultipartFile | The source image used in the video generation process.  Supported Formats: - jpeg - png  Supported Dimensions: - 1024x576 - 576x1024 - 768x768
final num seed = 8.14; // num | A specific value that is used to guide the 'randomness' of the generation. (Omit this parameter or pass `0` to use a random seed.)
final num cfgScale = 8.14; // num | How strongly the video sticks to the original image. Use lower values to allow the model more freedom to make changes and higher values to correct motion distortions.
final num motionBucketId = 8.14; // num | Lower values generally result in less motion in the output video, while higher values generally result in more motion. This parameter corresponds to the motion_bucket_id parameter from the [paper](https://static1.squarespace.com/static/6213c340453c3f502425776e/t/655ce779b9d47d342a93c890/1700587395994/stable_video_diffusion.pdf).

try {
    final response = api.v2betaImageToVideoPost(authorization, contentType, image, seed, cfgScale, motionBucketId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ImageToVideoApi->v2betaImageToVideoPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**|  | 
 **contentType** | **String**|  | 
 **image** | **MultipartFile**| The source image used in the video generation process.  Supported Formats: - jpeg - png  Supported Dimensions: - 1024x576 - 576x1024 - 768x768 | 
 **seed** | **num**| A specific value that is used to guide the 'randomness' of the generation. (Omit this parameter or pass `0` to use a random seed.) | [optional] [default to 0]
 **cfgScale** | **num**| How strongly the video sticks to the original image. Use lower values to allow the model more freedom to make changes and higher values to correct motion distortions. | [optional] [default to 1.8]
 **motionBucketId** | **num**| Lower values generally result in less motion in the output video, while higher values generally result in more motion. This parameter corresponds to the motion_bucket_id parameter from the [paper](https://static1.squarespace.com/static/6213c340453c3f502425776e/t/655ce779b9d47d342a93c890/1700587395994/stable_video_diffusion.pdf). | [optional] [default to 127]

### Return type

[**InlineResponse200**](InlineResponse200.md)

### Authorization

[STABILITY_API_KEY](../README.md#STABILITY_API_KEY)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v2betaImageToVideoResultIdGet**
> Uint8List v2betaImageToVideoResultIdGet(id, authorization, accept)

Fetch generation result

Fetch the result of an image-to-video generation by ID.  Make sure to use the same API key to fetch the generation result that you used to create the generation,  otherwise you will receive a `404` response.  ### How to use Please invoke this endpoint with a `GET` request.  The headers of the request must include an API key in the `authorization` field and the ID of your generation must be in the path.  ### How is progress reported? Your generation is either `in-progress` (i.e. status code `202`) or it is complete (i.e. status code `200`).  We may add more fine-grained progress reporting in the future (e.g. a numerical progress).  ### How long are results stored? Results are stored for 24 hours after generation. After that, the results are deleted and you will need to  re-generate your video.

### Example
```dart
import 'package:stability_api/api.dart';
// TODO Configure API key authorization: STABILITY_API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('STABILITY_API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('STABILITY_API_KEY').apiKeyPrefix = 'Bearer';

final api = StabilityApi().getImageToVideoApi();
final String id = id_example; // String | 
final String authorization = authorization_example; // String | 
final String accept = accept_example; // String | 

try {
    final response = api.v2betaImageToVideoResultIdGet(id, authorization, accept);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ImageToVideoApi->v2betaImageToVideoResultIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **authorization** | **String**|  | 
 **accept** | **String**|  | [default to 'video/*']

### Return type

[**Uint8List**](Uint8List.md)

### Authorization

[STABILITY_API_KEY](../README.md#STABILITY_API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: video/mp4, application/json; type=video/mp4, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

