import 'package:doctorak/core/caches/cache_keys.dart';
import 'package:doctorak/core/helpers/extensions.dart';
import 'package:doctorak/core/router/route_paths.dart';
import 'package:doctorak/core/router/routes.dart';
import 'package:doctorak/core/widgets/error_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  initialLocation: isSkippedOnBoarding == true
      ? userToken.isNullOrEmpty()
            ? RoutePaths.loginPath
            : RoutePaths.homePath
      : RoutePaths.onboardingPath,
  debugLogDiagnostics: true,
  routes: appRoutes,
  errorBuilder: (context, state) => Scaffold(
    body: ErrorScreen(
      errorMessage: state.error.toString(),
      onReturnToHome: () {
        context.go(RoutePaths.homePath);
      },
    ),
  ),
);

