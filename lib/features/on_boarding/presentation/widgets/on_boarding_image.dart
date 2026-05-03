import 'package:doctorak/core/helpers/assets.dart';
import 'package:doctorak/core/themes/app_colors.dart';
import 'package:doctorak/core/themes/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OnBoardingImageAndText extends StatelessWidget {
  const OnBoardingImageAndText({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset(Assets.imagesSvgsDoctorBackgroundLogoLowOpacity),
        Container(
          foregroundDecoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.white, Colors.white.withValues(alpha: 0.0)],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              stops: const [0.14, 0.4],
            ),
          ),
          child: Image.asset(Assets.imagesOnboardingDoctor),
        ),
        Positioned(
          right: 0,
          left: 0,
          bottom: 30,
          child: Text(
            textAlign: TextAlign.center,
            'Best Doctor\nAppointment App',
            style: Styles.font32Bold.copyWith(
              color: AppColors.primaryBlue,
              height: 1.4,
            ),
          ),
        ),
      ],
    );
  }
}
