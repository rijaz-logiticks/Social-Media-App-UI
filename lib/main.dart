import 'package:flutter/material.dart';
import 'package:social_media_app_ui/screens/home_screen.dart';
import 'package:social_media_app_ui/theme/app_theme.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Social Media App',
      theme: AppTheme.buildLightTheme(),
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
