import 'package:flutter/material.dart';

import 'package:messaging/theme/system_overlay.dart';
import 'package:messaging/view/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Theme the system components
    system_overlay();

    return MaterialApp(
      home: HomeScreen(),
    );
  }
}
