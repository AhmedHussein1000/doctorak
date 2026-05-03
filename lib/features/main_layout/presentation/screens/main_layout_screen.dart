import 'dart:io';
import 'package:doctorak/core/helpers/assets.dart';
import 'package:doctorak/core/router/route_paths.dart';
import 'package:doctorak/core/themes/app_colors.dart';
import 'package:doctorak/features/profile/presentation/controllers/avatar_cubit/avatar_image_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class MainLayoutScreen extends StatelessWidget {
  const MainLayoutScreen({super.key, required this.navigationShell});
  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AvatarImageCubit, AvatarImageState>(
      builder: (context, state) {
        final avatarPath = state.maybeWhen(
          avatarFileChanged: (path) => path,
          orElse: () => null,
        );
        return Scaffold(
          body: navigationShell,
          floatingActionButton: GestureDetector(
            onTap: () {
              context.push(RoutePaths.searchPath);
            },
            child: Container(
              height: 72,
              width: 72,
              decoration: BoxDecoration(
                color: AppColors.primaryBlue,
                borderRadius: BorderRadius.circular(27.92),
              ),
              child: Center(
                child: SvgPicture.asset(
                  Assets.imagesNavBarsNavSearch,
                  height: 24,
                  width: 24,
                ),
              ),
            ),
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Colors.white,
            elevation: 0,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            type: BottomNavigationBarType.fixed,
            currentIndex: navigationShell.currentIndex,
            onTap: (index) {
              navigationShell.goBranch(
                index,
                initialLocation: index == navigationShell.currentIndex,
              );
            },
            items: [
              BottomNavigationBarItem(
                icon: SvgPicture.asset(Assets.imagesNavBarsNavHome),
                activeIcon: SvgPicture.asset(Assets.imagesNavBarsActiveHome),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.only(right: 30),
                  child: Icon(
                    Icons.location_city,
                    color: const Color(0xFF464646),
                    size: 24,
                  ),
                ),
                activeIcon: Padding(
                  padding: const EdgeInsets.only(right: 30),
                  child: Icon(
                    Icons.location_city,
                    color: AppColors.primaryBlue,
                    size: 24,
                  ),
                ),
                label: 'Cities',
              ),
              BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: SvgPicture.asset(Assets.imagesNavBarsNavAppointment),
                ),
                activeIcon: Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: SvgPicture.asset(
                    Assets.imagesNavBarsActiveAppointment,
                  ),
                ),
                label: 'Appointments',
              ),
              BottomNavigationBarItem(
                icon: avatarPath != null
                    ? CircleAvatar(
                        radius: 12,
                        backgroundImage: FileImage(File(avatarPath)),
                      )
                    : SvgPicture.asset(Assets.imagesNavBarsNavProfile),
                activeIcon: avatarPath != null
                    ? CircleAvatar(
                        radius: 12,
                        backgroundImage: FileImage(File(avatarPath)),
                      )
                    : SvgPicture.asset(Assets.imagesNavBarsActiveProfile),
                label: 'Profile',
              ),
            ],
          ),
        );
      },
    );
  }
}
