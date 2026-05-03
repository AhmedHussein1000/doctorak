import 'package:doctorak/core/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

Future<dynamic> customAlertDialog({
  required BuildContext context,
  required String message,
  bool barrierDismissible = false,
  TextStyle? contentStyle,
  TextStyle? titleStyle,
  void Function()? onConfirmPressed,
  void Function()? onCancelPressed,
  String? firstButtonTitle,
  String? secondButtonTitle,
}) {
  return showDialog(
    barrierDismissible: barrierDismissible,
    context: context,
    builder: (context) => AlertDialog(
      actions: [
        TextButton(
          onPressed: onConfirmPressed,
          child: Text(
            firstButtonTitle ?? 'Ok',
            style:
                titleStyle ??
                TextStyle(
                  color: AppColors.primaryBlue,
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w600,
                ),
          ),
        ),
        TextButton(
          onPressed: onCancelPressed ?? () => context.pop(),
          child: Text(
            secondButtonTitle ?? 'Cancel',
            style:
                titleStyle ??
                TextStyle(
                  color: AppColors.textGrey,
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w600,
                ),
          ),
        ),
      ],
      content: Text(
        message,
        style:
            contentStyle ??
            TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w500),
      ),
    ),
  );
}
