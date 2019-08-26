class Validators {
  static bool isValidEmail(String email) {
    return email != null && email.contains("@");
  }

  static bool isValidPass(String pass) {
    return pass != null && pass.length > 6;
  }
}