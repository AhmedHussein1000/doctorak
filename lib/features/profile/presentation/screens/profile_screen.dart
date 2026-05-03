import 'package:doctorak/core/functions/custom_alert_dialog.dart';
import 'package:doctorak/core/functions/show_toast.dart';
import 'package:doctorak/core/router/route_names.dart';
import 'package:doctorak/core/themes/app_colors.dart';
import 'package:doctorak/core/utils/app_constants.dart';
import 'package:doctorak/core/widgets/custom_appbar.dart';
import 'package:doctorak/core/widgets/custom_circle_progress_indicator.dart';
import 'package:doctorak/core/widgets/error_and_retry_widget.dart';
import 'package:doctorak/features/profile/presentation/controllers/avatar_cubit/avatar_image_cubit.dart';
import 'package:doctorak/features/profile/presentation/controllers/profile_cubit/profile_cubit.dart';
import 'package:doctorak/features/profile/presentation/controllers/profile_cubit/profile_state.dart';
import 'package:doctorak/features/profile/presentation/widgets/profile_list_tile.dart';
import 'package:doctorak/features/profile/presentation/widgets/user_info_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ProfileCubit, ProfileState>(
      listenWhen: (previous, current) =>
          current is LogoutSuccess || current is LogoutFailure,
      listener: (context, state) {
        state.maybeWhen(
          logoutSuccess: () {
            context.goNamed(RouteNames.loginName);
          },
          logoutFailure: (error) {
            customToast(error, ToastStates.error);
          },
          orElse: () => null,
        );
      },
      buildWhen: (previous, current) =>
          current is GetProfileLoading ||
          current is GetProfileFailure ||
          current is GetProfileSuccess,
      builder: (context, state) {
        return Scaffold(
          appBar: const CustomAppBar(title: 'Profile', showBackButton: false),
          body: state.maybeWhen(
            getProfileLoading: () => const CustomCircleProgressIndicator(),
            getProfileFailure: (error) => ErrorAndRetryWidget(
              errorMessage: error,
              onRetry: () => context.read<ProfileCubit>().getUserProfile(),
            ),
            getProfileSuccess: (userProfile) => _buildProfileBody(
              context,
              userProfile.name ?? AppConstants.unknownName,
            ),
            orElse: () => const SizedBox.shrink(),
          ),
        );
      },
    );
  }

  Widget _buildProfileBody(BuildContext context, String? name) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 16.h),
        child: Column(
          children: [
            BlocBuilder<AvatarImageCubit, AvatarImageState>(
              builder: (context, avatarState) {
                return UserInfoHeader(
                  name: name ?? AppConstants.unknownName,
                  allowEdit: true,
                  avatarPath: avatarState.maybeWhen(
                    avatarFileChanged: (path) => path,
                    orElse: () => null,
                  ),
                  onEditTap: () {
                    context.read<AvatarImageCubit>().pickUserAvatar();
                  },
                );
              },
            ),
            SizedBox(height: 32.h),
            ProfileListTile(
              title: 'Personal Information',
              icon: Icons.person_outline,
              onTap: () {
                context.goNamed(RouteNames.personalInfoName);
              },
            ),
            ProfileListTile(
              title: 'My Appointments',
              icon: Icons.calendar_today_outlined,
              onTap: () => context.pushNamed(RouteNames.appointmentsName),
            ),
            ProfileListTile(
              title: 'Notifications',
              icon: Icons.notifications_none_outlined,
              onTap: () => context.pushNamed(RouteNames.notificationsName),
            ),
            ProfileListTile(
              title: 'Settings',
              icon: Icons.settings_outlined,
              onTap: () {},
            ),
            SizedBox(height: 16.h),
            Divider(color: AppColors.lighterGrey, thickness: 1.h),
            SizedBox(height: 16.h),
            ProfileListTile(
              title: 'Logout',
              icon: Icons.logout,
              iconColor: AppColors.secondaryFillRed,
              textColor: AppColors.secondaryFillRed,
              onTap: () => customAlertDialog(
                context: context,
                message: 'Are you sure you want to logout?',
                onConfirmPressed: () {
                  context.read<ProfileCubit>().logout();
                },
                firstButtonTitle: 'Logout',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
