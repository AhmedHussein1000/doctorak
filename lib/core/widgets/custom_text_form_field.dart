import 'package:doctorak/core/themes/app_colors.dart';
import 'package:doctorak/core/themes/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    this.controller,
    required this.validator,
    required this.hintText,
    this.hintTextStyle,
    this.contentPadding,
    this.suffixIcon,
    this.isObscureText,
    this.fillColor,
    this.textInputStyle,
    this.enabledBorder,
    this.focusedBorder,
    this.keyboardType,
    this.cursorColor,
    this.inputFormatters,
  });
  final TextEditingController? controller;
  final String? Function(String?) validator;
  final String hintText;
  final TextStyle? hintTextStyle;
  final EdgeInsetsGeometry? contentPadding;
  final Widget? suffixIcon;
  final bool? isObscureText;
  final Color? fillColor;
  final TextStyle? textInputStyle;
  final InputBorder? enabledBorder;
  final InputBorder? focusedBorder;
  final TextInputType? keyboardType;
  final Color? cursorColor;
  final List<TextInputFormatter>? inputFormatters;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: cursorColor ?? AppColors.primaryBlue,
      controller: controller,
      validator: validator,
      inputFormatters: inputFormatters,
      obscureText: isObscureText ?? false,
      keyboardType: keyboardType,
      style:
          textInputStyle ??
          Styles.font14Medium.copyWith(color: AppColors.darkGrey),
      decoration: InputDecoration(
        enabledBorder: enabledBorder ?? _customOutlineInputBorder(),
        focusedBorder:
            focusedBorder ??
            _customOutlineInputBorder(color: AppColors.primaryBlue),
        errorBorder: _customOutlineInputBorder(color: Colors.red),
        focusedErrorBorder: _customOutlineInputBorder(color: Colors.red),
        filled: true,
        fillColor: fillColor ?? AppColors.moreLightGrey,
        hintText: hintText,
        hintStyle:
            hintTextStyle ??
            Styles.font14Medium.copyWith(color: AppColors.lightGrey),
        contentPadding:
            contentPadding ??
            EdgeInsets.symmetric(horizontal: 20.w, vertical: 17.h),
        suffixIcon: suffixIcon,
      ),
    );
  }

  OutlineInputBorder _customOutlineInputBorder({
    Color? color,
    double? width,
    double? radius,
  }) {
    return OutlineInputBorder(
      borderSide: BorderSide(
        color: color ?? AppColors.lighterGrey,
        width: width ?? 1.3,
      ),
      borderRadius: BorderRadius.circular(radius ?? 16),
    );
  }
}
