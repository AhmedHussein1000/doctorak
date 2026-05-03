import 'package:doctorak/features/signup/data/models/user_data_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/login_response_entity.dart';

part 'login_response_model.freezed.dart';
part 'login_response_model.g.dart';

@freezed
class LoginResponseModel with _$LoginResponseModel {
  const factory LoginResponseModel({
    String? message,
    @JsonKey(name: 'data') UserDataModel? userData,
    bool? status,
    int? code,
  }) = _LoginResponseModel;

  factory LoginResponseModel.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseModelFromJson(json);
}

extension LoginResponseModelExtension on LoginResponseModel {
  LoginResponseEntity toEntity() => LoginResponseEntity(
    message: message,
    userData: userData?.toEntity(),
    status: status,
    code: code,
  );
}
