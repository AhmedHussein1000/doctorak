import 'package:doctorak/core/shared/entities/doctor_entity.dart';

class SpecializationDataEntity {
  final int? id;
  final String? name;
  final List<DoctorEntity?>? doctors;

 const SpecializationDataEntity({this.id, this.name, this.doctors});
}