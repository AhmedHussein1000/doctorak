import 'package:doctorak/core/themes/app_colors.dart';
import 'package:doctorak/core/themes/app_styles.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AlreadyHaveAnAccount extends StatelessWidget {
  const AlreadyHaveAnAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: 'Already have an account? ',
            style: Styles.font13Regular.copyWith(color: AppColors.darkGrey),
          ),
          TextSpan(
            recognizer: TapGestureRecognizer()..onTap = () => context.pop(),
            text: 'Login',
            style: Styles.font13Regular.copyWith(color: AppColors.primaryBlue),
          ),
        ],
      ),
    );
  }
}
