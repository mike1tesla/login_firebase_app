import 'package:flutter/material.dart';

import '../../../../../constants/sizes.dart';
import '../../../../../constants/text_strings.dart';

class SignUpFormWidget extends StatelessWidget {
  const SignUpFormWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextFormField(
          decoration: const InputDecoration(
            label: Text(fullName),
            prefixIcon: Icon(Icons.person_outline_rounded),
          ),
        ),
        const SizedBox(height: spaceInputForm),
        TextFormField(
          decoration: const InputDecoration(
            label: Text(email),
            prefixIcon: Icon(Icons.email_outlined),
          ),
        ),
        const SizedBox(height: spaceInputForm),
        TextFormField(
          decoration: const InputDecoration(
            label: Text(phoneNumber),
            prefixIcon: Icon(Icons.phone_iphone_outlined),
          ),
        ),
        const SizedBox(height: spaceInputForm),
        TextFormField(
          decoration: const InputDecoration(
            label: Text(password),
            prefixIcon: Icon(Icons.fingerprint),
          ),
        ),
        const SizedBox(height: paddingSize),
        SizedBox(
          width: MediaQuery.of(context).size.width,
          child: ElevatedButton(
            onPressed: () {},
            child: Text(signup.toUpperCase()),
          ),
        )
      ],
    );
  }
}
