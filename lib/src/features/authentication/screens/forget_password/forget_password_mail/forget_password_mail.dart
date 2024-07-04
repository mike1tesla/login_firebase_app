import 'package:flutter/material.dart';

import 'package:login/src/constants/image_strings.dart';
import 'package:login/src/constants/sizes.dart';
import 'package:login/src/constants/text_strings.dart';

import '../../../../../common_widgets/header_widget/header_widget.dart';
import '../forget_password_otp/otp_dialog.dart';

class ForgetPasswordMailScreen extends StatelessWidget {
  const ForgetPasswordMailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(paddingSize),
            child: Column(
              children: [
                const SizedBox(
                  height: paddingSize * 4,
                ),
                const HeaderWidget(
                  image: forgetPasswordMail,
                  title: forgetPassword,
                  subtitle: forgetPasswordSubTitle,
                  heightBetween: paddingSize,
                ),
                const SizedBox(height: defaultSize),
                Form(
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: const InputDecoration(
                          label: Text(email),
                          hintText: email,
                          prefixIcon: Icon(Icons.mail_outline_rounded),
                        ),
                      ),
                      const SizedBox(height: paddingSize),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {
                            otpDialog(context);
                            // Get.to(const OTPScreen());
                          },
                          child: const Text('Next'),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
