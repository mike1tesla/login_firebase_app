import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../constants/sizes.dart';
import '../../../../constants/text_strings.dart';

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
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10)
                ),
              ),
            ),
            const SizedBox(height: paddingSize),
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.fingerprint),
                labelText: password,
                hintText: password,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10)
                ),
                suffixIcon: const IconButton(
                  onPressed: null,
                  icon: Icon(Icons.remove_red_eye_outlined),
                ),
              ),
            ),
            const SizedBox(height: paddingSize - 10),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  foregroundColor: Colors.grey
                ),
                child: const Text(forgetPassword),
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: (){},
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