import 'package:flutter/material.dart';

import '../../constants/sizes.dart';

class HeaderWidget extends StatelessWidget {

  const HeaderWidget({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
    this.heightBetween
  });

  final String image, title, subtitle;
  final double? heightBetween;


  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Column(
      children: [
        Center(
          child: SizedBox(
            height: size.height * 0.2,
            child: Image(image: AssetImage(image)),
          ),
        ),
        SizedBox(height: heightBetween),
        Text(
          title,
          style: Theme.of(context).textTheme.displaySmall,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: paddingSize - 8),
        Text(
          subtitle,
          style: Theme.of(context).textTheme.bodyLarge,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
