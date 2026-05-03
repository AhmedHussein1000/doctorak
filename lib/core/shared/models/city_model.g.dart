// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'city_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CityModelImpl _$$CityModelImplFromJson(Map<String, dynamic> json) =>
    _$CityModelImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      governrate: json['governrate'] == null
          ? null
          : GovernrateModel.fromJson(
              json['governrate'] as Map<String, dynamic>,
            ),
    );

Map<String, dynamic> _$$CityModelImplToJson(_$CityModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'governrate': instance.governrate,
    };

_$GovernrateModelImpl _$$GovernrateModelImplFromJson(
  Map<String, dynamic> json,
) => _$GovernrateModelImpl(
  id: (json['id'] as num?)?.toInt(),
  name: json['name'] as String?,
);

Map<String, dynamic> _$$GovernrateModelImplToJson(
  _$GovernrateModelImpl instance,
) => <String, dynamic>{'id': instance.id, 'name': instance.name};
