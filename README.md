

A Dart/Flutter package for validating input strings.


## Features

 Validates the following :
- Empty String
- Name
- Email
- Password
- Confirm password
- Telephone number
- Amount (with optional least value)
- Any value less than, greater than or in between 2 values

## Getting started

```dart
dependencies: 
    validator: '^1.0.0'
```

## Usage

Null result means String passes validation \
Message result means valdation failed

```dart
import 'package:validator/validator.dart';

void main() {
  var defaultValidator = DefaultValidator();
  print('result: ${defaultValidator.validateEmail('@a.com')}');
  print('result: ${defaultValidator.validateEmail('a@a')}');
  print('result: ${defaultValidator.validateEmail('a@a.com')}');
  print('result: ${defaultValidator.validateEmail('john@john.com')}');
}

```

## Additional information

Contributions, Pull request, feature requests are welcome 