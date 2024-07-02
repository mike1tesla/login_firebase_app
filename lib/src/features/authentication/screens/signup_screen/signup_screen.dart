import 'package:flutter/material.dart';
import 'package:login/src/common_widgets/header_widget/header_widget.dart';
import 'package:login/src/constants/image_strings.dart';
import 'package:login/src/constants/sizes.dart';
import 'package:login/src/constants/text_strings.dart';
import 'package:login/src/features/authentication/screens/signup_screen/widgets/signup_footer_widget.dart';
import 'package:login/src/features/authentication/screens/signup_screen/widgets/signup_form_widget.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: paddingSize),
            child: const Column(
              children: [
                HeaderWidget(
                  image: loginLogo,
                  title: signUpTitle,
                  subtitle: signUpSubTitle,
                ),
                SizedBox(height: spaceInputForm),
                SignUpFormWidget(),
                SizedBox(height: 8),
                SignUpFooterWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

