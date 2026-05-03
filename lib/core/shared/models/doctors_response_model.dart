import 'package:doctorak/core/shared/entities/doctors_response_entity.dart';
import 'package:doctorak/core/shared/models/doctor_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'doctors_response_model.freezed.dart';
part 'doctors_response_model.g.dart';

@freezed
class DoctorsResponseModel with _$DoctorsResponseModel {
  const factory DoctorsResponseModel({
    @JsonKey(name: 'data') List<DoctorModel?>? doctorsList,
  }) = _DoctorsResponseModel;

  factory DoctorsResponseModel.fromJson(Map<String, dynamic> json) =>
      _$DoctorsResponseModelFromJson(json);
}

extension DoctorsResponseModelExtension on DoctorsResponseModel {
  DoctorsResponseEntity toEntity() {
    return DoctorsResponseEntity(
      doctorsList: doctorsList?.map((doctor) => doctor?.toEntity()).toList(),
    );
  }
}
