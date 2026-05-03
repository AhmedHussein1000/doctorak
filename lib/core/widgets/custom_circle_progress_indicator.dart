import 'package:doctorak/core/themes/app_colors.dart';
import 'package:flutter/material.dart';

class CustomCircleProgressIndicator extends StatelessWidget {
  const CustomCircleProgressIndicator({super.key, this.indicatorColor});
  final Color? indicatorColor;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(
        color: indicatorColor ?? AppColors.primaryBlue,
      ),
    );
  }
}
