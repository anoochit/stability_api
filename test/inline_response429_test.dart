import 'package:test/test.dart';
import 'package:stability_api/stability_api.dart';

// tests for InlineResponse429
void main() {
  final instance = InlineResponse429Builder();
  // TODO add properties to the builder and call build()

  group(InlineResponse429, () {
    // A unique identifier associated with this error. Please include this in any [support tickets](https://stabilityplatform.freshdesk.com/support/tickets/new)  you file, as it will greatly assist us in diagnosing the root cause of the problem.
    // String id
    test('to test the property `id`', () async {
      // TODO
    });

    // Short-hand name for an error, useful for discriminating between errors with the same status code.
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
