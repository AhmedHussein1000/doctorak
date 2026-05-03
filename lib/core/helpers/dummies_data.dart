import 'package:doctorak/core/shared/entities/city_entity.dart';
import 'package:doctorak/core/shared/entities/doctor_entity.dart';
import 'package:doctorak/features/home/domain/entities/specialization_data_entity.dart';

const SpecializationDataEntity dummySpecialization = SpecializationDataEntity(
  id: 1,
  name: "Specialization",
  doctors: [],
);
const List<SpecializationDataEntity> dummySpecializationsList = [
  dummySpecialization,
  dummySpecialization,
  dummySpecialization,
  dummySpecialization,
  dummySpecialization,
  dummySpecialization,
  dummySpecialization,
  dummySpecialization,
  dummySpecialization,
  dummySpecialization,
];
const DoctorEntity dummyDoctor = DoctorEntity(
  id: 2,
  name: 'Prof. Rafaela Gutkowski',
  phone: '123456789',
  gender: 'male',
  appointPrice: 300,
  photo: 'https://via.placeholder.com/640x480.png/001177?text=doctors+quasi',
  email: 'mann.ubaldo@example.net',
  degree: 'Specialist',
);
const List<DoctorEntity> dummyDoctorsList = [
  dummyDoctor,
  dummyDoctor,
  dummyDoctor,
  dummyDoctor,
  dummyDoctor,
  dummyDoctor,
  dummyDoctor,
  dummyDoctor,
  dummyDoctor,
  dummyDoctor,
];

const Map<String, List<CityEntity>> dummyGroupedCities = {
  'Cairo': [
    CityEntity(
      id: 1,
      name: 'Cairo',
      governrate: GovernrateEntity(id: 1, name: 'Cairo'),
    ),
    CityEntity(
      id: 2,
      name: 'Giza',
      governrate: GovernrateEntity(id: 1, name: 'Cairo'),
    ),
  ],
  'Alexandria': [
    CityEntity(
      id: 3,
      name: 'Alexandria',
      governrate: GovernrateEntity(id: 2, name: 'Alexandria'),
    ),
  ],
};
