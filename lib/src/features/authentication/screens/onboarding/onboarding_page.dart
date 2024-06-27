import 'package:flutter/material.dart';

import '../../models/model_onboarding.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({
    super.key,
    required this.model,
  });

  final OnboardingModel model;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(
            // width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 3,
            child: Image(image: AssetImage(model.image)),
          ),
          Text(
            model.title,
            style: Theme.of(context).textTheme.titleLarge,
          ),
          Text(model.subTitle, textAlign: TextAlign.center),
        ],
      ),
    );
  }
}
