//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

import 'package:dora_client/api.dart';
import 'package:test/test.dart';

// tests for CreateIntegratorUserRequest
void main() {
  // final instance = CreateIntegratorUserRequest();

  group('test CreateIntegratorUserRequest', () {
    // Optional affiliate code, normalized to uppercase. Accepted only when creating a new account in the program owning tenant. One immutable attribution per user account; a later signup/linking call cannot add or replace it. Invalid or inactive codes fail signup atomically. Independent of QR acquisition attribution. Existing unassigned users can instead use POST /v1/affiliate_referrals/self; earlier activity is excluded.
    // String referralCode
    test('to test the property `referralCode`', () async {
      // TODO
    });

    // Optional client-reported HTTP(S) signup site URL, used only with referral_code. When omitted, a valid HTTP(S) Origin header is used; other origins are ignored. Only the hostname is stored, without path, query, credentials or fragment. Unknown if neither supplies a usable hostname. Ignored when referral_code is empty. It does not select or authenticate the tenant.
    // String signupSource
    test('to test the property `signupSource`', () async {
      // TODO
    });

    // String email
    test('to test the property `email`', () async {
      // TODO
    });

    // String firstName
    test('to test the property `firstName`', () async {
      // TODO
    });

    // String lastName
    test('to test the property `lastName`', () async {
      // TODO
    });

    // String userName
    test('to test the property `userName`', () async {
      // TODO
    });

    // CountryCode countryOfDomicile
    test('to test the property `countryOfDomicile`', () async {
      // TODO
    });

    // Optional: the user's native asset ID. Must be a CURRENCY asset; defaults to USD. The USDC asset is never allowed for integrator-created users.
    // String nativeAssetId
    test('to test the property `nativeAssetId`', () async {
      // TODO
    });

    // String photoUrl
    test('to test the property `photoUrl`', () async {
      // TODO
    });

    // String provider
    test('to test the property `provider`', () async {
      // TODO
    });

    // String providerId
    test('to test the property `providerId`', () async {
      // TODO
    });

    // String timezone
    test('to test the property `timezone`', () async {
      // TODO
    });

    // Optional: sign the new user up for this trading challenge. This creates a PENDING registration request that an admin, the tenant's integrator or one of the challenge's managers must approve before the user is actually enrolled. The challenge must belong to the new user's tenant and still be open for entries, otherwise the whole sign-up fails.
    // String challengeId
    test('to test the property `challengeId`', () async {
      // TODO
    });


  });

}
