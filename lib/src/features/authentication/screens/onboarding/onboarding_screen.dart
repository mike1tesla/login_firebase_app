import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:login/src/common_widgets/fade_in_animation/animation_design.dart';
import 'package:login/src/common_widgets/fade_in_animation/fade_in_animation_model.dart';
import 'package:login/src/constants/image_strings.dart';
import 'package:login/src/constants/sizes.dart';
import 'package:login/src/constants/text_strings.dart';
import 'package:login/src/features/authentication/controllers/onboarding_controller.dart';
import 'package:login/src/features/authentication/models/model_onboarding.dart';
import 'package:login/src/features/authentication/screens/onboarding/onboarding_widget.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:get/get.dart';

import '../../../../common_widgets/fade_in_animation/fade_in_animation_controller.dart';

class OnboardingScreen extends StatelessWidget {
  OnboardingScreen({super.key});

  final controller = Get.put(OnboardingController());
  final animateController = FadeInAnimationController();

  @override
  Widget build(BuildContext context) {
    animateController.startAnimation();
    final pages = [
      OnboardingWidget(
        model: OnboardingModel(
          image: onboardingImage1,
          title: onboardingTitle1,
          subTitle: onboardingSubTitle1,
        ),
      ),
      OnboardingWidget(
        model: OnboardingModel(
          image: onboardingImage2,
          title: onboardingTitle2,
          subTitle: onboardingSubTitle2,
        ),
      ),
      OnboardingWidget(
        model: OnboardingModel(
          image: onboardingImage3,
          title: onboardingTitle3,
          subTitle: onboardingSubTitle3,
        ),
      )
    ];
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: paddingSize),
              child: Column(
                children: [
                  Column(
                    children: [
                      CarouselSlider(
                        options: CarouselOptions(
                            height: MediaQuery.of(context).size.height / 2,
                            autoPlay: true,
                            viewportFraction: 1,
                            onPageChanged: (index, _) =>
                                controller.updatePageIndicator(index)),
                        items: pages,
                      ),
                    ],
                  ),
                  const SizedBox(height: defaultSize * 2),
                  Obx(
                        () => AnimatedSmoothIndicator(
                      count: pages.length,
                      activeIndex: controller.carouselCurrentIndex.value,
                      effect: const WormEffect(
                        dotWidth: 10,
                        dotHeight: 10,
                      ),
                      duration: const Duration(milliseconds: 500),
                    ),
                  ),
                  const SizedBox(height: defaultSize),
                ],
              ),
            ),
            FadeInAnimation(
              controller: animateController,
              durationMs: 1000,
              animate: TAnimatePosition(
                bottomBefore: 0, bottomAfter: 80,
                leftAfter: paddingSize, leftBefore: paddingSize,
                rightBefore: paddingSize, rightAfter: paddingSize,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: OutlinedButton(
                      onPressed: () {},
                      child: Text(login.toUpperCase()),
                    ),
                  ),
                  const SizedBox(width: defaultSize),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text(signup.toUpperCase()),
                    ),
                  ),
                ],
              ),
            ),
          ]
        ),
      ),
    );
  }
}
