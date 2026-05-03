class SignupRequestBodyEntity {
  final String userName;
  final String phone;
  final String email;
  final String password;
  final String passwordConfirmation;
  final int gender;

  const SignupRequestBodyEntity({
    required this.userName,
    required this.phone,
    required this.email,
    required this.password,
    required this.passwordConfirmation,
    required this.gender,
  });
}