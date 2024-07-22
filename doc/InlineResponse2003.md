# stability_api.model.InlineResponse2003

## Load the model package
```dart
import 'package:stability_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**video** | **String** | The generated video, encoded to base64. | 
**finishReason** | **String** | The reason the generation finished.  - `SUCCESS` = successful generation. - `CONTENT_FILTERED` = successful generation, however the output violated our content moderation  policy and one or more frames have been blurred as a result. | 
**seed** | **num** | The seed used as random noise for this generation. | [optional] [default to 0]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


