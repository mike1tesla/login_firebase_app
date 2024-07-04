import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:login/src/features/authentication/screens/signup_screen/signup_screen.dart';

import '../../../../../constants/image_strings.dart';
import '../../../../../constants/sizes.dart';
import '../../../../../constants/text_strings.dart';

class LoginFooterWidget extends StatelessWidget {
  const LoginFooterWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text("Or"),
        const SizedBox(height: paddingSize - 10),
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
        const SizedBox(height: paddingSize - 8),
        TextButton(
          onPressed: () => Get.off(const SignupScreen()),
          style: TextButton.styleFrom(foregroundColor: Colors.grey),
          child: Text.rich(
            TextSpan(
              text: dontHaveAnAccount,
              style: Theme.of(context).textTheme.bodyLarge,
              children: const [
                TextSpan(
                  text: signup,
                  style: TextStyle(color: Colors.blue),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
