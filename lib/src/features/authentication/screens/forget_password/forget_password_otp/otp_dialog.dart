import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../constants/sizes.dart';
import '../../../../../constants/text_strings.dart';

Future<dynamic> otpDialog(BuildContext context) {
  return Get.defaultDialog(
    title: otpTitle,
    titleStyle: GoogleFonts.montserrat(
      fontWeight: FontWeight.bold,
      fontSize: 80.0,
    ),
    content: Column(
      children: [
        Text(
          otpSubtitle,
          style: Theme.of(context).textTheme.displaySmall,
        ),
        const SizedBox(height: paddingSize),
        const Text(
          "${otpMessage}otp@gmail.com",
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: paddingSize),
        OtpTextField(
          numberOfFields: 6,
          fillColor: Colors.black.withOpacity(0.1),
          filled: true,
          onSubmit: (code) {
            print("OTP is => $code");
          },
        ),
      ],
    ),
    confirm: SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {},
        child: const Text('Next'),
      ),
    ),
  );
}
