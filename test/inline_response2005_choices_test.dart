import 'package:test/test.dart';
import 'package:stability_api/stability_api.dart';

// tests for InlineResponse2005Choices
void main() {
  final instance = InlineResponse2005ChoicesBuilder();
  // TODO add properties to the builder and call build()

  group(InlineResponse2005Choices, () {
    // The index of the chat completion choice.
    // int index
    test('to test the property `index`', () async {
      // TODO
    });

    // ChatCompletionResponseMessage message
    test('to test the property `message`', () async {
      // TODO
    });

    // The reason the model stopped generating tokens. This will be \"stop\" if the model hit a natural stop point or a provided stop sequence, or \"length\" if the maximum number of tokens specified in the request was reached.
    // String finishReason
    test('to test the property `finishReason`', () async {
      // TODO
    });
  });
}
