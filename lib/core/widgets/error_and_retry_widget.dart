import 'package:doctorak/core/utils/app_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ErrorAndRetryWidget extends StatelessWidget {
  const ErrorAndRetryWidget({
    super.key,
    required this.errorMessage,
    this.onRetry,
  });
  final String? errorMessage;
  final void Function()? onRetry;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(child: Text(errorMessage ?? AppConstants.unknownError)),
        SizedBox(height: 16.h),
        ElevatedButton(onPressed: onRetry, child: const Text('Retry')),
      ],
    );
  }
}
