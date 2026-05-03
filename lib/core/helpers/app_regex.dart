class AppRegex {
  AppRegex._();

  static final _emailRegex = RegExp(
    r"^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$",
  );
  static final _passwordRegex = RegExp(
    r"^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$",
  );
  static final _phoneRegex = RegExp(r'^(010|011|012|015)[0-9]{8}$');
  static final _lowerCaseRegex = RegExp(r'(?=.*[a-z])');
  static final _upperCaseRegex = RegExp(r'(?=.*[A-Z])');
  static final _numberRegex = RegExp(r'(?=.*?[0-9])');
  static final _specialCharRegex = RegExp(r'(?=.*?[#?!@$%^&*-])');
  static final _minLengthRegex = RegExp(r'.{8,}');

  static bool isEmailValid(String email) => _emailRegex.hasMatch(email);

  static bool isPasswordValid(String password) =>
      _passwordRegex.hasMatch(password);

  static bool isPhoneNumberValid(String phoneNumber) =>
      _phoneRegex.hasMatch(phoneNumber);

  static bool hasLowerCase(String password) =>
      _lowerCaseRegex.hasMatch(password);

  static bool hasUpperCase(String password) =>
      _upperCaseRegex.hasMatch(password);

  static bool hasNumber(String password) => _numberRegex.hasMatch(password);

  static bool hasSpecialCharacter(String password) =>
      _specialCharRegex.hasMatch(password);

  static bool hasMinLength(String password) =>
      _minLengthRegex.hasMatch(password);
}
