import 'package:flutter/material.dart';
import 'package:your_cart/Screen/Login.dart';
import 'package:your_cart/Screen/Registration.dart';
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
        "welcome": (context) => Welcome(),
        "login": (context) => LoginPage(),
        "registration" : (context) => RegistrationPage(),
        
      },
    );
  }
}
