import 'package:flutter/material.dart';
import 'package:login_stream/bloc.dart';


class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  BlocLogin bloc = BlocLogin();

  TextEditingController _emailController = TextEditingController();

  TextEditingController _passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("LOGIN"),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              StreamBuilder(
                stream: bloc.emailStream,
                builder: (context, snapshot) {
                  return TextField(
                    controller: _emailController,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      errorText: snapshot.hasError ? snapshot.error : null,
                      border: OutlineInputBorder(),
                      hintText: "Enter email",
                      labelText: "Email",
                    ),
                  );
                }
              ),
              SizedBox(
                height: 20.0,
              ),
              StreamBuilder(
                stream: bloc.passStream,
                builder: (context, snapshot) {
                  return TextField(
                    controller: _passController,
                    keyboardType: TextInputType.text,
                    obscureText: true,
                    decoration: InputDecoration(
                      errorText: snapshot.hasError ? snapshot.error : null,
                      border: OutlineInputBorder(),
                      hintText: "Enter password",
                      labelText: "Password",
                    ),
                  );
                }
              ),
              SizedBox(
                height: 20.0,
              ),
              RaisedButton(
                onPressed: () {
                  login(context);
                },
                color: Colors.blue,
                child: Text("Submit"),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void login(context) {
    if(bloc.isValidInfo(_emailController.text, _passController.text)) {
      Navigator.of(context).pop(LoginPage);
    }
  }
}
