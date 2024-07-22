import 'package:test/test.dart';
import 'package:stability_api/stability_api.dart';

/// tests for EnginesApi
void main() {
  final instance = StabilityApi().getEnginesApi();

  group(EnginesApi, () {
    // List engines
    //
    // List all engines available to your organization/user
    //
    //Future<BuiltList<Engine>> listEngines({ String organization, String stabilityClientID, String stabilityClientVersion }) async
    test('test listEngines', () async {
      // TODO
    });
  });
}
