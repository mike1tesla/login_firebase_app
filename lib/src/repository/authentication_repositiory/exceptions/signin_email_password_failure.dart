class SignInWithEmailAndPasswordFailure {
  final String message;

  const SignInWithEmailAndPasswordFailure(
      [this.message = "An Unknown error occurred."]);

  factory SignInWithEmailAndPasswordFailure.code(String code) {
    switch (code) {
      case "invalid-email":
        return const SignInWithEmailAndPasswordFailure("Email is a not valid or badly formatted");
      case "user-disabled":
        return const SignInWithEmailAndPasswordFailure("This user has been disabled. Please contact support for help.");
      case "user-not-found":
        return const SignInWithEmailAndPasswordFailure("There is no user corresponding to the given email.");
      case "wrong-password":
        return const SignInWithEmailAndPasswordFailure("The password is invalid for the given email, or the account corresponding to the email does not have a password set.");
      default:
        return const SignInWithEmailAndPasswordFailure();
    }
  }
}
