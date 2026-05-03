import 'package:doctorak/features/signup/data/models/user_data_model.dart';
import 'package:doctorak/features/signup/domain/entities/signup_response_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'signup_response_model.freezed.dart';
part 'signup_response_model.g.dart';

@freezed
class SignupResponseModel with _$SignupResponseModel {
  const factory SignupResponseModel({
    String? message,
    @JsonKey(name: 'data') UserDataModel? userData,
    bool? status,
    int? code,
  }) = _SignupResponseModel;

  factory SignupResponseModel.fromJson(Map<String, dynamic> json) =>
      _$SignupResponseModelFromJson(json);
}

extension SignupResponseModelExtension on SignupResponseModel {
  SignupResponseEntity toEntity() => SignupResponseEntity(
        message: message,
        userData: userData?.toEntity(),
        status: status,
        code: code,
      );
}
