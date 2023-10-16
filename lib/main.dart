import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:your_cart/Screen/ForgetPassword.dart';
import 'package:your_cart/Screen/Home.dart';
import 'package:your_cart/Screen/Login.dart';
import 'package:your_cart/Screen/Registration.dart';
import 'package:your_cart/Screen/Welcome.dart';
import 'package:your_cart/Screen/splash_screen_0.dart';
import 'package:your_cart/Screen/splash_screen_1.dart';
import 'package:your_cart/Screen/splash_screen_2.dart';
import 'package:your_cart/Screen/splash_screen_3.dart';
import 'package:your_cart/Services/auth_page.dart';

import 'Services/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: HomePage(),
      initialRoute: "/",
      routes: {
        '/': (context) => SplashScreen0(),
        '/splash1': (context) => SplashScreen1(),
        '/splash2': (context) => SplashScreen2(),
        '/splash3': (context) => SplashScreen3(),
        "welcome": (context) => const Welcome(),
        "login": (context) => LoginPage(),
        "registration": (context) => const RegistrationPage(),
        "homepage": (context) => const HomePage(),
        "forgotpassword": (context) => const ForgotPasswordPage(),
        "authpage": (context) => const AuthPage(),
      },
    );
  }
}
