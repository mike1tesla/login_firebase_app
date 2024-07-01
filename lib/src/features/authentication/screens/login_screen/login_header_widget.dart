import 'package:flutter/material.dart';
import '../../../../constants/image_strings.dart';
import '../../../../constants/sizes.dart';
import '../../../../constants/text_strings.dart';

class LoginHeaderWidget extends StatelessWidget {
  const LoginHeaderWidget({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: SizedBox(
            width: size.width / 2,
            child: const Image(image: AssetImage(loginLogo)),
          ),
        ),
        const SizedBox(height: paddingSize),
        Text(loginTitle,
            style: Theme.of(context).textTheme.displayLarge),
        const SizedBox(height: paddingSize),
        Text(loginSubtitle,
            style: Theme.of(context).textTheme.bodyLarge),
      ],
    );
  }
}
