import 'package:doctorak/core/themes/app_colors.dart';
import 'package:doctorak/core/themes/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomSeeAllHeader extends StatelessWidget {
  const CustomSeeAllHeader({
    super.key,
    required this.title,
    required this.onSeeAllPressed,
  });
  final String title;
  final void Function()? onSeeAllPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title, style: Styles.font18SemiBold),
          TextButton(
            onPressed: onSeeAllPressed,
            child: Text(
              'See All',
              style: Styles.font12Regular.copyWith(
                color: AppColors.primaryBlue,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
