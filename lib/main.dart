import 'package:finance_app/features/onboarding/onboarding_page.dart';
import 'package:flutter/material.dart';
// import 'app_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: OnboardingPage(),
    );
  }
}
