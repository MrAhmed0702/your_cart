import 'package:flutter/material.dart';
import 'package:your_cart/Screen/ForgetPassword.dart';
import 'package:your_cart/Screen/Home.dart';
import 'package:your_cart/Screen/Login.dart';
import 'package:your_cart/Screen/OTP_Password_Page.dart';
import 'package:your_cart/Screen/Registration.dart';
import 'package:your_cart/Screen/UpdatePassword.dart';
import 'package:your_cart/Screen/Welcome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "welcome",
      routes: {
        "welcome": (context) => const Welcome(),
        "login": (context) => const LoginPage(),
        "registration" : (context) => const RegistrationPage(),
        "homepage" : (context) => const HomePage(),
        "forgotpassword" : (context) => const ForgotPasswordPage(),
        "OTP" :(context) => const OTP_Page(),
        "updatepassword" :(context) => const UpdatePasswordPage(),
        
      },
      // home: HomePage(),
    );
  }
}
