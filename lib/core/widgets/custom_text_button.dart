import 'package:doctorak/core/themes/app_colors.dart';
import 'package:doctorak/core/themes/app_styles.dart';
import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    super.key,
    required this.buttonText,
    this.textStyle,
    required this.onPressed,
  });
  final String buttonText;
  final TextStyle? textStyle;
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        buttonText,
        style:
            textStyle ??
            Styles.font14Regular.copyWith(color: AppColors.primaryBlue),
      ),
    );
  }
}
