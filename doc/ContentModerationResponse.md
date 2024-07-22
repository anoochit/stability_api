# stability_api.model.ContentModerationResponse

## Load the model package
```dart
import 'package:stability_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | A unique identifier associated with this error. Please include this in any [support tickets](https://stabilityplatform.freshdesk.com/support/tickets/new)  you file, as it will greatly assist us in diagnosing the root cause of the problem. | 
**name** | **String** | Our content moderation system has flagged some part of your request and subsequently denied it.  You were not charged for this request.  While this may at times be frustrating, it is necessary to maintain the integrity of our platform and ensure a safe experience for all users.  If you would like to provide feedback, please use the [Support Form](https://stabilityplatform.freshdesk.com/support/tickets/new). | 
**errors** | **BuiltList&lt;String&gt;** | One or more error messages indicating what went wrong. | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


