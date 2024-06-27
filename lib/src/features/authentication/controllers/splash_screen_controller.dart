import 'package:get/get.dart';
import 'package:login/src/features/authentication/screens/welcome/welcome_screen.dart';

class SplashScreenController extends GetxController {
  final animate = false.obs;

  static SplashScreenController get instance => Get.find();

  Future startAnimation() async {
    await Future.delayed(const Duration(milliseconds: 500));
    animate.value = true;
    await Future.delayed(const Duration(milliseconds: 5000));
    Get.to( const WelcomeScreen());
  }
}