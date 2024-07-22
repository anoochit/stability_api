import 'package:test/test.dart';
import 'package:stability_api/stability_api.dart';

// tests for UsageInfo
void main() {
  final instance = UsageInfoBuilder();
  // TODO add properties to the builder and call build()

  group(UsageInfo, () {
    // The number of tokens in the prompt.
    // int promptTokens
    test('to test the property `promptTokens`', () async {
      // TODO
    });

    // The number of tokens in the generated completion.
    // int completionTokens
    test('to test the property `completionTokens`', () async {
      // TODO
    });

    // The total number of tokens used in the request (prompt + completion).
    // int totalTokens
    test('to test the property `totalTokens`', () async {
      // TODO
    });
  });
}
