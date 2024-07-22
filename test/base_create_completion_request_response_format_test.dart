import 'package:test/test.dart';
import 'package:stability_api/stability_api.dart';

// tests for BaseCreateCompletionRequestResponseFormat
void main() {
  final instance = BaseCreateCompletionRequestResponseFormatBuilder();
  // TODO add properties to the builder and call build()

  group(BaseCreateCompletionRequestResponseFormat, () {
    // Must be one of 'text' or 'json_object'.
    // String type (default value: 'text')
    test('to test the property `type`', () async {
      // TODO
    });

    // JSON schema according to https://json-schema.org/specification that can be provided if '\"type\": \"json_object\"'.  Most common fields like 'type', 'properties', 'items', 'required' and 'anyOf' are supported.  More sophisticated cases like 'oneOf' might not be covered.  Note: it's an OpenAI API extension.  Example: '{\"type\": \"object\", \"properties\": {\"foo\": {\"type\": \"string\"}, \"bar\": {\"type\": \"integer\"}}, \"required\": [\"foo\"]}'
    // JsonObject schema
    test('to test the property `schema`', () async {
      // TODO
    });
  });
}
