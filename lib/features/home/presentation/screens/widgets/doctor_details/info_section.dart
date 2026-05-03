import 'package:doctorak/core/themes/app_colors.dart';
import 'package:doctorak/core/themes/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InfoSection extends StatelessWidget {
  final String title;
  final String value;

  const InfoSection({super.key, required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: Styles.font16SemiBold.copyWith(
            color: AppColors.darkGrey,
            height: 1.2,
          ),
        ),
        SizedBox(height: 12.h),
        Text(
          value,
          style: Styles.font14Regular.copyWith(
            color: AppColors.mediumGrey,
            height: 1.8,
            letterSpacing: 0.2,
          ),
        ),
      ],
    );
  }
}
