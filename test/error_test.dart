import 'package:test/test.dart';
import 'package:stability_api/stability_api.dart';

// tests for Error
void main() {
  final instance = ErrorBuilder();
  // TODO add properties to the builder and call build()

  group(Error, () {
    // A unique identifier for this particular occurrence of the problem.
    // String id
    test('to test the property `id`', () async {
      // TODO
    });

    // The short-name of this class of errors e.g. `bad_request`.
    // String name
    test('to test the property `name`', () async {
      // TODO
    });

    // A human-readable explanation specific to this occurrence of the problem.
    // String message
    test('to test the property `message`', () async {
      // TODO
    });
  });
}
