abstract class InternalValidator {
  bool isValidEmail(String? value);
  bool isValidName(String? value);
  bool isValidPhone(String? value);
  bool isNumeric(String? value);
}

abstract class InternalValidator2 extends InternalValidator {
  bool isValidPassword(String? value);
}
