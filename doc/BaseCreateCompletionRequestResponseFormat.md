# stability_api.model.BaseCreateCompletionRequestResponseFormat

## Load the model package
```dart
import 'package:stability_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **String** | Must be one of 'text' or 'json_object'. | [default to 'text']
**schema** | [**JsonObject**](.md) | JSON schema according to https://json-schema.org/specification that can be provided if '\"type\": \"json_object\"'.  Most common fields like 'type', 'properties', 'items', 'required' and 'anyOf' are supported.  More sophisticated cases like 'oneOf' might not be covered.  Note: it's an OpenAI API extension.  Example: '{\"type\": \"object\", \"properties\": {\"foo\": {\"type\": \"string\"}, \"bar\": {\"type\": \"integer\"}}, \"required\": [\"foo\"]}'  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


