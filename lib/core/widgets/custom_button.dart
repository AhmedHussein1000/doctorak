import 'package:doctorak/core/themes/app_colors.dart';
import 'package:doctorak/core/themes/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  final bool isLoading;

  const CustomButton({
    super.key,
    required this.onPressed,
    required this.buttonText,
    this.textStyle,
    this.backgroundColor,
    this.padding,
    this.borderRadius,
    this.width,
    this.height,
    this.isLoading = false,
  });

  final VoidCallback? onPressed;
  final String buttonText;
  final TextStyle? textStyle;
  final Color? backgroundColor;
  final EdgeInsetsGeometry? padding;
  final BorderRadiusGeometry? borderRadius;
  final double? width;
  final double? height;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      shape: RoundedRectangleBorder(
        borderRadius: borderRadius ?? BorderRadius.circular(16.r),
      ),
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      height: height?.h ?? 52.h,
      minWidth: width?.w ?? double.infinity,
      padding:
          padding ?? EdgeInsets.symmetric(horizontal: 12.w, vertical: 14.h),
      color: backgroundColor ?? AppColors.primaryBlue,
      disabledColor: backgroundColor ?? AppColors.primaryBlue,
      onPressed: isLoading ? () {} : onPressed,
      child: isLoading
          ? SizedBox(
              height: 24.h,
              width: 24.w,
              child: const CircularProgressIndicator(
                color: Colors.white,
                strokeWidth: 2,
              ),
            )
          : Text(
              buttonText,
              style:
                  textStyle ??
                  Styles.font16SemiBold.copyWith(color: Colors.white),
            ),
    );
  }
}
