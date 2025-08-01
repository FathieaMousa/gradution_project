import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:graduation_project/screens/login/register.dart';
import 'package:graduation_project/screens/login/signIn.dart';


void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        //home: RegisterScreen(),
      home: SignInScreen()
    );
  }

// This widget is the root of your application.

}
