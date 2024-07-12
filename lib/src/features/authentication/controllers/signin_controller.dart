import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../repository/authentication_repositiory/authentications_repository.dart';

class SignInController extends GetxController{
  static SignInController get instance => Get.find();

  // TextField Controller to get data from TextFields
  final email = TextEditingController();
  final password = TextEditingController();

  // Call this function from Design & it will do the rest
  void loginUser(String email, String password){
    AuthenticationRepository.instance.loginUserWithEmailAndPassword(email, password);
  }
}