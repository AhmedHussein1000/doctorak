import 'package:doctorak/features/home/domain/entities/specialization_data_entity.dart';
import 'package:doctorak/features/home/presentation/screens/widgets/all_specialities_screen_widgets/speciality_item.dart';
import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';

class AllSpecialitiesList extends StatelessWidget {
  const AllSpecialitiesList({
    super.key,
    required this.specializationsList,
    this.isShimmer = false,
  });
  final List<SpecializationDataEntity?>? specializationsList;
  final bool isShimmer;
  @override
  Widget build(BuildContext context) {
    return Skeletonizer(
      enabled: isShimmer,
      child: GridView.builder(
        padding: const EdgeInsetsDirectional.only(
          top: 42,
          start: 30,
          end: 30,
          bottom: 20,
        ),
        itemCount: specializationsList!.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 32,
          crossAxisSpacing: 36,
          childAspectRatio: 80 / 117,
        ),
        itemBuilder: (context, index) =>
            SpecialityItem(specializationData: specializationsList![index]!),
      ),
    );
  }
}
