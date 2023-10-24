// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:your_cart/Components/my_textfield.dart';
import 'package:your_cart/Screen/Login.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  bool? ischeck = false;
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
  Future<void> signUpUser(
      String email, String password, BuildContext context) async {
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
    double height_c = MediaQuery.of(context).size.height;
    double width_c = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
                  SizedBox(
                    height: height_c * .3,
                    child: Image.asset(
                      'images/registration_png.png',
                    ),
                  ),
                  Container(
                    height: height_c * .7,
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
                            'Please Enter Your Details Here To Register YourSelf',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontFamily: "Poppins2"),
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                width: width_c * .35,
                                height: 43.47,
                                child: TextFormField(
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: "Poppins2",
                                    fontSize: 20,
                                  ),
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
                                width: width_c * .35,
                                height: 43.47,
                                child: TextFormField(
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: "Poppins2",
                                    fontSize: 20,
                                  ),
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
                          MyTextField(
                            controller: emailController,
                            hintText: 'Email',
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
                            controller: phoneNumberController,
                            hintText: 'Phone Number',
                            obscureText: false,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "This field is required";
                              } else if (value.length != 10) {
                                return "Invalid number";
                              } else {
                                return null;
                              }
                            },
                            keyboardType: TextInputType.number,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          MyTextField(
                            controller: passwordController,
                            hintText: 'Password',
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
                          MyTextField(
                            controller: confirmPasswordController,
                            hintText: 'Confirm Password',
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
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Checkbox(
                                  checkColor: Color(0xFF5125D2),
                                  value: ischeck,
                                  onChanged: (newValue) {
                                    setState(() {
                                      ischeck = newValue;
                                    });
                                  }),

                              // 10.width,
                              RichText(
                                  text: TextSpan(children: [
                                TextSpan(
                                    text:
                                        "I agree to the Terms & Conditions \n and Privacy & Policy ",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontFamily: "Poppins2"))
                              ]))
                            ],
                          ),
                          SizedBox(
                            height: 10,
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
                                          passwordController.text, context);
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
                          SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "You Have a Account ?",
                                style: TextStyle(
                                  fontFamily: 'Poppins2',
                                  color: Colors.white,
                                  fontSize: 16
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          LoginPage()));
                                },
                                child: Text(
                                  " Login ",
                                  style: TextStyle(
                                    fontFamily: 'Poppins2',
                                    color: Colors.white,
                                    fontSize: 16,
                                  ),
                                ),
                              )
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
          Positioned(
            top: 20,
            left: 0,
            child: IconButton(
              icon: Icon(Icons.arrow_back, color: Color(0xFF5125D2)),
              onPressed: () {
                Navigator.pop(context); // Navigate back to the previous screen
              },
            ),
          ),
        ],
      ),
    );
  }
}
