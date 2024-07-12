import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:login/src/features/authentication/screens/onboarding/onboarding_screen.dart';
import 'package:login/src/features/core/screens/dashboard/dashboard.dart';
import 'package:login/src/repository/authentication_repositiory/exceptions/signin_email_password_failure.dart';
import 'package:login/src/repository/authentication_repositiory/exceptions/sigup_email_password_failure.dart';

class AuthenticationRepository extends GetxController{
  static AuthenticationRepository get instance => Get.find();

  //Variables: xac thuc Firebase & xac thuc User da signup
  final _auth = FirebaseAuth.instance; // Variable using instance Firebase
  // Bien nay xac dinh User cuoi cung dang sd App, login-logout
  late final Rx<User?> firebaseUser; //sd Stream de lang nghe trang thai moi nhat login-logout of User

  @override
  void onReady() {
    //check current state user is login => Dashboard() or logout => Signup()
    firebaseUser = Rx<User?> (_auth.currentUser);
    // gui Stream luong thong bao User firebase thuc hien 1 so hanh dong bat ki 
    firebaseUser.bindStream(_auth.userChanges());
    // moi khi co thay doi firebaseUser thuc hien hanh dong tuong ung
    ever(firebaseUser, _setInitialScreen);
    super.onReady();
  }

  _setInitialScreen(User? user) {
    user == null ? Get.offAll(OnboardingScreen()) : Get.offAll(const Dashboard());
  }

  Future<void> createUserWithEmailAndPassword(String email, String password) async {
    try {
      await _auth.createUserWithEmailAndPassword(email: email, password: password);
      firebaseUser.value != null ? Get.offAll(const Dashboard()) : Get.to(OnboardingScreen());
    } on FirebaseAuthException catch(e){
      final ex = SignUpWithEmailAndPasswordFailure.code(e.code);
      print("FIREBASE AUTH EXCEPTION - ${ex.message}");
      throw ex;
    } catch(_){
      const ex = SignUpWithEmailAndPasswordFailure();
      print("EXCEPTION - ${ex.message}");
      throw ex;
    }
  }

  Future<void> loginUserWithEmailAndPassword(String email, String password) async {
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
      firebaseUser.value != null ? Get.offAll(const Dashboard()) : Get.to(OnboardingScreen());
    } on FirebaseAuthException catch(e){
      final ex = SignInWithEmailAndPasswordFailure.code(e.code);
      print("FIREBASE AUTH EXCEPTION - ${ex.message}");
      throw ex;
    } catch(_){
      const ex = SignInWithEmailAndPasswordFailure();
      print("EXCEPTION - ${ex.message}");
      throw ex;
    }
  }

  Future<void> logout() async => await _auth.signOut();
}