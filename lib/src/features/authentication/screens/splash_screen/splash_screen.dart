import 'package:flutter/material.dart';
import 'package:login/src/common_widgets/fade_in_animation/fade_in_animation_controller.dart';
import 'package:login/src/common_widgets/fade_in_animation/fade_in_animation_model.dart';
import 'package:login/src/constants/image_strings.dart';
import 'package:login/src/constants/sizes.dart';
import 'package:login/src/constants/text_strings.dart';

import '../../../../common_widgets/fade_in_animation/animation_design.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = FadeInAnimationController();
    controller.startSplashAnimation();
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(
        children: [
          FadeInAnimation(
            controller: controller,
            durationMs: 1600,
            animate: TAnimatePosition(topAfter: 0, topBefore: -30),
            child: const SizedBox(
                height: 50,
                width: 50,
                child: Image(image: AssetImage(splashTopIcon))),
          ),
          FadeInAnimation(
            controller: controller,
            durationMs: 1600,
            animate: TAnimatePosition(
              topAfter: 80,
              topBefore: 80,
              leftAfter: defaultSize,
              leftBefore: -80,
            ),
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
          FadeInAnimation(
            controller: controller,
            durationMs: 2400,
            animate: TAnimatePosition(
              bottomAfter: height * 0.35,
              bottomBefore: height * 0.35,
              rightAfter: 0,
              rightBefore: -200,
            ),
            child: SizedBox(
              // height: height,
              width: width,
              child: const Image(
                image: AssetImage(splashImage),
              ),
            ),
          ),
          FadeInAnimation(
            controller: controller,
            durationMs: 2400,
            animate: TAnimatePosition(
              leftAfter: width * 0.25,
              leftBefore: width * 0.25,
              bottomAfter: 50,
              bottomBefore: 0,
            ),
            child: SizedBox(
              // height: height,
              width: width * 0.5,
              child: const Image(
                image: AssetImage(splashTitleImage),
              ),
            ),
          )
        ],
      ),
    );
  }
}
