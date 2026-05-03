import 'package:doctorak/core/helpers/app_regex.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group(' email validation tests', () {
    testValidEmails();

    testInvalidEmails();
  });
}

void testInvalidEmails() {
  final invalidEmails = [
    'testexample.com',
    'test@.com',
    'test@example',
    'test@ex!ample.com',
    'test@@example.com',
    ' test@example.com ',
    '',
  ];
  for (var invalidEmail in invalidEmails) {
    test('test invalid emails', () {
      bool isValid = AppRegex.isEmailValid(invalidEmail);
      expect(isValid, false);
    });
  }
}

void testValidEmails() {
  final validEmails = ['test@example.com', 'test@mail.example.com'];
  for (var validEmail in validEmails) {
    test('given a valid email $validEmail then expect true', () {
      bool isValid = AppRegex.isEmailValid(validEmail);
      expect(isValid, true);
    });
  }
}
