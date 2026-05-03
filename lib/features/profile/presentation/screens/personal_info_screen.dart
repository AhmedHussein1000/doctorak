import 'package:doctorak/core/utils/app_constants.dart';
import 'package:doctorak/core/widgets/custom_appbar.dart';
import 'package:doctorak/core/widgets/custom_circle_progress_indicator.dart';
import 'package:doctorak/core/widgets/error_and_retry_widget.dart';
import 'package:doctorak/features/profile/presentation/controllers/avatar_cubit/avatar_image_cubit.dart';
import 'package:doctorak/features/profile/presentation/controllers/profile_cubit/profile_cubit.dart';
import 'package:doctorak/features/profile/presentation/controllers/profile_cubit/profile_state.dart';
import 'package:doctorak/features/profile/presentation/widgets/personal_info_item.dart';
import 'package:doctorak/features/profile/presentation/widgets/user_info_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PersonalInfoScreen extends StatelessWidget {
  const PersonalInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileCubit, ProfileState>(
      buildWhen: (previous, current) =>
          current is GetProfileLoading ||
          current is GetProfileFailure ||
          current is GetProfileSuccess,
      builder: (context, state) {
        return Scaffold(
          appBar: const CustomAppBar(title: 'Personal Information'),
          body: state.maybeWhen(
            getProfileLoading: () => const CustomCircleProgressIndicator(),
            getProfileFailure: (error) => ErrorAndRetryWidget(
              errorMessage: error,
              onRetry: () => context.read<ProfileCubit>().getUserProfile(),
            ),
            getProfileSuccess: (userProfile) => SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 24.h),
                child: Column(
                  children: [
                    BlocBuilder<AvatarImageCubit, AvatarImageState>(
                      builder: (context, avatarState) {
                        return UserInfoHeader(
                          name: userProfile.name ?? AppConstants.unknownName,
                          avatarPath: avatarState.maybeWhen(
                            avatarFileChanged: (path) => path,
                            orElse: () => null,
                          ),
                        );
                      },
                    ),
                    SizedBox(height: 40.h),
                    PersonalInfoItem(
                      label: 'Full Name',
                      value: userProfile.name ?? AppConstants.unknownName,
                      icon: Icons.person_outline,
                    ),
                    SizedBox(height: 16.h),
                    PersonalInfoItem(
                      label: 'Email',
                      value: userProfile.email ?? AppConstants.unknownEmail,
                      icon: Icons.email_outlined,
                    ),
                    SizedBox(height: 16.h),
                    PersonalInfoItem(
                      label: 'Phone Number',
                      value: userProfile.phone ?? 'No phone number',
                      icon: Icons.phone_outlined,
                    ),
                  ],
                ),
              ),
            ),
            orElse: () => const SizedBox.shrink(),
          ),
        );
      },
    );
  }
}
