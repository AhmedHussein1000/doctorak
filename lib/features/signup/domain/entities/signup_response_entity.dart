import 'package:doctorak/features/signup/domain/entities/user_data_entity.dart';

class SignupResponseEntity {
  final String? message;
  final UserDataEntity? userData;
  final bool? status;
  final int? code;

  const SignupResponseEntity({this.message, this.userData, this.status, this.code});
}

