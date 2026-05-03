import 'package:doctorak/features/signup/domain/entities/user_data_entity.dart';

class LoginResponseEntity {
  final String? message;
  final UserDataEntity? userData;
  final bool? status;
  final int? code;

  const LoginResponseEntity({
    this.message,
    this.userData,
    this.status,
    this.code,
  });
}
