import 'package:doctorak/core/helpers/assets.dart';
import 'package:doctorak/core/themes/app_styles.dart';
import 'package:doctorak/core/utils/app_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OnBoardingHeader extends StatelessWidget {
  const OnBoardingHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(Assets.imagesSvgsDoctorLogo),
        SizedBox(width: 8.w),
        Text(
          AppConstants.appName,
          style: Styles.font24Bold.copyWith(color: Colors.black),
        ),
      ],
    );
  }
}
