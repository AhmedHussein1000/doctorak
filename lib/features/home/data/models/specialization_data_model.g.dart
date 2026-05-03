// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'specialization_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SpecializationDataModelImpl _$$SpecializationDataModelImplFromJson(
  Map<String, dynamic> json,
) => _$SpecializationDataModelImpl(
  id: (json['id'] as num?)?.toInt(),
  name: json['name'] as String?,
  doctors: (json['doctors'] as List<dynamic>?)
      ?.map(
        (e) =>
            e == null ? null : DoctorModel.fromJson(e as Map<String, dynamic>),
      )
      .toList(),
);

Map<String, dynamic> _$$SpecializationDataModelImplToJson(
  _$SpecializationDataModelImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'doctors': instance.doctors,
};
