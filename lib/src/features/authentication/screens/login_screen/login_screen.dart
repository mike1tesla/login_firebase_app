import 'package:flutter/material.dart';
import 'package:login/src/constants/image_strings.dart';
import 'package:login/src/constants/sizes.dart';
import 'package:login/src/constants/text_strings.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(paddingSize),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ///--- start section 1 ---
                Center(
                  child: SizedBox(
                    width: size.width / 2,
                    child: const Image(image: AssetImage(loginLogo)),
                  ),
                ),
                const SizedBox(height: paddingSize),
                Text(loginTitle, style: Theme.of(context).textTheme.displayLarge),
                const SizedBox(height: paddingSize),
                Text(loginSubtitle, style: Theme.of(context).textTheme.bodyLarge)
                /// --- end section 1 ---
              ],
            ),
          ),
        ),
      ),
    );
  }
}
