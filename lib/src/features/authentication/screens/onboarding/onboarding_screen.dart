import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:login/src/constants/image_strings.dart';
import 'package:login/src/constants/text_strings.dart';
import 'package:login/src/features/authentication/controllers/onboarding_controller.dart';
import 'package:login/src/features/authentication/models/model_onboarding.dart';
import 'package:login/src/features/authentication/screens/onboarding/onboarding_page.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:get/get.dart';

class OnboardingScreen extends StatelessWidget {
  OnboardingScreen({super.key});

  final controller = Get.put(OnboardingController());

  @override
  Widget build(BuildContext context) {
    final pages = [
      OnboardingPage(
        model: OnboardingModel(
          image: onboardingImage1,
          title: onboardingTitle1,
          subTitle: onboardingSubTitle1,
        ),
      ),
      OnboardingPage(
        model: OnboardingModel(
          image: onboardingImage2,
          title: onboardingTitle2,
          subTitle: onboardingSubTitle2,
        ),
      ),
      OnboardingPage(
        model: OnboardingModel(
          image: onboardingImage3,
          title: onboardingTitle3,
          subTitle: onboardingSubTitle3,
        ),
      )
    ];

    return Scaffold(
      body: SafeArea(
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
            const SizedBox(height: 20,),
            Obx(
              () => AnimatedSmoothIndicator(
                count: pages.length,
                activeIndex: controller.carouselCurrentIndex.value,
                effect: const WormEffect(
                  dotWidth: 10,
                  dotHeight: 10,
                  dotColor: Colors.black12,
                  activeDotColor: Colors.black,
                ),
                duration: const Duration(milliseconds: 500),
              ),
            )
          ],
        ),
      ),
    );
  }
}
