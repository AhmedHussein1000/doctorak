import 'package:doctorak/core/widgets/custom_appbar.dart';
import 'package:doctorak/features/home/presentation/screens/widgets/all_specialities_screen_widgets/all_specialities_bloc_builder.dart';
import 'package:flutter/material.dart';

class AllSpecialitiesScreen extends StatelessWidget {
  const AllSpecialitiesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'All Specialities'),
      body: const AllSpecialitiesBlocBuilder(),
    );
  }
}
