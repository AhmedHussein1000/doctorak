import 'package:doctorak/core/shared/entities/doctor_entity.dart';
import 'package:doctorak/core/widgets/doctors_widgets/doctor_item.dart';
import 'package:doctorak/core/enums/payment_method.dart';
import 'package:doctorak/core/helpers/date_time_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:doctorak/core/themes/app_colors.dart';
import 'package:doctorak/core/themes/app_styles.dart';

class BookAppointmentSummaryStep extends StatelessWidget {
  final DoctorEntity doctor;
  final DateTime selectedDate;
  final String selectedTime;
  final PaymentMethod selectedPaymentMethod;
  final TextEditingController notesController;

  const BookAppointmentSummaryStep({
    super.key,
    required this.doctor,
    required this.selectedDate,
    required this.selectedTime,
    required this.selectedPaymentMethod,
    required this.notesController,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildBookingInformationSection(),
        SizedBox(height: 24.h),
        _buildDoctorInformationSection(),
        SizedBox(height: 24.h),
        _buildPaymentInformationSection(),
        SizedBox(height: 24.h),
        _buildPaymentInfoBreakdown(),
        SizedBox(height: 24.h),
        _buildNotesSection(),
      ],
    );
  }

  Widget _buildBookingInformationSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Booking Information',
          style: Styles.font16SemiBold.copyWith(color: AppColors.darkGrey),
        ),
        SizedBox(height: 16.h),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 40.w,
              height: 40.w,
              decoration: BoxDecoration(
                color: AppColors.secondarySurfaceBlue,
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.calendar_today,
                color: AppColors.primaryBlue,
                size: 20.sp,
              ),
            ),
            SizedBox(width: 16.w),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Date & Time',
                  style: Styles.font14Medium.copyWith(
                    color: AppColors.darkGrey,
                  ),
                ),
                SizedBox(height: 4.h),
                Text(
                  DateTimeHelper.formatDate(selectedDate),
                  style: Styles.font12Regular.copyWith(
                    color: AppColors.textGrey,
                  ),
                ),
                SizedBox(height: 4.h),
                Text(
                  selectedTime,
                  style: Styles.font12Regular.copyWith(
                    color: AppColors.textGrey,
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildDoctorInformationSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Doctor Information',
          style: Styles.font16SemiBold.copyWith(color: AppColors.darkGrey),
        ),
        SizedBox(height: 16.h),
        DoctorItem(doctor: doctor, isClickable: false),
      ],
    );
  }

  Widget _buildPaymentInformationSection() {
    final paymentTitle = selectedPaymentMethod.displayName;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Payment Information',
          style: Styles.font16SemiBold.copyWith(color: AppColors.darkGrey),
        ),
        SizedBox(height: 16.h),
        Row(
          children: [
            Icon(Icons.payment, color: AppColors.primaryBlue),
            SizedBox(width: 12.w),
            Text(
              paymentTitle,
              style: Styles.font14Medium.copyWith(color: AppColors.darkGrey),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildPaymentInfoBreakdown() {
    final tax = 0.0;
    final total = doctor.appointPrice! + tax;

    return Container(
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        color: AppColors.moreLightGrey,
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Payment Info',
            style: Styles.font14SemiBold.copyWith(color: AppColors.darkGrey),
          ),
          SizedBox(height: 16.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Subtotal',
                style: Styles.font12Regular.copyWith(color: AppColors.textGrey),
              ),
              Text(
                '\$${doctor.appointPrice!.toStringAsFixed(2)}',
                style: Styles.font14Medium.copyWith(color: AppColors.darkGrey),
              ),
            ],
          ),
          SizedBox(height: 12.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Tax',
                style: Styles.font12Regular.copyWith(color: AppColors.textGrey),
              ),
              Text(
                '\$${tax.toStringAsFixed(2)}',
                style: Styles.font14Medium.copyWith(color: AppColors.darkGrey),
              ),
            ],
          ),
          SizedBox(height: 16.h),
          Divider(color: AppColors.veryLightGrey),
          SizedBox(height: 16.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Payment Total',
                style: Styles.font14SemiBold.copyWith(
                  color: AppColors.darkGrey,
                ),
              ),
              Text(
                '\$${total.toStringAsFixed(2)}',
                style: Styles.font14SemiBold.copyWith(
                  color: AppColors.darkGrey,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildNotesSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Notes (Optional)',
          style: Styles.font16SemiBold.copyWith(color: AppColors.darkGrey),
        ),
        SizedBox(height: 12.h),
        TextField(
          controller: notesController,
          maxLines: 3,
          style: Styles.font14Medium.copyWith(color: AppColors.darkGrey),
          decoration: InputDecoration(
            hintText: 'Add a note for your doctor...',
            hintStyle:
                Styles.font14Medium.copyWith(color: AppColors.mediumGrey),
            contentPadding:
                EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.r),
              borderSide: BorderSide(color: AppColors.veryLightGrey),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.r),
              borderSide: BorderSide(color: AppColors.primaryBlue),
            ),
            filled: true,
            fillColor: AppColors.moreLightGrey,
          ),
        ),
      ],
    );
  }
}
