import 'package:doctorak/core/themes/app_colors.dart';
import 'package:doctorak/core/themes/app_styles.dart';
import 'package:flutter/material.dart';

class PasswordValidations extends StatelessWidget {
  const PasswordValidations({
    super.key,
    required this.hasLowerCase,
    required this.hasUpperCase,
    required this.hasNumber,
    required this.hasSpecialChar,
    required this.hasMinLength,
  });
  final bool hasLowerCase;
  final bool hasUpperCase;
  final bool hasNumber;
  final bool hasSpecialChar;
  final bool hasMinLength;
  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 2,
      children: [
        CustomPasswordRequirmentItem(
          text: 'At least 1 lowercase letter',
          isValidated: hasLowerCase,
        ),
        CustomPasswordRequirmentItem(
          text: 'At least 1 uppercase letter',
          isValidated: hasUpperCase,
        
        ),
        CustomPasswordRequirmentItem(
          text: 'At least 1 special character',
          isValidated: hasSpecialChar,
        ),
        CustomPasswordRequirmentItem(
          text: 'At least 1 number',
          isValidated: hasNumber,
        ),
        CustomPasswordRequirmentItem(
          text: 'At least 8 characters ',
          isValidated: hasMinLength,
        ),
      ],
    );
  }
}

class CustomPasswordRequirmentItem extends StatelessWidget {
  const CustomPasswordRequirmentItem({
    super.key,
    required this.text,
    required this.isValidated,
  });
  final String text;
  final bool isValidated;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Padding(
          padding: EdgeInsets.only(right: 6),
          child: CircleAvatar(radius: 2.5, backgroundColor: AppColors.textGrey),
        ),
        Text(
          text,
          style: isValidated
              ? Styles.font13Regular.copyWith(
                  decoration: TextDecoration.lineThrough,
                  decorationColor: Colors.green,
                  decorationThickness: 2,
                )
              : Styles.font13Regular.copyWith(color: AppColors.darkGrey),
        ),
      ],
    );
  }
}
