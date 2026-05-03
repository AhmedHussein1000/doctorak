import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:doctorak/core/themes/app_colors.dart';
import 'package:doctorak/core/themes/app_styles.dart';

class BookingStepperHeader extends StatelessWidget {
  final int currentStep;

  const BookingStepperHeader({super.key, required this.currentStep});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildStepItem(0, 'Date & Time'),
        _buildDivider(0),
        _buildStepItem(1, 'Payment'),
        _buildDivider(1),
        _buildStepItem(2, 'Summary'),
      ],
    );
  }

  Widget _buildStepItem(int stepIndex, String title) {
    final bool isCompleted = currentStep > stepIndex;
    final bool isActive = currentStep == stepIndex;

    Color circleColor;
    Color iconOrTextColor;
    Color titleColor;

    if (isCompleted) {
      circleColor = AppColors.successGreen;
      iconOrTextColor = Colors.white;
      titleColor = AppColors.successGreen;
    } else if (isActive) {
      circleColor = AppColors.primaryBlue;
      iconOrTextColor = Colors.white;
      titleColor = AppColors.darkGrey;
    } else {
      circleColor = AppColors.textLighterGrey;
      iconOrTextColor = Colors.white;
      titleColor = AppColors.textGrey;
    }

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 32.w,
          height: 32.w,
          decoration: BoxDecoration(color: circleColor, shape: BoxShape.circle),
          child: Center(
            child: Text(
              '${stepIndex + 1}',
              style: Styles.font12Medium.copyWith(color: iconOrTextColor),
            ),
          ),
        ),
        SizedBox(height: 6.h),
        Text(title, style: Styles.font10Regular.copyWith(color: titleColor)),
      ],
    );
  }

  Widget _buildDivider(int stepIndex) {
    final bool isCompleted = currentStep > stepIndex;
    return Container(
      width: 49.w,
      height: 2.h,
      margin: EdgeInsets.only(bottom: 20.h, left: 16.w, right: 16.w),
      decoration: BoxDecoration(
        color: isCompleted ? AppColors.successGreen : AppColors.textLighterGrey,
        borderRadius: BorderRadius.circular(14.r),
      ),
    );
  }
}
