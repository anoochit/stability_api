import 'package:test/test.dart';
import 'package:stability_api/stability_api.dart';

// tests for FunctionObject
void main() {
  final instance = FunctionObjectBuilder();
  // TODO add properties to the builder and call build()

  group(FunctionObject, () {
    // The name of the function to be called. Must be a-z, A-Z, 0-9, or contain underscores and dashes, with a maximum length of 64.
    // String name
    test('to test the property `name`', () async {
      // TODO
    });

    // FunctionParameters parameters
    test('to test the property `parameters`', () async {
      // TODO
    });

    // A description of what the function does, used by the model to choose when and how to call the function.
    // String description
    test('to test the property `description`', () async {
      // TODO
    });
  });
}
