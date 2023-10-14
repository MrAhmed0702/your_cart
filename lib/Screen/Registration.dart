// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:your_cart/Screen/Home.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  bool? check = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: SingleChildScrollView(
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
                        child: TextField(
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
                          width:41,
                          ),
                        SizedBox(
                        width: 125,
                        height: 43.47,
                        child: TextField(
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
                    TextField(
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
                    TextField(
                      decoration: InputDecoration(
                        hintText: "Phone Number",
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
                    TextField(
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
                    TextField(
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
                            Navigator.of(context).pushReplacement(
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        HomePage()));
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
    );
  }
}
