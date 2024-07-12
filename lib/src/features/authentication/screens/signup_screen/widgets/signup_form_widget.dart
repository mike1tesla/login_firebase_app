import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login/src/features/authentication/controllers/signup_controller.dart';

import '../../../../../constants/sizes.dart';
import '../../../../../constants/text_strings.dart';

class SignUpFormWidget extends StatelessWidget {
  const SignUpFormWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignUpController());
    final _fromKey = GlobalKey<FormState>(); //tao khoa Global de xac dinh tai khoan la duy nhat
    return Form(
      key: _fromKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormField(
            controller: controller.fullName,
            decoration: const InputDecoration(
              label: Text(fullName),
              prefixIcon: Icon(Icons.person_outline_rounded),
            ),
          ),
          const SizedBox(height: spaceInputForm),
          /// Register Email
          TextFormField(
            controller: controller.email,
            decoration: const InputDecoration(
              label: Text(email),
              prefixIcon: Icon(Icons.email_outlined),
            ),
          ),
          const SizedBox(height: spaceInputForm),
          TextFormField(
            controller: controller.phoneNumber,
            decoration: const InputDecoration(
              label: Text(phoneNumber),
              prefixIcon: Icon(Icons.phone_iphone_outlined),
            ),
          ),
          const SizedBox(height: spaceInputForm),
          /// Register Password
          TextFormField(
            controller: controller.password,
            decoration: const InputDecoration(
              label: Text(password),
              prefixIcon: Icon(Icons.fingerprint),
            ),
          ),
          const SizedBox(height: paddingSize),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: ElevatedButton(
              onPressed: () {
                // check TextFormField co dung dinh dang hay k, sd validator()
                if(_fromKey.currentState!.validate()){
                  // Thuc hien Register User
                  SignUpController.instance.registerUser(controller.email.text.trim(), controller.password.text.trim());
                }
              },
              child: Text(signup.toUpperCase()),
            ),
          )
        ],
      ),
    );
  }
}
