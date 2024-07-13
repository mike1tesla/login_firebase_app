import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:login/src/repository/authentication_repositiory/authentications_repository.dart';

class SignUpController extends GetxController{
  static SignUpController get instance => Get.find();

  // TextField Controller to get data from TextFields
  final email = TextEditingController();
  final password = TextEditingController();
  final fullName = TextEditingController();
  final phoneNumber = TextEditingController();

  // Call this function from Design & it will do the rest
  void registerUser(String email, String password){
    AuthenticationRepository.instance.createUserWithEmailAndPassword(email, password);
  }

  void phoneAuthentication(String phoneNumber){
    AuthenticationRepository.instance.phoneAuthentication(phoneNumber);
  }
}
