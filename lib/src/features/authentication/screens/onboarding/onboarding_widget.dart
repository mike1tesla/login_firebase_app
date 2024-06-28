import 'package:flutter/material.dart';

import '../../models/model_onboarding.dart';

class OnboardingWidget extends StatelessWidget {
  const OnboardingWidget({
    super.key,
    required this.model,
  });

  final OnboardingModel model;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          // width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height / 3.5,
          child: Image(image: AssetImage(model.image)),
        ),
        Text(
          model.title,
          style: Theme.of(context).textTheme.displayLarge,
        ),
        Text(model.subTitle, textAlign: TextAlign.center),
      ],
    );
  }
}
