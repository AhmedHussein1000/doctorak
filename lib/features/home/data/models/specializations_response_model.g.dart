// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'specializations_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SpecializationsResponseModelImpl _$$SpecializationsResponseModelImplFromJson(
  Map<String, dynamic> json,
) => _$SpecializationsResponseModelImpl(
  specializationDataList: (json['data'] as List<dynamic>?)
      ?.map(
        (e) => e == null
            ? null
            : SpecializationDataModel.fromJson(e as Map<String, dynamic>),
      )
      .toList(),
);

Map<String, dynamic> _$$SpecializationsResponseModelImplToJson(
  _$SpecializationsResponseModelImpl instance,
) => <String, dynamic>{'data': instance.specializationDataList};
