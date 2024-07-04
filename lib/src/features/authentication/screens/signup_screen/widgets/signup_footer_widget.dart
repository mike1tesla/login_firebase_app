import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:login/src/features/authentication/screens/login_screen/login_screen.dart';

import '../../../../../constants/image_strings.dart';
import '../../../../../constants/sizes.dart';
import '../../../../../constants/text_strings.dart';

class SignUpFooterWidget extends StatelessWidget {
  const SignUpFooterWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(height: 8),
        SizedBox(
          width: double.infinity,
          child: OutlinedButton.icon(
            onPressed: () {},
            icon: SvgPicture.asset(
              googleIcon,
              width: 20,
            ),
            label: const Text(signInWithGoogle),
          ),
        ),
        const SizedBox(height: paddingSize - 10),
        TextButton(
          onPressed: () => Get.off(const LoginScreen()),
          style: TextButton.styleFrom(foregroundColor: Colors.grey),
          child: Text.rich(
            TextSpan(
                text: alreadyHaveAnAccount,
                style: Theme.of(context).textTheme.bodyLarge,
                children: const [
                  TextSpan(
                    text: login,
                    style: TextStyle(color: Colors.blue),
                  )
                ]),
          ),
        )
      ],
    );
  }
}
