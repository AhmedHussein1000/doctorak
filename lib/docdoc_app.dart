import 'package:device_preview/device_preview.dart';
import 'package:doctorak/features/profile/presentation/controllers/avatar_cubit/avatar_image_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:doctorak/core/router/app_router.dart';
import 'package:doctorak/core/themes/light_theme.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:doctorak/core/di/service_locator.dart';
import 'package:doctorak/core/caches/cache_keys.dart';
import 'package:doctorak/core/helpers/extensions.dart';
import 'package:doctorak/core/functions/show_custom_snackbar.dart';
import 'package:doctorak/features/profile/presentation/controllers/profile_cubit/profile_cubit.dart';
import 'package:doctorak/core/network/network_cubit/network_cubit.dart';
import 'package:doctorak/core/network/network_cubit/network_state.dart';
import 'package:doctorak/features/notifications/presentation/controllers/notifications_cubit/notifications_cubit.dart';

class DocDocApp extends StatelessWidget {
  const DocDocApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: MultiBlocProvider(
        providers: [
          BlocProvider<ProfileCubit>(
            create: (context) {
              final cubit = ProfileCubit(getIt());
              if (!userToken.isNullOrEmpty()) {
                cubit.getUserProfile();
              }
              return cubit;
            },
          ),
          BlocProvider<AvatarImageCubit>(
            create: (context) => AvatarImageCubit(),
          ),
          BlocProvider<NetworkCubit>(
            create: (context) => NetworkCubit(getIt()),
          ),
          BlocProvider<NotificationsCubit>.value(
            value: getIt<NotificationsCubit>(),
          ),
        ],
        child: MaterialApp.router(
          routerConfig: router,
          locale: DevicePreview.locale(context),
          builder: (context, child) {
            final previewChild = DevicePreview.appBuilder(context, child);
            return BlocListener<NetworkCubit, NetworkState>(
              listenWhen: (previous, current) => previous != current,
              listener: (context, state) {
                state.whenOrNull(
                  disconnected: () {
                    showCustomSnackBar(
                      context,
                      message: 'No Internet Connection',
                      state: SnackBarState.error,
                      icon: Icons.wifi_off,
                      duration: const Duration(days: 1),
                    );
                  },
                  connected: () {
                    showCustomSnackBar(
                      context,
                      message: 'Back Online',
                      state: SnackBarState.success,
                      icon: Icons.wifi,
                    );
                  },
                );
              },
              child: previewChild,
            );
          },
          debugShowCheckedModeBanner: false,
          theme: lightTheme,
        ),
      ),
    );
  }
}
