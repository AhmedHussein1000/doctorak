import 'package:doctorak/core/enums/appointment_card_type.dart';
import 'package:doctorak/core/themes/app_colors.dart';
import 'package:doctorak/core/themes/app_styles.dart';
import 'package:doctorak/features/appointments/domain/entities/appointment_entity.dart';
import 'package:doctorak/features/appointments/presentation/widgets/my_appointments_widgets/appointment_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppointmentsListView extends StatelessWidget {
  final List<AppointmentEntity> appointments;
  final AppointmentCardType cardType;

  const AppointmentsListView({
    super.key,
    required this.appointments,
    required this.cardType,
  });

  @override
  Widget build(BuildContext context) {
    if (appointments.isEmpty) {
      return _buildEmptyState();
    }

    return ListView.builder(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
      itemCount: appointments.length,
      itemBuilder: (context, index) => AppointmentCardWidget(
        appointment: appointments[index],
        cardType: cardType,
      ),
    );
  }

  Widget _buildEmptyState() {
    final String message;
    final IconData icon;

    switch (cardType) {
      case AppointmentCardType.pending:
        message = 'No upcoming appointments';
        icon = Icons.calendar_today_outlined;
      case AppointmentCardType.completed:
        message = 'No completed appointments';
        icon = Icons.check_circle_outline;
      case AppointmentCardType.cancelled:
        message = 'No cancelled appointments';
        icon = Icons.cancel_outlined;
    }

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 64.sp, color: AppColors.lightGrey),
          SizedBox(height: 16.h),
          Text(
            message,
            style: Styles.font16Medium.copyWith(color: AppColors.mediumGrey),
          ),
          SizedBox(height: 8.h),
          Text(
            'Your appointments will appear here',
            style: Styles.font13Regular.copyWith(color: AppColors.textGrey),
          ),
        ],
      ),
    );
  }
}
