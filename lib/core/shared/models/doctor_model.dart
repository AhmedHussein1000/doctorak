import 'package:doctorak/core/shared/models/city_model.dart';
import 'package:doctorak/features/home/data/models/specialization_data_model.dart';
import 'package:doctorak/core/shared/entities/doctor_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'doctor_model.freezed.dart';
part 'doctor_model.g.dart';

@freezed
class DoctorModel with _$DoctorModel {
  const factory DoctorModel({
    int? id,
    String? name,
    String? email,
    String? phone,
    String? photo,
    String? gender,
    String? address,
    String? description,
    String? degree,
    SpecializationDataModel? specialization,
    CityModel? city,
    @JsonKey(name: 'appoint_price') int? appointPrice,
    @JsonKey(name: 'start_time') String? startTime,
    @JsonKey(name: 'end_time') String? endTime,
  }) = _DoctorModel;

  factory DoctorModel.fromJson(Map<String, dynamic> json) =>
      _$DoctorModelFromJson(json);
}

extension DoctorModelExtension on DoctorModel {
  DoctorEntity toEntity() {
    return DoctorEntity(
      id: id,
      name: name,
      email: email,
      phone: phone,
      photo: photo,
      gender: gender,
      address: address,
      description: description,
      degree: degree,
      specialization: specialization?.toEntity(),
      city: city?.toEntity(),
      appointPrice: appointPrice,
      startTime: startTime,
      endTime: endTime,
    );
  }
}
