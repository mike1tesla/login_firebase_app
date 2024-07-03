import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../constants/sizes.dart';
import '../../../../../constants/text_strings.dart';
import '../../forget_password/forget_password_options/forget_password_btn_widget.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: paddingSize),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.person_outline_outlined),
                labelText: email,
                hintText: email,
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
              ),
            ),
            const SizedBox(height: paddingSize),
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.fingerprint),
                labelText: password,
                hintText: password,
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                suffixIcon: const IconButton(
                  onPressed: null,
                  icon: Icon(Icons.remove_red_eye_outlined),
                ),
              ),
            ),
            const SizedBox(height: paddingSize - 10),
            /// bottom sheet
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (context) => Container(
                      height: Get.height / 2,
                      padding: const EdgeInsets.all(paddingSize),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            forgetPasswordTitle,
                            style: Theme.of(context).textTheme.displaySmall,
                          ),
                          Text(
                            forgetPasswordSubTitle,
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                          const SizedBox(height: defaultSize),
                          ForgetPasswordBtnWidget(
                            icon: Icons.mail_outline_rounded,
                            titleBtn: email,
                            resetVia: resetViaEmail,
                            onTap: (){},
                          ),
                          const SizedBox(height: paddingSize),
                          ForgetPasswordBtnWidget(
                            icon: Icons.mobile_friendly_outlined,
                            titleBtn: phoneNumber,
                            resetVia: resetViaPhone,
                            onTap: () {},
                          )
                        ],
                      ),
                    ),
                  );
                },
                style: TextButton.styleFrom(foregroundColor: Colors.grey),
                child: const Text(forgetPassword),
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  login.toUpperCase(),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

