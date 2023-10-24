// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:your_cart/Components/CircleAvatar.dart';
import 'package:your_cart/Components/my_button.dart';
import 'package:your_cart/Components/my_textfield.dart';
import 'package:your_cart/Screen/Footer_Menu.dart';
import 'package:your_cart/Screen/ForgetPassword.dart';
import 'package:your_cart/Screen/Registration.dart';
import 'package:your_cart/Screen/Welcome.dart';

class LoginPage extends StatefulWidget {
  LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  GlobalKey<FormState> globalKey = GlobalKey<FormState>();

  bool isValidEmail(String email) {
    final RegExp emailRegex = RegExp(r'^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+');
    return emailRegex.hasMatch(email);
  }

  void signUserIn() async {
    print("Button Pressed");
    globalKey.currentState!.validate();
    await FirebaseAuth.instance
        .signInWithEmailAndPassword(
      email: emailController.text,
      password: passwordController.text,
    )
        .then((value) {
      Navigator.pushReplacementNamed(context, "footer_menu");
    }).onError((error, stackTrace) {
      debugPrint("error");
    });
  }

  signInWithGoogle() async {
    GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;

    AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken, idToken: googleAuth?.idToken);

    UserCredential userCredential =
        await FirebaseAuth.instance.signInWithCredential(credential);
    print(userCredential.user?.displayName);

    if (userCredential.user != null) {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => FooterMenu()));
    } else {
      return LoginPage();
    }
  }

  @override
  Widget build(BuildContext context) {
    double height_c = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Form(
              key: globalKey,
              child: Column(
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  Container(
                    padding: EdgeInsets.all(12),
                    height: height_c * .3,
                    child: Image.asset(
                      'images/login_png.png',
                    ),
                  ),
                  Container(
                    height: height_c * 0.7,
                    decoration: BoxDecoration(
                      color: Color(0xFF5125D2),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(22),
                        topRight: Radius.circular(22),
                      ),
                    ),
                    child: SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(40, 20, 40, 0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Login here',
                                  style: TextStyle(
                                    fontSize: 40,
                                    color: Colors.white,
                                    fontFamily: "Poppins2",
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              'Please Enter Your Login Credentials',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontFamily: 'Poppins2',
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            MyTextField(
                              controller: emailController,
                              hintText: "Email",
                              obscureText: false,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return "This field is requrired";
                                } else if (!isValidEmail(value)) {
                                  return "Please enter a valid email";
                                } else {
                                  return null;
                                }
                              },
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            MyTextField(
                              controller: passwordController,
                              hintText: "Password",
                              obscureText: true,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return "This field is required";
                                } else if (value.length < 6) {
                                  return "Too short password";
                                } else {
                                  return null;
                                }
                              },
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                InkWell(
                                  onTap: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (BuildContext context) =>
                                                ForgotPasswordPage()));
                                  },
                                  child: Text(
                                    "Forgot Password?",
                                    style: TextStyle(
                                      fontFamily: 'Poppins2',
                                      color: Colors.white,
                                      fontSize: 18
                                    ),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                MyButton(onTap: signUserIn),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Don't have an account? ",
                                      style: TextStyle(
                                        fontFamily: 'Poppins2',
                                        color: Colors.white,
                                        fontSize: 18
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () {
                                        Navigator.of(context).push(
                                            MaterialPageRoute(
                                                builder:
                                                    (BuildContext context) =>
                                                        RegistrationPage()));
                                      },
                                      child: Text(
                                        "SignUp!",
                                        style: TextStyle(
                                          fontFamily: 'Poppins2',
                                          color: Colors.white,
                                          fontSize: 18
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  "Or Login With",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 22,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    ClickableCircleAvatar(
                                        onPressed: () {
                                          signInWithGoogle();
                                        },
                                        image:
                                            Image.asset('images/google.png')),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 20,
            left: 0,
            child: IconButton(
              icon: Icon(Icons.arrow_back, color: Color(0xFF5125D2)),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => Welcome()));
              },
            ),
          ),
        ],
      ),
    );
  }
}
