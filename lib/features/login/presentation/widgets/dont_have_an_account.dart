import 'package:doctorak/core/router/route_paths.dart';
import 'package:doctorak/core/themes/app_colors.dart';
import 'package:doctorak/core/themes/app_styles.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DontHaveAnAccount extends StatelessWidget {
  const DontHaveAnAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: 'Don\'t have an account? ',
            style: Styles.font13Regular.copyWith(color: AppColors.darkGrey),
          ),
          TextSpan(
            recognizer: TapGestureRecognizer()
              ..onTap = () => context.push(RoutePaths.signupPath),
            text: 'Sign Up',
            style: Styles.font13Regular.copyWith(color: AppColors.primaryBlue),
          ),
        ],
      ),
    );
  }
}
