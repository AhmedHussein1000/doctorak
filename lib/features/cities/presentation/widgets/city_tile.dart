
import 'package:doctorak/core/router/route_names.dart';
import 'package:doctorak/core/shared/entities/city_entity.dart';
import 'package:doctorak/core/themes/app_colors.dart';
import 'package:doctorak/core/themes/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class CityTile extends StatelessWidget {
  const CityTile({super.key, required this.city});

  final CityEntity city;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.symmetric(horizontal: 24.w),
      leading: Container(
        width: 36.w,
        height: 36.w,
        decoration: BoxDecoration(
          color: AppColors.primarySurface,
          borderRadius: BorderRadius.circular(10.r),
        ),
        child: Icon(
          Icons.apartment_rounded,
          color: AppColors.primaryBlue,
          size: 18.sp,
        ),
      ),
      title: Text(
        city.name ?? '',
        style: Styles.font14Medium.copyWith(color: AppColors.textPrimaryDark),
      ),
      trailing: Icon(
        Icons.arrow_forward_ios_rounded,
        size: 16.sp,
        color: AppColors.lightGrey,
      ),
      onTap: () {
        context.pushNamed(RouteNames.doctorsByCityName, extra: city);
      },
    );
  }
}