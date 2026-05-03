import 'package:doctorak/features/appointments/domain/entities/patient_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'patient_model.freezed.dart';
part 'patient_model.g.dart';

@freezed
class PatientModel with _$PatientModel {
  const factory PatientModel({
    int? id,
    String? name,
    String? email,
    String? phone,
    String? gender,
  }) = _PatientModel;

  factory PatientModel.fromJson(Map<String, dynamic> json) =>
      _$PatientModelFromJson(json);
}

extension PatientModelExtension on PatientModel {
  PatientEntity toEntity() {
    return PatientEntity(
      id: id,
      name: name,
      email: email,
      phone: phone,
      gender: gender,
    );
  }
}
