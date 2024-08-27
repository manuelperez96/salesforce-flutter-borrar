import 'package:sf_commerce_sdk/utils/pkce_helper.dart';
import 'package:test/test.dart';

void main() {
  final correctSeed = [
    129,
    245,
    181,
    161,
    72,
    107,
    241,
    46,
    63,
    6,
    222,
    240,
    140,
    122,
    164,
    79,
    75,
    106,
    7,
    99,
    190,
    111,
    111,
    22,
    88,
    119,
    8,
    4,
    70,
    111,
    243,
    145,
  ];
  final incorrectSeed = [
    129,
    245,
    181,
    161,
    72,
    107,
    241,
    46,
    63,
    6,
    222,
    240,
    140,
    122,
    164,
    79,
    75,
    106,
    7,
    99,
    190,
    111,
    111,
    22,
    88,
    119,
    8,
    4,
    70,
    111,
    243,
  ];
  const matcher = (
    'gfW1oUhr8S4_Bt7wjHqkT0tqB2O-b28WWHcIBEZv85E',
    'UFqm5VKctVqM8KzYfirx7LbCXuDxkRzHR-qlb_eViyc'
  );

  group(
    'PkceHelper',
    () {
      group(
        'generateCodes',
        () {
          test(
            'given a seed return a correct Pkce',
            () {
              expect(PkceHelper.generateCodes(seed: correctSeed), matcher);
            },
          );

          test(
            'given a incorrect seed throw an assert error',
            () {
              expect(
                () => PkceHelper.generateCodes(seed: incorrectSeed),
                throwsA(
                  predicate((e) => e is AssertionError),
                ),
              );
            },
          );
        },
      );
    },
  );
}
