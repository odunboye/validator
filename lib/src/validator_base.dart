abstract class ValidatorBase {
  String? validateName(String? value);
  String? validateEmail(String? value);
  String? validatePhone(String? value);
  String? validatePassword(String value);
  String? validateConfirmPassword(String? value, String? value2);
  String? validateAmount(String value);
  String? validateNotEmpty(String value);
  String? validateAboveX(String? value, num x);
  String? validateBetweenXandY(String? value, num x, num y);
}
