import 'package:get/get.dart';
import 'package:login/src/features/authentication/screens/onboarding/onboarding_screen.dart';

class FadeInAnimationController {
  final animate = false.obs;

  static FadeInAnimationController get instance => Get.find();

  Future startSplashAnimation() async {
    await Future.delayed(const Duration(milliseconds: 500));
    animate.value = true;
    await Future.delayed(const Duration(milliseconds: 3000));
    animate.value = false;
    await Future.delayed(const Duration(milliseconds: 3000));
    Get.off(OnboardingScreen());
  }
  ///chuc nang cho Animation bat ki
  Future startAnimation() async {
    await Future.delayed(const Duration(milliseconds: 500));
    animate.value = true;
  }
}