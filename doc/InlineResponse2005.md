# stability_api.model.InlineResponse2005

## Load the model package
```dart
import 'package:stability_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | A unique identifier of the response. | 
**object** | **String** | The object type, which is always \"chat.completion\". | 
**created** | **int** | The Unix time in seconds when the response was generated. | 
**model** | **String** | The model used for the chat completion. | 
**choices** | [**BuiltList&lt;InlineResponse2005Choices&gt;**](InlineResponse2005Choices.md) | The list of chat completion choices. | 
**usage** | [**UsageInfo**](UsageInfo.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


