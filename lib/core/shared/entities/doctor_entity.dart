import 'package:doctorak/core/shared/entities/city_entity.dart';
import 'package:doctorak/features/home/domain/entities/specialization_data_entity.dart';

class DoctorEntity {
  final int? id;
  final String? name;
  final String? email;
  final String? phone;
  final String? photo;
  final String? gender;
  final String? address;
  final String? description;
  final String? degree;
  final SpecializationDataEntity? specialization;
  final CityEntity? city;
  final int? appointPrice;
  final String? startTime;
  final String? endTime;

 const DoctorEntity({
    this.id,
    this.name,
    this.email,
    this.phone,
    this.photo,
    this.gender,
    this.address,
    this.description,
    this.degree,
    this.specialization,
    this.city,
    this.appointPrice,
    this.startTime,
    this.endTime,
  });
}
