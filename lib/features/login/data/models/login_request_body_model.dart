import 'package:doctorak/features/login/domain/entities/login_request_body_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_request_body_model.freezed.dart';
part 'login_request_body_model.g.dart';

@freezed
class LoginRequestBodyModel with _$LoginRequestBodyModel {
  const factory LoginRequestBodyModel({
    required String email,
    required String password,
  }) = _LoginRequestBodyModel;

  factory LoginRequestBodyModel.fromJson(Map<String, dynamic> json) =>
      _$LoginRequestBodyModelFromJson(json);

  factory LoginRequestBodyModel.fromEntity(LoginRequestBodyEntity entity) {
    return LoginRequestBodyModel(
      email: entity.email,
      password: entity.password,
    );
  }
}
