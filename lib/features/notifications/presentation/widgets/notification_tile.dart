import 'package:doctorak/core/enums/notification_type.dart';
import 'package:doctorak/core/themes/app_colors.dart';
import 'package:doctorak/core/themes/app_styles.dart';
import 'package:doctorak/features/notifications/data/models/notification_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NotificationTile extends StatelessWidget {
  final NotificationItemModel notification;
  final VoidCallback onTap;

  const NotificationTile({
    super.key,
    required this.notification,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 16.h),
        decoration: BoxDecoration(
          color: notification.isRead ? Colors.white : const Color(0xFFF2F4F7),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildIcon(),
            SizedBox(width: 12.w),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          notification.title,
                          style: Styles.font14SemiBold.copyWith(
                            color: AppColors.darkGrey,
                          ),
                        ),
                      ),
                      Text(
                        _formatTimeAgo(notification.createdAt),
                        style: Styles.font10Regular.copyWith(
                          color: AppColors.textGrey,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 2.h),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Text(
                          notification.body,
                          style: Styles.font12Regular.copyWith(
                            color: AppColors.mediumGrey,
                            height: 1.6,
                          ),
                        ),
                      ),
                      if (!notification.isRead) ...[
                        SizedBox(width: 8.w),
                        Padding(
                          padding: EdgeInsets.only(top: 4.h),
                          child: Container(
                            width: 8.w,
                            height: 8.w,
                            decoration: const BoxDecoration(
                              color: AppColors.secondaryFillRed,
                              shape: BoxShape.circle,
                            ),
                          ),
                        ),
                      ],
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildIcon() {
    final (Color bgColor, IconData icon) = switch (notification.type) {
      NotificationType.bookingConfirmation => (
          AppColors.secondarySurfaceGreen,
          Icons.check_circle_outline,
        ),
      NotificationType.appointmentReminder => (
          AppColors.secondarySurfaceBlue,
          Icons.calendar_today_outlined,
        ),
    };

    return Container(
      padding: EdgeInsets.all(8.w),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Icon(icon, size: 24.sp, color: AppColors.darkGrey),
    );
  }

  String _formatTimeAgo(DateTime dateTime) {
    final diff = DateTime.now().difference(dateTime);
    if (diff.inMinutes < 1) return 'now';
    if (diff.inMinutes < 60) return '${diff.inMinutes}m';
    if (diff.inHours < 24) return '${diff.inHours}h';
    if (diff.inDays < 7) return '${diff.inDays}d';
    return '${(diff.inDays / 7).floor()}w';
  }
}
