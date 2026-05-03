import 'package:doctorak/core/shared/entities/city_entity.dart';
import 'package:doctorak/core/themes/app_colors.dart';
import 'package:doctorak/core/themes/app_styles.dart';
import 'package:doctorak/features/cities/presentation/widgets/city_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GovernrateSection extends StatelessWidget {
  const GovernrateSection({
    super.key,
    required this.governrateName,
    required this.cities,
  });

  final String governrateName;
  final List<CityEntity> cities;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(bottom: 12.h),
      color: AppColors.primaryBlue.withValues(alpha: 0.3),
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.r)),
      child: ExpansionTile(
        tilePadding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 4.h),
        childrenPadding: EdgeInsets.only(bottom: 8.h),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.r),
        ),
        leading: Container(
          width: 44.w,
          height: 44.w,
          decoration: BoxDecoration(
            color: AppColors.secondarySurfaceBlue,
            borderRadius: BorderRadius.circular(12.r),
          ),
          child: Icon(
            Icons.location_city_rounded,
            color: AppColors.primaryBlue,
            size: 22.sp,
          ),
        ),
        title: Text(
          governrateName.toUpperCase(),
          style: Styles.font16SemiBold.copyWith(
            color: AppColors.textPrimaryDark,
            letterSpacing: 0.5,
          ),
        ),
        subtitle: Text(
          '${cities.length} ${cities.length == 1 ? 'city' : 'cities'}',
          style: Styles.font12Regular.copyWith(color: AppColors.mediumGrey),
        ),
        children: cities.map((city) => CityTile(city: city)).toList(),
      ),
    );
  }
}
