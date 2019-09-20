library regular_expression;

import 'package:flutter_regex_validator/constant.dart';

abstract class Validator {

  static bool mail(String mail) {
    return Constant.mailRegex.allMatches(mail).isNotEmpty;
  }

  static bool frenchPhone(String phone) {
    return Constant.frenchPhoneRegex.allMatches(phone).isNotEmpty;
  }
}
