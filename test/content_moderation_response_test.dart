import 'package:test/test.dart';
import 'package:stability_api/stability_api.dart';

// tests for ContentModerationResponse
void main() {
  final instance = ContentModerationResponseBuilder();
  // TODO add properties to the builder and call build()

  group(ContentModerationResponse, () {
    // A unique identifier associated with this error. Please include this in any [support tickets](https://stabilityplatform.freshdesk.com/support/tickets/new)  you file, as it will greatly assist us in diagnosing the root cause of the problem.
    // String id
    test('to test the property `id`', () async {
      // TODO
    });

    // Our content moderation system has flagged some part of your request and subsequently denied it.  You were not charged for this request.  While this may at times be frustrating, it is necessary to maintain the integrity of our platform and ensure a safe experience for all users.  If you would like to provide feedback, please use the [Support Form](https://stabilityplatform.freshdesk.com/support/tickets/new).
    // String name
    test('to test the property `name`', () async {
      // TODO
    });

    // One or more error messages indicating what went wrong.
    // BuiltList<String> errors
    test('to test the property `errors`', () async {
      // TODO
    });
  });
}
