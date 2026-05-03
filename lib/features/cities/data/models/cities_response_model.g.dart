// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cities_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CitiesResponseModelImpl _$$CitiesResponseModelImplFromJson(
  Map<String, dynamic> json,
) => _$CitiesResponseModelImpl(
  citiesList: (json['data'] as List<dynamic>?)
      ?.map(
        (e) => e == null ? null : CityModel.fromJson(e as Map<String, dynamic>),
      )
      .toList(),
);

Map<String, dynamic> _$$CitiesResponseModelImplToJson(
  _$CitiesResponseModelImpl instance,
) => <String, dynamic>{'data': instance.citiesList};
