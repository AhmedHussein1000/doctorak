import 'package:doctorak/core/shared/entities/city_entity.dart';
import 'package:doctorak/features/cities/presentation/widgets/governate_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skeletonizer/skeletonizer.dart';

class CitiesList extends StatelessWidget {
  final bool isShimmer;
  final Map<String, List<CityEntity>> groupedCities;

  const CitiesList({super.key, required this.groupedCities, this.isShimmer = false});

  @override
  Widget build(BuildContext context) {
    final governrates = groupedCities.keys.toList();

    return Skeletonizer(
      enabled: isShimmer,
      child: ListView.builder(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
        itemCount: governrates.length,
        itemBuilder: (context, index) {
          final governrateName = governrates[index];
          final cities = groupedCities[governrateName]!;

          return GovernrateSection(
            governrateName: governrateName,
            cities: cities,
          );
        },
      ),
    );
  }
}