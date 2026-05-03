import 'package:flutter/material.dart';

enum SnackBarState { success, error, warning, info }

void showCustomSnackBar(
  BuildContext context, {
  required String message,
  required SnackBarState state,
  Duration? duration,
  IconData? icon,
}) {
  ScaffoldMessenger.of(context).hideCurrentSnackBar();

  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Row(
        children: [
          Icon(icon ?? _getIconForState(state), color: Colors.white),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              message,
              style: const TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
      backgroundColor: _getColorForState(state),
      duration: duration ?? const Duration(seconds: 3),
      behavior: SnackBarBehavior.floating,
    ),
  );
}

Color _getColorForState(SnackBarState state) {
  switch (state) {
    case SnackBarState.success:
      return Colors.green;
    case SnackBarState.error:
      return Colors.red;
    case SnackBarState.warning:
      return Colors.orange;
    case SnackBarState.info:
      return Colors.blue;
  }
}

IconData _getIconForState(SnackBarState state) {
  switch (state) {
    case SnackBarState.success:
      return Icons.check_circle;
    case SnackBarState.error:
      return Icons.error_outline;
    case SnackBarState.warning:
      return Icons.warning_amber_rounded;
    case SnackBarState.info:
      return Icons.info_outline;
  }
}
