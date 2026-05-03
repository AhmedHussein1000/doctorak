import 'package:doctorak/core/utils/app_constants.dart';
import 'package:json_annotation/json_annotation.dart';

part 'api_error_model.g.dart';

@JsonSerializable()
class ApiErrorModel {
  final String? message;
  final int? code;
  final Data? data;

  const ApiErrorModel({this.message, this.code, this.data});

  factory ApiErrorModel.fromJson(Map<String, dynamic> json) {
    final rawData = json['data'];
    final Data? data = (rawData is Map<String, dynamic>)
        ? Data.fromJson(rawData)
        : null;

    return ApiErrorModel(
      message: json['message'] as String?,
      code: (json['code'] as num?)?.toInt(),
      data: data,
    );
  }

  String getAllErrorMessages() {
    if (data != null) {
      final errors = <String>[];
      if (data!.name != null) errors.addAll(data!.name!);
      if (data!.email != null) errors.addAll(data!.email!);
      if (data!.phone != null) errors.addAll(data!.phone!);
      if (data!.gender != null) errors.addAll(data!.gender!);
      if (data!.password != null) errors.addAll(data!.password!);

      if (errors.isNotEmpty) return errors.join('\n');
    }
    return message ?? AppConstants.unknownError;
  }
}

@JsonSerializable()
class Data {
  final List<String>? name;
  final List<String>? email;
  final List<String>? gender;
  final List<String>? phone;
  final List<String>? password;

  const Data({
    this.email,
    this.phone,
    this.name,
    this.gender,
    this.password,
  });

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

