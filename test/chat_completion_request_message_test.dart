import 'package:test/test.dart';
import 'package:stability_api/stability_api.dart';

// tests for ChatCompletionRequestMessage
void main() {
  final instance = ChatCompletionRequestMessageBuilder();
  // TODO add properties to the builder and call build()

  group(ChatCompletionRequestMessage, () {
    // The role of the messages author. One of 'system', 'user', or 'assistant'.
    // String role
    test('to test the property `role`', () async {
      // TODO
    });

    // ChatCompletionRequestMessageContent content
    test('to test the property `content`', () async {
      // TODO
    });

    // The name of the author of this message. May contain a-z, A-Z, 0-9, and underscores, with a maximum length of 64 characters.
    // String name
    test('to test the property `name`', () async {
      // TODO
    });
  });
}
