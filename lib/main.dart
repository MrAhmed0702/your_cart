import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:your_cart/Screen/BNB/Bottom_Navigation_Bar.dart';
import 'package:your_cart/Screen/BNB/Footer_Menu.dart';
import 'package:your_cart/Screen/Authentication_Pages/ForgetPassword.dart';
import 'package:your_cart/Screen/Home_Page/Home.dart';
import 'package:your_cart/Screen/Authentication_Pages/Login.dart';
import 'package:your_cart/Screen/Product_Description_Page.dart/Product_des_page.dart';
import 'package:your_cart/Screen/Authentication_Pages/Registration.dart';
import 'package:your_cart/Screen/Splash_Screens%20and%20Welcome/Welcome.dart';
import 'package:your_cart/Screen/Splash_Screens%20and%20Welcome/splash_screen_0.dart';
import 'package:your_cart/Screen/Splash_Screens%20and%20Welcome/splash_screen_1.dart';
import 'package:your_cart/Screen/Splash_Screens%20and%20Welcome/splash_screen_2.dart';
import 'package:your_cart/Screen/Splash_Screens%20and%20Welcome/splash_screen_3.dart';
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
      // home: FooterMenu(),
      initialRoute: "/",
      routes: {
        '/': (context) => SplashScreen0(),
        '/splash1': (context) => SplashScreen1(),
        '/splash2': (context) => SplashScreen2(),
        '/splash3': (context) => SplashScreen3(),
        "welcome": (context) => const Welcome(),
        "login": (context) => LoginPage(),
        "registration": (context) => const RegistrationPage(),
        "homepage": (context) => const Home_Screen(),
        "forgotpassword": (context) => const ForgotPasswordPage(),
        "authpage": (context) => const AuthPage(),
        "bottom_navigation_bar":(context) => const BottomBar(),
        "footer_menu": (context) => FooterMenu(),
        "product_des1" : (context) => Product_Description(),
      },
    );
  }
}
