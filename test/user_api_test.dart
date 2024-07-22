import 'package:test/test.dart';
import 'package:stability_api/stability_api.dart';

/// tests for UserApi
void main() {
  final instance = StabilityApi().getUserApi();

  group(UserApi, () {
    // Account details
    //
    // Get information about the account associated with the provided API key
    //
    //Future<AccountResponseBody> userAccount() async
    test('test userAccount', () async {
      // TODO
    });

    // Account balance
    //
    // Get the credit balance of the account/organization associated with the API key
    //
    //Future<BalanceResponseBody> userBalance({ String organization, String stabilityClientID, String stabilityClientVersion }) async
    test('test userBalance', () async {
      // TODO
    });
  });
}
