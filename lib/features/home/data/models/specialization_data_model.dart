import 'package:doctorak/core/shared/models/doctor_model.dart';
import 'package:doctorak/features/home/domain/entities/specialization_data_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'specialization_data_model.freezed.dart';
part 'specialization_data_model.g.dart';

@freezed
class SpecializationDataModel with _$SpecializationDataModel {
  const factory SpecializationDataModel({
    int? id,
    String? name,
    @JsonKey(name: 'doctors') List<DoctorModel?>? doctors,
  }) = _SpecializationDataModel;

  factory SpecializationDataModel.fromJson(Map<String, dynamic> json) =>
      _$SpecializationDataModelFromJson(json);
}

extension SpecializationDataModelExtension on SpecializationDataModel {
  SpecializationDataEntity toEntity() {
    return SpecializationDataEntity(
      id: id,
      name: name,
      doctors: doctors?.map((doctor) => doctor?.toEntity()).toList(),
    );
  }
}
