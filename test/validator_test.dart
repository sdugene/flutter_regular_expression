import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_regex_validator/validator.dart';

void main() {
  test('mail regex', () {
    expect(Validator.mail('test'), false);
    expect(Validator.mail('test@'), false);
    expect(Validator.mail('test@test'), false);
    expect(Validator.mail('test@test.'), false);
    expect(Validator.mail('test@test.c'), false);
    expect(Validator.mail('test@.com'), false);

    expect(Validator.mail('test@test.com'), true);
    expect(Validator.mail('test+test@test.com'), true);
  });

  test('phone regex', () {
    expect(Validator.frenchPhone('0102'), false);
    expect(Validator.frenchPhone('010203'), false);
    expect(Validator.frenchPhone('01020304'), false);
    expect(Validator.frenchPhone('+331020304'), false);
    expect(Validator.frenchPhone('0033010203'), false);

    expect(Validator.frenchPhone('0024310203011'), false);
    expect(Validator.frenchPhone('00243 102030110'), false);

    expect(Validator.frenchPhone('0102030405'), true);
    expect(Validator.frenchPhone('+33102030405'), true);
  });
}
