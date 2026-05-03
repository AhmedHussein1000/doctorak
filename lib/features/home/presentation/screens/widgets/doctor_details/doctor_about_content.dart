import 'package:doctorak/core/shared/entities/doctor_entity.dart';
import 'package:doctorak/features/home/presentation/screens/widgets/doctor_details/info_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorAboutContent extends StatelessWidget {
  final DoctorEntity doctor;

  const DoctorAboutContent({super.key, required this.doctor});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 24.h,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InfoSection(
          title: 'About me',
          value: doctor.description ?? 'No description available.',
        ),
        InfoSection(title: 'Working Time', value: _formatWorkingTime()),
        InfoSection(title: 'Phone', value: doctor.phone ?? 'Not available'),
        InfoSection(
          title: 'Practice Location',
          value: doctor.address ?? 'Not available',
        ),
      ],
    );
  }

  String _formatWorkingTime() {
    final start = doctor.startTime;
    final end = doctor.endTime;
    if (start == null && end == null) return 'Not available';
    return '${start ?? '--'} - ${end ?? '--'}';
  }
}
