import 'package:doctorak/core/shared/models/city_model.dart';
import 'package:doctorak/features/cities/domain/entities/cities_response_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cities_response_model.freezed.dart';
part 'cities_response_model.g.dart';

@freezed
class CitiesResponseModel with _$CitiesResponseModel {
  const factory CitiesResponseModel({
    @JsonKey(name: 'data') List<CityModel?>? citiesList,
  }) = _CitiesResponseModel;

  factory CitiesResponseModel.fromJson(Map<String, dynamic> json) =>
      _$CitiesResponseModelFromJson(json);
}

extension CitiesResponseModelExtension on CitiesResponseModel {
  CitiesResponseEntity toEntity() {
    return CitiesResponseEntity(
      citiesList: citiesList?.map((city) => city?.toEntity()).toList(),
    );
  }
}
