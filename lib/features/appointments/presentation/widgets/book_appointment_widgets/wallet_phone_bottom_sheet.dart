import 'package:doctorak/core/functions/show_toast.dart';
import 'package:doctorak/core/themes/app_colors.dart';
import 'package:doctorak/core/themes/app_styles.dart';
import 'package:doctorak/core/widgets/custom_button.dart';
import 'package:doctorak/core/caches/cache_keys.dart';
import 'package:doctorak/core/caches/shared_prefs_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WalletPhoneBottomSheet extends StatefulWidget {
  final Function(String phone) onContinue;

  const WalletPhoneBottomSheet({
    super.key,
    required this.onContinue,
  });

  @override
  State<WalletPhoneBottomSheet> createState() => _WalletPhoneBottomSheetState();
}

class _WalletPhoneBottomSheetState extends State<WalletPhoneBottomSheet> {
  late final TextEditingController _phoneController;

  @override
  void initState() {
    super.initState();
    final cachedPhone = SharedPrefsManager.getString(CacheKeys.userPhone) ?? '';
    _phoneController = TextEditingController(text: cachedPhone);
  }

  @override
  void dispose() {
    _phoneController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 24.w,
        right: 24.w,
        top: 24.h,
        bottom: MediaQuery.of(context).viewInsets.bottom + 24.h,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Wallet Phone Number',
            style: Styles.font16SemiBold.copyWith(
              color: AppColors.darkGrey,
            ),
          ),
          SizedBox(height: 8.h),
          Text(
            'Enter the phone number linked to your mobile wallet.',
            style: Styles.font12Regular.copyWith(
              color: AppColors.mediumGrey,
            ),
          ),
          SizedBox(height: 16.h),
          TextField(
            controller: _phoneController,
            keyboardType: TextInputType.phone,
            style: Styles.font14Medium.copyWith(color: AppColors.darkGrey),
            decoration: InputDecoration(
              hintText: '01xxxxxxxxx',
              hintStyle: Styles.font14Medium.copyWith(
                color: AppColors.mediumGrey,
              ),
              prefixIcon: const Icon(Icons.phone_android),
              contentPadding: EdgeInsets.symmetric(
                horizontal: 16.w,
                vertical: 14.h,
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12.r),
                borderSide: const BorderSide(color: AppColors.veryLightGrey),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12.r),
                borderSide: const BorderSide(color: AppColors.primaryBlue),
              ),
              filled: true,
              fillColor: AppColors.moreLightGrey,
            ),
          ),
          SizedBox(height: 20.h),
          CustomButton(
            buttonText: 'Continue to Payment',
            onPressed: () {
              final phone = _phoneController.text.trim();
              if (phone.isEmpty) {
                customToast(
                  'Please enter your wallet phone number.',
                  ToastStates.error,
                );
                return;
              }
              Navigator.pop(context);
              widget.onContinue(phone);
            },
          ),
        ],
      ),
    );
  }
}
