import 'package:doctorak/features/home/data/models/specialization_data_model.dart';
import 'package:doctorak/features/home/domain/entities/specializations_response_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'specializations_response_model.freezed.dart';
part 'specializations_response_model.g.dart';

@freezed
class SpecializationsResponseModel with _$SpecializationsResponseModel {
  const factory SpecializationsResponseModel({
    @JsonKey(name: 'data') List<SpecializationDataModel?>? specializationDataList,
  }) = _SpecializationsResponseModel;

  factory SpecializationsResponseModel.fromJson(Map<String, dynamic> json) =>
      _$SpecializationsResponseModelFromJson(json);
}

extension SpecializationsResponseModelExtension on SpecializationsResponseModel {
  SpecializationsResponseEntity toEntity() {
    return SpecializationsResponseEntity(
      specializationDataList: specializationDataList
          ?.map((specializationData) => specializationData?.toEntity())
          .toList(),
    );
  }
}
