import 'package:doctorak/core/themes/app_colors.dart';
import 'package:doctorak/core/themes/app_styles.dart';
import 'package:flutter/widgets.dart';

class TermsAndPrivacyText extends StatelessWidget {
  const TermsAndPrivacyText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: 'By logging, you agree to our  ',
            style: Styles.font13Regular.copyWith(color: AppColors.textGrey),
          ),
          TextSpan(
            text: 'Terms & Conditions ',
            style: Styles.font13Medium.copyWith(color: AppColors.darkGrey),
          ),
          TextSpan(
            text: 'and ',
            style: Styles.font13Regular.copyWith(color: AppColors.textGrey),
          ),
          TextSpan(
            text: 'PrivacyPolicy',
            style: Styles.font13Medium.copyWith(
              color: AppColors.darkGrey,
              height: 1.5,
            ),
          ),
        ],
      ),
    );
  }
}
