import 'package:doctorak/core/helpers/app_regex.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Password validation test', () {
    testValidPassword();
    testInvalidEmails();
  });
}

void testInvalidEmails() {
  final invalidPasswords = [
    'test1234',
    'TEST1234',
    'TestTest',
    'Test@',
    'Test1234Test1234',
    'Test@12',
    'Test@ 1234',
    'Test@1234 ',
    '',
  ];
  for (var invalidPassword in invalidPasswords) {
    test('Given an invalid password $invalidPassword then expect false', () {
      bool isValid = AppRegex.isPasswordValid(invalidPassword);
      expect(isValid, false);
    });
  }
}

void testValidPassword() {
  final validPasswords = [
    'Test@123',
    'Test@1234Test@1234',
    'Test@1234Test@1234Test@1234',
  ];
  for (var validPassword in validPasswords) {
    test('Given a password $validPassword then expect true', () {
      bool isValid = AppRegex.isPasswordValid(validPassword);
      expect(isValid, true);
    });
  }
}
