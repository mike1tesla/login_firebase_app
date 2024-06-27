import 'package:get/get.dart';

class OnboardingController extends GetxController{
  static OnboardingController get instance => Get.find();
  // PageController pageController = PageController();
  RxInt carouselCurrentIndex = 0.obs;

  void updatePageIndicator(int index){
    carouselCurrentIndex.value = index;
  }
}
