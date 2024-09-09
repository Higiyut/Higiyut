// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:no_screenshot/no_screenshot.dart'; // Import the package

Future<void> screenshotOff() async {
  final _noScreenshot = NoScreenshot.instance;

  try {
    await _noScreenshot.screenshotOff(); // Disable screenshots
    print('Screenshots are disabled.');
  } catch (e) {
    // Catch and print any errors
    print('Error disabling screenshots: $e');
  }
}
