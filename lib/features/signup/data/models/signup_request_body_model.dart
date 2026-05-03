import 'package:doctorak/features/signup/domain/entities/signup_request_body_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'signup_request_body_model.freezed.dart';
part 'signup_request_body_model.g.dart';

@freezed
class SignupRequestBodyModel with _$SignupRequestBodyModel {
  const factory SignupRequestBodyModel({
    @JsonKey(name: 'name') required String userName,
    required String phone,
    required String email,
    required String password,
    @JsonKey(name: 'password_confirmation') required String passwordConfirmation,
    required int gender,
  }) = _SignupRequestBodyModel;

  factory SignupRequestBodyModel.fromJson(Map<String, dynamic> json) =>
      _$SignupRequestBodyModelFromJson(json);

  factory SignupRequestBodyModel.fromEntity(SignupRequestBodyEntity entity) {
    return SignupRequestBodyModel(
      userName: entity.userName,
      phone: entity.phone,
      email: entity.email,
      password: entity.password,
      passwordConfirmation: entity.passwordConfirmation,
      gender: entity.gender,
    );
  }
}
