import 'package:flutter/material.dart';
import 'package:login_stream/login_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("LOGIN STREAM"),
      ),
      body: Center(
        child: RaisedButton(
          child: Text("LOGIN"),
          onPressed: () => Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => LoginPage())),
        ),
      ),
    );
  }
}
