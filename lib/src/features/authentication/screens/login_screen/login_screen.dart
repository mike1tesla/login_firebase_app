import 'package:flutter/material.dart';
import 'package:login/src/constants/sizes.dart';

import 'login_footer_widget.dart';
import 'login_form_widget.dart';
import 'login_header_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery
        .of(context)
        .size;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(paddingSize),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                ///--- section 1 ---
                LoginHeaderWidget(size: size),

                ///--- section 2 ---
                const LoginForm(),

                ///--- section 3 ---
                const LoginFooterWidget()
              ],
            ),
          ),
        ),
      ),
    );
  }
}

