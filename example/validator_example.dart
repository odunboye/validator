import 'package:validator/validator.dart';

void main() {
  var defaultValidator = DefaultValidator();
  print('awesome: ${defaultValidator.validateEmail('a@a.com')}');
  print('awesome: ${defaultValidator.validateEmail('@a.com')}');
  print('awesome: ${defaultValidator.validateEmail('@a.com')}');
}
