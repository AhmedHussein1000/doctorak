import 'package:doctorak/core/widgets/custom_appbar.dart';
import 'package:doctorak/features/home/presentation/screens/widgets/all_doctors_widgets/all_doctors_bloc_builder.dart';
import 'package:flutter/material.dart';

class AllDoctorsScreen extends StatelessWidget {
  const AllDoctorsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'All Doctors'),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16),
        child: const AllDoctorsBlocBuilder(),
      ),
    );
  }
}
