// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  bool? check = false;
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  GlobalKey<FormState> globalKey = GlobalKey<FormState>();

  bool isValidEmail(String email) {
    final RegExp emailRegex = RegExp(r'^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+');
    return emailRegex.hasMatch(email);
  }

  FirebaseFirestore instance = FirebaseFirestore.instance;
  FirebaseAuth auth = FirebaseAuth.instance;
  Future<void> signUpUser(String email, String password) async {
    auth
        .createUserWithEmailAndPassword(email: email, password: password)
        .then((value) async {
      debugPrint("Account created");
      Navigator.pushReplacementNamed(context, "login");
      instance.collection("users").doc(auth.currentUser!.uid).set({
        "firstName": firstNameController.text,
        "lastName": lastNameController.text,
        "phoneNumber": phoneNumberController.text,
        "password": passwordController.text,
        "email": emailController.text,
      }).then((value) {
        debugPrint("data inserted");
      }).onError((error, stackTrace) {
        debugPrint("an error");
      });
    }).onError((error, stackTrace) {
      debugPrint("An error occured");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: globalKey,
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Container(
                child: Image.asset(
                  'images/registration_png.png',
                ),
              ),
              Container(
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
                            "Sign Up",
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
                        'Please Enter Your Details Here To\nRegister YourSelf',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontFamily: "Poppins2"),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 125,
                            height: 43.47,
                            child: TextFormField(
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return "This field is requrired";
                                } else {
                                  return null;
                                }
                              },
                              controller: firstNameController,
                              decoration: InputDecoration(
                                hintText: "First Name",
                                hintStyle: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontFamily: 'Poppins2'),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 41,
                          ),
                          SizedBox(
                            width: 125,
                            height: 43.47,
                            child: TextFormField(
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return "This field is requrired";
                                } else {
                                  return null;
                                }
                              },
                              controller: lastNameController,
                              decoration: InputDecoration(
                                hintText: "Last Name",
                                hintStyle: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontFamily: 'Poppins2'),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "This field is requrired";
                          } else if (!isValidEmail(value)) {
                            return "Please enter a valid email";
                          } else {
                            return null;
                          }
                        },
                        controller: emailController,
                        decoration: InputDecoration(
                          hintText: "Email",
                          hintStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontFamily: 'Poppins2'),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        keyboardType: TextInputType.number,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "This field is required";
                          } else if (value.length != 10) {
                            return "Invalid number";
                          } else {
                            return null;
                          }
                        },
                        controller: phoneNumberController,
                        decoration: InputDecoration(
                          hintText: "Phone Number",
                          hintStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontFamily: 'Poppins2',
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "This field is required";
                          } else if (value.length < 6) {
                            return "Too short password";
                          } else {
                            return null;
                          }
                        },
                        controller: passwordController,
                        decoration: InputDecoration(
                          hintText: "Password",
                          hintStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontFamily: 'Poppins2'),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "This field required";
                          } else if (value.length < 6) {
                            return "Too short password";
                          } else {
                            return null;
                          }
                        },
                        controller: confirmPasswordController,
                        decoration: InputDecoration(
                          hintText: "Confirm Password",
                          hintStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontFamily: 'Poppins2'),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
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
                              if (globalKey.currentState!.validate()) {
                                if (passwordController.text.compareTo(
                                        confirmPasswordController.text) ==
                                    0) {
                                  signUpUser(emailController.text,
                                      passwordController.text);
                                } else {
                                  print("Password not matching");
                                }
                              }
                            },
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 40,
                                vertical: 3,
                              ),
                              child: Text(
                                'Sign Up',
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
            ],
          ),
        ),
      ),
    );
  }
}
