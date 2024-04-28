import 'package:validator/src/extension/custom_extensions.dart';
import 'package:validator/src/internal_validator/internal_validator.dart';

class DefaultInternalValidator implements InternalValidator {
  static const acceptableLength = 3;

  @override
  bool isValidEmail(String? value) {
    return (value == null || !value.isValidEmail()) ? false : true;
  }

  @override
  bool isValidName(String? value) {
    return (value == null || value.length < acceptableLength) ? false : true;
  }

  @override
  bool isValidPhone(String? value) {
    return (value == null || !value.isValidPhone()) ? false : true;
  }

  @override
  bool isNumeric(String? s, {bool? checkZero}) {
    if (s == null || s.isEmpty) {
      return false;
    }
    final res = double.tryParse(s);
    if (res == null) {
      false;
    }
    if (!res!.isNaN) {
      return true;
    }
    return false;
  }
}
