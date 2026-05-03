import 'package:doctorak/core/functions/get_specialization_image.dart';
import 'package:doctorak/core/themes/app_colors.dart';
import 'package:doctorak/core/themes/app_styles.dart';
import 'package:doctorak/features/home/domain/entities/specialization_data_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeSpecialityItem extends StatelessWidget {
  const HomeSpecialityItem({
    super.key,
    required this.specializationData,
    required this.isSelected,
  });
  final SpecializationDataEntity? specializationData;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 56.h,
          width: 56.w,
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            border: isSelected
                ? Border.all(color: AppColors.primaryBlue, width: 1)
                : null,
            shape: BoxShape.circle,
            color: AppColors.primarySurface,
          ),
          child: Image.asset(getSpecializationImage(specializationData?.name)),
        ),
        SizedBox(height: 12.h),
        Text(
          specializationData?.name ?? 'Unknown',
          style: isSelected ? Styles.font14Bold : Styles.font12Regular,
        ),
      ],
    );
  }
}
