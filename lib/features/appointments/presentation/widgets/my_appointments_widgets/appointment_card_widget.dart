import 'package:doctorak/core/enums/appointment_card_type.dart';
import 'package:doctorak/core/themes/app_colors.dart';
import 'package:doctorak/core/themes/app_styles.dart';
import 'package:doctorak/core/utils/app_constants.dart';
import 'package:doctorak/core/widgets/doctors_widgets/custom_doctor_image.dart';
import 'package:doctorak/features/appointments/domain/entities/appointment_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppointmentCardWidget extends StatelessWidget {
  final AppointmentEntity appointment;
  final AppointmentCardType cardType;
  final VoidCallback? onCancel;
  final VoidCallback? onReschedule;

  const AppointmentCardWidget({
    super.key,
    required this.appointment,
    required this.cardType,
    this.onCancel,
    this.onReschedule,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16.h),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.04),
            blurRadius: 10,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: cardType == AppointmentCardType.pending
          ? _buildPendingCard()
          : _buildCompletedOrCancelledCard(),
    );
  }

  Widget _buildPendingCard() {
    return Padding(
      padding: EdgeInsets.all(16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CustomDoctorImage(width: 64.w, height: 64.h),
              SizedBox(width: 12.w),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      appointment.doctor?.name ?? AppConstants.unknownName,
                      style: Styles.font16SemiBold,
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(height: 4.h),
                    Text(
                      appointment.doctor?.specialization?.name ?? '',
                      style: Styles.font12Regular.copyWith(
                        color: AppColors.mediumGrey,
                      ),
                    ),
                    SizedBox(height: 4.h),
                    _buildDateTimeRow(),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 16.h),
          Row(
            children: [
              Expanded(child: _appointmentActionButton()),
              SizedBox(width: 12.w),
              Expanded(child: _appointmentActionButton(isCancelButton: false)),
            ],
          ),
        ],
      ),
    );
  }

  Widget _appointmentActionButton({bool isCancelButton = true}) {
    return OutlinedButton(
      onPressed: isCancelButton ? onCancel : onReschedule,
      style: OutlinedButton.styleFrom(
        backgroundColor: isCancelButton
            ? Colors.transparent
            : AppColors.primaryBlue,
        shape: RoundedRectangleBorder(
          
          side: BorderSide(color: AppColors.primaryBlue,),
          borderRadius: BorderRadius.circular(24.r),
        ),
        padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 8.w),
      ),
      child: Text(
        isCancelButton ? 'Cancel Appointment' : 'Reschedule',
        style: Styles.font12SemiBold.copyWith(
          color: isCancelButton ? AppColors.primaryBlue : Colors.white,
        ),
      ),
    );
  }

  Widget _buildCompletedOrCancelledCard() {
    final bool isCompleted = cardType == AppointmentCardType.completed;
    final Color badgeColor = isCompleted
        ? AppColors.secondaryFillGreen
        : AppColors.secondaryFillRed;
    final String badgeText = isCompleted
        ? 'Appointment done'
        : 'Appointment cancelled';

    return Padding(
      padding: EdgeInsets.all(16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            badgeText,
            style: Styles.font12SemiBold.copyWith(color: badgeColor),
          ),
          SizedBox(height: 4.h),
          _buildDateTimeRow(),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 12.h),
            child: Divider(color: AppColors.lighterGrey, height: 1.h),
          ),
          Row(
            children: [
              CustomDoctorImage(width: 56.w, height: 56.h),
              SizedBox(width: 12.w),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      appointment.doctor?.name ?? AppConstants.unknownName,
                      style: Styles.font14SemiBold,
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(height: 4.h),
                    Text(
                      appointment.doctor?.specialization?.name ?? '',
                      style: Styles.font12Regular.copyWith(
                        color: AppColors.mediumGrey,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildDateTimeRow() {
    return Text(
      appointment.appointmentTime!,
      style: Styles.font12Regular.copyWith(color: AppColors.mediumGrey),
    );
  }
}
