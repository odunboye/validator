import 'package:validator/validator.dart';
import 'package:test/test.dart';

void main() {
  group('A group of amount validation tests', () {
    final awesome = DefaultValidator();

    setUp(() {
      // Additional setup goes here.
    });

    test('Empty Amount test', () {
      expect(awesome.validateAmount(''), 'Please enter amount');
    });
    test('Zero amount no least Test', () {
      expect(awesome.validateAmount('0'), isNull);
    });
    test('Zero amount least amount Test', () {
      final leastValue = 90.0;
      expect(awesome.validateAmount('0', leastValue),
          'Enter Value greater than $leastValue');
    });
  });
}
