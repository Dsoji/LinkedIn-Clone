import 'package:flutter/material.dart';
import 'package:linkedin_uiclone/screen/splash_screens/components/splash_screen.dart';

void main() {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "LinkedIn Clone",
      home: SplashScreen(),
    );
  }
}
