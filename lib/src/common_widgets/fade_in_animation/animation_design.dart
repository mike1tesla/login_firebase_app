import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login/src/common_widgets/fade_in_animation/fade_in_animation_controller.dart';
import 'package:login/src/common_widgets/fade_in_animation/fade_in_animation_model.dart';

class FadeInAnimation extends StatelessWidget {
  final FadeInAnimationController controller;

  const FadeInAnimation({
    super.key,
    required this.controller,
    required this.durationMs,
    this.animate,
    required this.child,
  });

  final int durationMs;
  final TAnimatePosition? animate;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      print(controller.animate.value);
      return AnimatedPositioned(
        duration: Duration(milliseconds: durationMs),
        top: controller.animate.value ? animate!.topAfter : animate!.topBefore,
        left:
            controller.animate.value ? animate!.leftAfter : animate!.leftBefore,
        bottom: controller.animate.value
            ? animate!.bottomAfter
            : animate!.bottomBefore,
        right: controller.animate.value
            ? animate!.rightAfter
            : animate!.rightBefore,
        child: AnimatedOpacity(
          duration: Duration(milliseconds: durationMs),
          opacity: controller.animate.value ? 1 : 0,
          child: child,
        ),
      );
    });
  }
}
