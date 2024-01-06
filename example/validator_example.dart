import 'package:validator/validator.dart';

void main() {
  var defaultValidator = DefaultValidator();
  print('result: ${defaultValidator.validateEmail('@a.com')}');
  print('result: ${defaultValidator.validateEmail('a@a')}');
  print('result: ${defaultValidator.validateEmail('a@a.com')}');
  print('result: ${defaultValidator.validateEmail('john@john.com')}');
}
