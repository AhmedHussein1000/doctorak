import 'package:device_preview/device_preview.dart';
import 'package:doctorak/core/functions/initialize_app.dart';
import 'package:doctorak/docdoc_app.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sentry_flutter/sentry_flutter.dart';

void main() async {
  await initializeApp();

  // Fix hidden texts in flutter_screenutil in release mode.
  await ScreenUtil.ensureScreenSize();

  if (kReleaseMode) {
    await SentryFlutter.init(
      (options) {
        options.dsn =
            'https://84ebd7204c7bf54759c5036b244e0909@o4511146469163008.ingest.us.sentry.io/4511146573430784';
        options.tracesSampleRate = 0.1;
      },
      appRunner: () => runApp(
        DevicePreview(builder: (context) => const DocDocApp(), enabled: false),
      ),
    );
  } else {
    runApp(
      DevicePreview(builder: (context) => const DocDocApp(), enabled: false),
    );
  }
}
