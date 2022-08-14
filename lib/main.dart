import 'package:design_app/homePage.dart';
import 'package:design_app/otpPage.dart';
import 'package:design_app/registerPage.dart';
import 'package:design_app/signIn.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SignIn(),
      initialRoute: SignIn.id,
      routes: {
        HomePage.id: (context) => HomePage(),
        OtpPage.id: (context) => OtpPage(),
        Register.id: (context) => Register(),
        SignIn.id: (context) => SignIn(),
      },
    );
  }
}
