// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:your_cart/Components/my_textfield.dart';
import 'package:your_cart/Screen/Login.dart';

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({super.key});

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  bool isValidEmail(String email) {
    final RegExp emailRegex = RegExp(r'^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+');
    return emailRegex.hasMatch(email);
  }

  FirebaseAuth auth = FirebaseAuth.instance;
  Future<void> sendResetLink(String email) async {
    await auth.sendPasswordResetEmail(email: email).then((value) {
      debugPrint("Reset link sent check email");
    }).onError((error, stackTrace) {
      debugPrint("an error occured");
    });
  }

  TextEditingController emailController = TextEditingController();
  GlobalKey<FormState> globalKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Container(
                child: Image.asset(
                  'images/forgot_png.png',
                ),
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xFF5125D2),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(22),
                      topRight: Radius.circular(22),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(40, 10, 40, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Forgot Password ?",
                              style: TextStyle(
                                fontFamily: "Poppins2",
                                fontSize: 30,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          'Please Enter Your Registered Email To Recieve\nA link In Your Mail To Reset Your Password',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontFamily: "Poppins2"),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Form(
                          key: globalKey,
                          child: MyTextField(
                            controller: emailController,
                            hintText: 'Email',
                            obscureText: false,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "This field is requred";
                              } else if (!isValidEmail(value)) {
                                return "Invalid email";
                              } else {
                                return null;
                              }
                            },
                          ),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(12),
                                  ),
                                ),
                                backgroundColor: Colors.white,
                              ),
                              onPressed: () {
                                globalKey.currentState!.validate();
                                sendResetLink(emailController.text);
                              },
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 40,
                                  vertical: 3,
                                ),
                                child: Text(
                                  'Reset',
                                  style: TextStyle(
                                    fontFamily: 'Poppins2',
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF5125D2),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            top: 20,
            left: 0,
            child: IconButton(
              icon: Icon(Icons.arrow_back, color: Color(0xFF5125D2)),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => LoginPage()));
              },
            ),
          ),
        ],
      ),
    );
  }
}
