import 'package:doctorak/core/shared/entities/city_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'city_model.freezed.dart';
part 'city_model.g.dart';

@freezed
class CityModel with _$CityModel {
  const factory CityModel({
    int? id,
    String? name,
    GovernrateModel? governrate,
  }) = _CityModel;

  factory CityModel.fromJson(Map<String, dynamic> json) =>
      _$CityModelFromJson(json);
}

extension CityModelExtension on CityModel {
  CityEntity toEntity() {
    return CityEntity(id: id, name: name, governrate: governrate?.toEntity());
  }
}

@freezed
class GovernrateModel with _$GovernrateModel {
  const factory GovernrateModel({
    int? id,
    String? name,
  }) = _GovernrateModel;

  factory GovernrateModel.fromJson(Map<String, dynamic> json) =>
      _$GovernrateModelFromJson(json);
}

extension GovernrateModelExtension on GovernrateModel {
  GovernrateEntity toEntity() {
    return GovernrateEntity(id: id, name: name);
  }
}
