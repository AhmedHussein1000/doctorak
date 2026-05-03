import 'package:doctorak/core/shared/entities/doctor_entity.dart';

class DoctorsResponseEntity {
  final List<DoctorEntity?>? doctorsList;

  const DoctorsResponseEntity({this.doctorsList});
}
