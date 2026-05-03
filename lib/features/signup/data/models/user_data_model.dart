import 'package:doctorak/features/signup/domain/entities/user_data_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_data_model.freezed.dart';
part 'user_data_model.g.dart';

@freezed
class UserDataModel with _$UserDataModel {
  const factory UserDataModel({String? token, String? userName}) =
      _UserDataModel;

  factory UserDataModel.fromJson(Map<String, dynamic> json) =>
      _$UserDataModelFromJson(json);
}

extension UserDataModelExtension on UserDataModel {
  UserDataEntity toEntity() => UserDataEntity(token: token, userName: userName);
}
