import 'package:doctorak/core/widgets/custom_appbar.dart';
import 'package:doctorak/core/widgets/doctors_widgets/doctors_list.dart';
import 'package:doctorak/features/home/domain/entities/specialization_data_entity.dart';
import 'package:flutter/material.dart';

class DoctorsBySpecialityScreen extends StatelessWidget {
  const DoctorsBySpecialityScreen({
    super.key,
    required this.specializationData,
  });
  final SpecializationDataEntity specializationData;
  @override
  Widget build(BuildContext context) {
    final doctorsBySpeciality = specializationData.doctors ?? [];
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Doctors by Speciality',
        
      ),
      body: doctorsBySpeciality.isEmpty
          ? Center(child: Text('No doctors found'))
          : Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: DoctorsList(doctors: doctorsBySpeciality),
            ),
    );
  }
}
