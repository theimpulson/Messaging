import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

dynamic system_overlay() {
  /// Sets System's Navigation and Status Bar Colors to Match the Application's Theme
  return SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      systemNavigationBarColor: Colors.white,
      systemNavigationBarIconBrightness: Brightness.dark,
      systemNavigationBarDividerColor: Colors.black,
    ),
  );
}
