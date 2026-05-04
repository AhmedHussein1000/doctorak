import 'package:doctorak/core/helpers/date_time_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:doctorak/core/themes/app_colors.dart';
import 'package:doctorak/core/themes/app_styles.dart';

class BookAppointmentDateTimeStep extends StatelessWidget {
  final DateTime? selectedDate;
  final String? selectedTime;
  final ValueChanged<DateTime> onDateSelected;
  final ValueChanged<String> onTimeSelected;

  const BookAppointmentDateTimeStep({
    super.key,
    required this.selectedDate,
    required this.selectedTime,
    required this.onDateSelected,
    required this.onTimeSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Select Date',
          style: Styles.font16SemiBold.copyWith(color: AppColors.darkGrey),
        ),
        SizedBox(height: 16.h),
        _buildDateSelector(),
        SizedBox(height: 24.h),
        Text(
          'Available time',
          style: Styles.font16SemiBold.copyWith(color: AppColors.darkGrey),
        ),
        SizedBox(height: 16.h),
        _buildTimeSlots(),
        SizedBox(height: 16.h),
      ],
    );
  }

  Widget _buildDateSelector() {
    final List<DateTime> next7Days = List.generate(
      7,
      (index) => DateTime.now().add(Duration(days: index + 1)),
    );

    return SizedBox(
      height: 60.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(Icons.chevron_left, color: AppColors.darkGrey),
          Expanded(
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: next7Days.length,
              separatorBuilder: (context, index) => SizedBox(width: 8.w),
              itemBuilder: (context, index) {
                final date = next7Days[index];
                final isSelected =
                    selectedDate != null &&
                    selectedDate!.year == date.year &&
                    selectedDate!.month == date.month &&
                    selectedDate!.day == date.day;

                final String dayName = DateTimeHelper.getShortDayName(date);
                final String dayNumber = date.day.toString().padLeft(2, '0');

                return GestureDetector(
                  onTap: () => onDateSelected(date),
                  child: Container(
                    width: 50.w,
                    decoration: BoxDecoration(
                      color: isSelected
                          ? AppColors.primaryBlue
                          : AppColors.moreLightGrey,
                      borderRadius: BorderRadius.circular(12.r),
                      border: Border.all(
                        color: isSelected
                            ? AppColors.primaryBlue
                            : AppColors.veryLightGrey,
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          dayName,
                          style: Styles.font12Medium.copyWith(
                            color: isSelected
                                ? Colors.white
                                : AppColors.lightGrey,
                          ),
                        ),
                        SizedBox(height: 2.h),
                        Text(
                          dayNumber,
                          style: Styles.font14SemiBold.copyWith(
                            color: isSelected
                                ? Colors.white
                                : AppColors.lightGrey,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          Icon(Icons.chevron_right, color: AppColors.darkGrey),
        ],
      ),
    );
  }

  Widget _buildTimeSlots() {
    final List<String> timeSlots = [
      '14:00',
      '14:30',
      '15:00',
      '15:30',
      '16:00',
      '16:30',
      '17:00',
      '17:30',
      '18:00',
      '18:30',
      '19:00',
      '19:30',
    ];

    return Wrap(
      spacing: 12.w,
      runSpacing: 12.h,
      children: timeSlots.map((time) {
        final isSelected = selectedTime == time;

        return GestureDetector(
          onTap: () => onTimeSelected(time),
          child: Container(
            width: (1.sw - 48.w - 12.w) / 2,
            padding: EdgeInsets.symmetric(vertical: 14.h),
            decoration: BoxDecoration(
              color: isSelected
                  ? AppColors.primaryBlue
                  : AppColors.moreLightGrey,
              borderRadius: BorderRadius.circular(14.r),
              border: Border.all(
                color: isSelected
                    ? AppColors.primaryBlue
                    : AppColors.veryLightGrey,
              ),
            ),
            child: Center(
              child: Text(
                time,
                style: Styles.font14Medium.copyWith(
                  color: isSelected ? Colors.white : AppColors.textGrey,
                ),
              ),
            ),
          ),
        );
      }).toList(),
    );
  }
}
