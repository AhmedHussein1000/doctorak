import 'package:device_preview/device_preview.dart';
import 'package:doctorak/core/functions/initialize_app.dart';
import 'package:doctorak/docdoc_app.dart';
import 'package:flutter/material.dart';

void main() async {
  await initializeApp();
  runApp(
    DevicePreview(builder: (context) => const DocDocApp(), enabled: false),
  );
}
