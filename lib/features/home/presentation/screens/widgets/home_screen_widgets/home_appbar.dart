import 'package:doctorak/core/helpers/assets.dart';
import 'package:doctorak/core/themes/app_colors.dart';
import 'package:doctorak/core/themes/app_styles.dart';
import 'package:doctorak/features/profile/presentation/controllers/profile_cubit/profile_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:doctorak/core/router/route_names.dart';
import 'package:doctorak/features/notifications/presentation/controllers/notifications_cubit/notifications_cubit.dart';
import 'package:doctorak/features/notifications/presentation/controllers/notifications_cubit/notifications_state.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:doctorak/core/utils/app_constants.dart';
import 'package:doctorak/features/profile/presentation/controllers/profile_cubit/profile_cubit.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BlocSelector<ProfileCubit, ProfileState, String>(
                selector: (state) => state.maybeWhen(
                  getProfileSuccess: (userProfile) =>
                      userProfile.name ?? AppConstants.unknownName,
                  orElse: () => AppConstants.unknownName,
                ),
                builder: (context, name) =>
                    Text('Hi, $name!', style: Styles.font18Bold),
              ),
              Text(
                'How Are you Today?',
                style: Styles.font11Regular.copyWith(
                  color: AppColors.textDarkGrey,
                ),
              ),
            ],
          ),
          GestureDetector(
            onTap: () {
              context.pushNamed(RouteNames.notificationsName);
            },
            child: Container(
              height: 48,
              width: 48,
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.veryLightGrey,
              ),
              child: BlocBuilder<NotificationsCubit, NotificationsState>(
                builder: (context, state) {
                  return state.unreadCount > 0
                      ? SvgPicture.asset(Assets.imagesSvgsNotification)
                      : Icon(Icons.notifications, color: AppColors.darkGrey);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
