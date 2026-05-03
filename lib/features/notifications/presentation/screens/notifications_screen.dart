import 'package:doctorak/core/router/route_names.dart';
import 'package:doctorak/core/themes/app_colors.dart';
import 'package:doctorak/core/themes/app_styles.dart';
import 'package:doctorak/core/widgets/custom_appbar.dart';
import 'package:doctorak/features/notifications/data/models/notification_item_model.dart';
import 'package:doctorak/features/notifications/presentation/controllers/notifications_cubit/notifications_cubit.dart';
import 'package:doctorak/features/notifications/presentation/controllers/notifications_cubit/notifications_state.dart';
import 'package:doctorak/features/notifications/presentation/widgets/notification_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Notification', showActionButton: false),
      body: BlocBuilder<NotificationsCubit, NotificationsState>(
        builder: (context, state) {
          if (state.notifications.isEmpty) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.notifications_off_outlined,
                    size: 64.sp,
                    color: AppColors.textGrey,
                  ),
                  SizedBox(height: 16.h),
                  Text(
                    'No notifications yet',
                    style: Styles.font16Medium.copyWith(
                      color: AppColors.textGrey,
                    ),
                  ),
                ],
              ),
            );
          }

          final grouped = _groupByDate(state.notifications);

          return ListView.builder(
            itemCount: grouped.length,
            itemBuilder: (context, index) {
              final group = grouped[index];
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 24.w,
                      vertical: 12.h,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          group.label,
                          style: Styles.font12Medium.copyWith(
                            color: AppColors.textGrey,
                          ),
                        ),
                        if (index == 0 && state.unreadCount > 0)
                          GestureDetector(
                            onTap: () {
                              context
                                  .read<NotificationsCubit>()
                                  .markAllAsRead();
                            },
                            child: Text(
                              'Mark all as read',
                              style: Styles.font12Regular.copyWith(
                                color: AppColors.primaryBlue,
                              ),
                            ),
                          ),
                      ],
                    ),
                  ),
                  ...group.notifications.map(
                    (notification) => NotificationTile(
                      notification: notification,
                      onTap: () {
                        context.read<NotificationsCubit>().markAsRead(
                          notification.id,
                        );
                        context.goNamed(RouteNames.appointmentsName);
                      },
                    ),
                  ),
                ],
              );
            },
          );
        },
      ),
    );
  }

  List<_NotificationGroup> _groupByDate(
    List<NotificationItemModel> notifications,
  ) {
    final now = DateTime.now();
    final today = DateTime(now.year, now.month, now.day);
    final yesterday = today.subtract(const Duration(days: 1));

    final Map<String, List<NotificationItemModel>> groups = {};

    for (final notification in notifications) {
      final date = DateTime(
        notification.createdAt.year,
        notification.createdAt.month,
        notification.createdAt.day,
      );

      final String label;
      if (date == today) {
        label = 'Today';
      } else if (date == yesterday) {
        label = 'Yesterday';
      } else {
        label = '${date.day}/${date.month}/${date.year}';
      }

      groups.putIfAbsent(label, () => []).add(notification);
    }

    return groups.entries
        .map((e) => _NotificationGroup(label: e.key, notifications: e.value))
        .toList();
  }
}

class _NotificationGroup {
  final String label;
  final List<NotificationItemModel> notifications;

  const _NotificationGroup({required this.label, required this.notifications});
}
