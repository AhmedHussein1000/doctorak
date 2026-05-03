import 'package:doctorak/core/enums/payment_method.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:doctorak/core/themes/app_colors.dart';
import 'package:doctorak/core/themes/app_styles.dart';

class BookAppointmentPaymentStep extends StatelessWidget {
  final PaymentMethod? selectedPaymentMethod;
  final ValueChanged<PaymentMethod> onPaymentMethodSelected;

  const BookAppointmentPaymentStep({
    super.key,
    required this.selectedPaymentMethod,
    required this.onPaymentMethodSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Payment Option',
          style: Styles.font16SemiBold.copyWith(color: AppColors.textPrimaryDark),
        ),
        SizedBox(height: 24.h),
        ...PaymentMethod.values.map(
          (method) => Padding(
            padding: EdgeInsets.only(bottom: 16.h),
            child: _buildPaymentOption(method),
          ),
        ),
      ],
    );
  }

  Widget _buildPaymentOption(PaymentMethod method) {
    final bool isSelected = selectedPaymentMethod == method;

    return GestureDetector(
      onTap: () => onPaymentMethodSelected(method),
      child: Container(
        color: Colors.transparent,
        child: Row(
          children: [
            Container(
              width: 20.w,
              height: 20.w,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: isSelected ? AppColors.primaryBlue : AppColors.lightGrey,
                  width: 1.w,
                ),
              ),
              child: isSelected
                  ? Center(
                      child: Container(
                        width: 10.w,
                        height: 10.w,
                        decoration: const BoxDecoration(
                          color: AppColors.primaryBlue,
                          shape: BoxShape.circle,
                        ),
                      ),
                    )
                  : null,
            ),
            SizedBox(width: 8.w),
            Text(
              method.displayName,
              style: Styles.font14Medium.copyWith(
                color: isSelected ? AppColors.darkGrey : AppColors.mediumGrey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
