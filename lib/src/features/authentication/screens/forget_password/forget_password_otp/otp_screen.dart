import "package:flutter/material.dart";
import "package:flutter_otp_text_field/flutter_otp_text_field.dart";
import "package:get/get.dart";
import "package:google_fonts/google_fonts.dart";
import "package:login/src/constants/sizes.dart";
import "package:login/src/constants/text_strings.dart";

class OTPScreen extends StatelessWidget {
  const OTPScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: Get.width,
        padding: const EdgeInsets.all(paddingSize),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              otpTitle,
              style: GoogleFonts.montserrat(
                fontWeight: FontWeight.bold,
                fontSize: 80.0,
              ),
            ),
            const SizedBox(height: paddingSize),
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
            const SizedBox(height: defaultSize),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text('Next'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
