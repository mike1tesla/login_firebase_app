import 'package:flutter/material.dart';
import 'package:login/src/features/authentication/screens/login_screen/login_screen.dart';
import 'package:login/src/features/authentication/screens/splash_screen/splash_screen.dart';
import 'package:login/src/features/core/screens/dashboard/dashboard.dart';
import 'package:login/src/utils/theme/theme.dart';
import 'package:get/get.dart';
void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.system,
      defaultTransition: Transition.leftToRightWithFade,
      transitionDuration: const Duration(milliseconds: 500),
      home: const SplashScreen(),
    );
  }
}


