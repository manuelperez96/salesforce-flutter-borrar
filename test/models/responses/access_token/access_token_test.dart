import 'package:sf_commerce_sdk/src/models/responses/access_token/access_token.dart';
import 'package:test/test.dart';

import '../../../helpers/models/access_token.dart';

void main() {
  group(
    'AccessToken',
    () {
      group(
        'Creation',
        () {
          test(
            'When call constructor return instance of AccessToken',
            () {
              expect(
                AccessToken(
                  tokenType: 'Bearer',
                  accessToken: 'access',
                  expiresIn: 3600,
                  refreshToken: 'asdf',
                  refreshTokenExpiresIn: 30,
                  usid: 'usid',
                  customerId: 'customer_id',
                  encUserId: 'enc_user_id',
                ),
                isNotNull,
              );
            },
          );

          test(
            'When call fromJson return instance of AccessToken',
            () {
              expect(
                AccessToken.fromJson({
                  'token_type': 'Bearer',
                  'access_token': 'access',
                  'expires_in': 3600,
                  'refresh_token': 'asdf',
                  'refresh_token_expires_in': 30,
                  'usid': 'usid',
                  'customer_id': 'customer_id',
                  'enc_user_id': 'enc_user_id',
                }),
                isNotNull,
              );
            },
          );
        },
      );

      group(
        'toJson()',
        () {
          test(
            'When call toJson return a json with correct format',
            () {
              expect(accessToken.toJson(), jsonMap);
            },
          );
        },
      );
    },
  );
}
