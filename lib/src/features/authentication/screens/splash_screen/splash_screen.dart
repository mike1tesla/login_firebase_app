import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login/src/constants/image_strings.dart';
import 'package:login/src/constants/sizes.dart';
import 'package:login/src/constants/text_strings.dart';
import 'package:login/src/features/authentication/controllers/splash_screen_controller.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({super.key});

  final splashController = Get.put(SplashScreenController());

  @override
  Widget build(BuildContext context) {
    splashController.startAnimation();
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(
        children: [
          Obx(
            () => AnimatedPositioned(
              duration: const Duration(milliseconds: 1600),
              top: splashController.animate.value ? 0 : -30,
              left: 0,
              child: const SizedBox(
                height: 50,
                width: 50,
                child: Image(
                  image: AssetImage(splashTopIcon),
                ),
              ),
            ),
          ),
          Obx(
            () => AnimatedPositioned(
              top: 80,
              left: splashController.animate.value ? defaultSize : -80,
              duration: const Duration(milliseconds: 1600),
              child: AnimatedOpacity(
                opacity: splashController.animate.value ? 1 : 0,
                duration: const Duration(milliseconds: 1600),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      appName,
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                    Text(
                      appTagLine,
                      style: Theme.of(context).textTheme.displaySmall,
                    )
                  ],
                ),
              ),
            ),
          ),
          Obx(
            () => AnimatedPositioned(
              bottom: height * 0.35,
              right: splashController.animate.value
                  ? 0
                  : -200,
              duration: const Duration(milliseconds: 2400),
              child: AnimatedOpacity(
                opacity: splashController.animate.value ? 1 : 0,
                duration: const Duration(milliseconds: 2000),
                child: SizedBox(
                  // height: height,
                  width: width,
                  child: const Image(
                    image: AssetImage(splashImage),
                  ),
                ),
              ),
            ),
          ),
          Obx(
            () => AnimatedPositioned(
              bottom: splashController.animate.value ? 50 : 0,
              left: width * 0.25,
              duration: const Duration(milliseconds: 2400),
              child: SizedBox(
                width: width * 0.5,
                child: const Image(
                  image: AssetImage(splashTitle),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
