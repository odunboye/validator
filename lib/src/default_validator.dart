import 'package:validator/validator.dart';
import 'package:validator/src/internal_validator/default_internal_validator.dart';

class DefaultValidator implements ValidatorBase {
  final _ = DefaultInternalValidator();

  @override
  String? validateEmail(String? value) {
    return !_.isValidEmail(value) ? "Enter valid email address" : null;
  }

  @override
  String? validateName(String? value) {
    return !_.isValidName(value) ? 'Enter valid name' : null;
  }

  @override
  String? validatePhone(String? value) {
    if (!_.isValidPhone(value)) {
      return 'Mobile Number must be of 10 digit';
    } else {
      return null;
    }
  }

  @override
  String? validatePassword(String? value) {
    RegExp regex =
        RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
    if (value == null) {
      return 'Please enter password';
    }
    if (value.isEmpty) {
      return 'Please enter password';
    } else {
      if (!regex.hasMatch(value)) {
        return 'Password must contain:\n• Upper case and lower case letters\n• A symbol (@,&,#)\n• Minimum of 8 characters';
      } else {
        return null;
      }
    }
  }

  @override
  String? validateConfirmPassword(String? value, String? value2) {
    if (value == null || value2 == null) {
      return 'Please enter password';
    }
    if (value != value2) {
      return 'Password does not match';
    } else {
      return null;
    }
  }

  @override
  String? validateAmount(String? val, [double? leastValue = 0]) {
    if (val == null) {
      return 'Please enter amount';
    }

    final value = val.trim().replaceAll(',', '');

    if (!_.isNumeric(value)) {
      return 'Please enter amount';
    }

    if (leastValue == 0) {
      return null;
    }

    final valueNumber = double.parse(value);

    if (valueNumber <= leastValue!) {
      return 'Enter Value greater than $leastValue';
    }
    return null;
  }

  @override
  String? validateAboveX(String? value, num x) {
    if (value == null) {
      return 'Please enter amount';
    }
    if (!_.isNumeric(value)) {
      return 'Please enter amount';
    }

    if (num.parse(value) < x) {
      return 'Must be greater than $x';
    }

    return null;
  }

  @override
  String? validateBetweenXandY(String? value, num x, num y) {
    if (value == null) {
      return 'Please enter amount';
    }
    if (!_.isNumeric(value)) {
      return 'Please enter amount';
    }

    if (num.parse(value) < x) {
      return 'Must be greater than $x';
    }

    if (num.parse(value) > y) {
      return 'Must be less than $y';
    }

    return null;
  }

  @override
  String? validateNotEmpty(String? value) {
    if (value == null) {
      return 'Field cannot be empty';
    }
    if (value.trim().isEmpty) {
      return 'Field cannot be empty';
    }
    return null;
  }

  String? validateNonNull(String? value) {
    if (value == null) {
      return 'Please select option.';
    }
    return null;
  }
}
