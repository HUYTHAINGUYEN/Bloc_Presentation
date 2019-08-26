import 'dart:async';

import 'package:login_stream/validator.dart';

class BlocLogin {
  StreamController _emailController = StreamController();
  StreamController _passController = StreamController();

  Stream get emailStream => _emailController.stream;
  Stream get passStream => _passController.stream;

  bool isValidInfo (String email, String pass) {
    if (!Validators.isValidEmail(email)) {
      _emailController.sink.addError("email sai roi");
      return false;
    }

    _emailController.sink.add("ok");

    if(!Validators.isValidPass(pass)) {
      _passController.sink.addError("password sai roi");
      return false;
    }
    
    _passController.sink.add("ok");

    return true;
  }


  void dispose() {
    _emailController.close();
    _passController.close();
  }
}