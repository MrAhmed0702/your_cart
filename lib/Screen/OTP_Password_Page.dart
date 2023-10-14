// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:your_cart/Screen/ForgetPassword.dart';
import 'package:your_cart/Screen/UpdatePassword.dart';

class OTP_Page extends StatefulWidget {
  const OTP_Page({super.key});

  @override
  State<OTP_Page> createState() => _OTP_PageState();
}

class _OTP_PageState extends State<OTP_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Container(
            child: Image.asset(
              'images/login_png.png',
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
                          "Enter OTP",
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
                      'Please Enter The OTP That Receive On\nYour E-Mail',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontFamily: "Poppins2"),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 44,
                          width: 44,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                            side: BorderSide(width: 2, color: Colors.white),
                            borderRadius: BorderRadius.circular(14),
                            ),
                          ),
                            child: TextField(
                              onChanged: (value){
                                if (value.length == 1)
                                {
                                  FocusScope.of(context).nextFocus();
                                }
                              },
                              style: TextStyle(
                              fontFamily: "Poppins2",
                              fontSize: 30,
                              color: Color(0xFF5125D2),
                            ),
                            keyboardType: TextInputType.number,
                            textAlign: TextAlign.center,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(1),
                              FilteringTextInputFormatter.digitsOnly
                            ],
                          ),
                          ),
                        SizedBox(width: 18,),
                        Container(
                          height: 44,
                          width: 44,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                            side: BorderSide(width: 2, color: Colors.white),
                            borderRadius: BorderRadius.circular(14),
                            ),
                          ),
                            child: TextField(
                              onChanged: (value){
                                if (value.length == 1)
                                {
                                  FocusScope.of(context).nextFocus();
                                }
                              },
                              style: TextStyle(
                              fontFamily: "Poppins2",
                              fontSize: 30,
                              color: Color(0xFF5125D2),
                            ),
                            keyboardType: TextInputType.number,
                            textAlign: TextAlign.center,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(1),
                              FilteringTextInputFormatter.digitsOnly
                            ],
                          ),
                          ),
                        SizedBox(width: 18,),
                        Container(
                          height: 44,
                          width: 44,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                            side: BorderSide(width: 2, color: Colors.white),
                            borderRadius: BorderRadius.circular(14),
                            ),
                          ),
                            child: TextField(
                              onChanged: (value){
                                if (value.length == 1)
                                {
                                  FocusScope.of(context).nextFocus();
                                }
                              },
                              style: TextStyle(
                              fontFamily: "Poppins2",
                              fontSize: 30,
                              color: Color(0xFF5125D2),
                            ),
                            keyboardType: TextInputType.number,
                            textAlign: TextAlign.center,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(1),
                              FilteringTextInputFormatter.digitsOnly
                            ],
                          ),
                          ),
                        SizedBox(width: 18,),
                        Container(
                          height: 44,
                          width: 44,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                            side: BorderSide(width: 2, color: Colors.white),
                            borderRadius: BorderRadius.circular(14),
                            ),
                          ),
                            child: TextField(
                              onChanged: (value){
                                if (value.length == 1)
                                {
                                  FocusScope.of(context).nextFocus();
                                }
                              },
                              style: TextStyle(
                              fontFamily: "Poppins2",
                              fontSize: 30,
                              color: Color(0xFF5125D2),
                            ),
                            keyboardType: TextInputType.number,
                            textAlign: TextAlign.center,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(1),
                              FilteringTextInputFormatter.digitsOnly
                            ],
                          ),
                          ),
                        SizedBox(width: 18,),
                        Container(
                          height: 44,
                          width: 44,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                            side: BorderSide(width: 2, color: Colors.white),
                            borderRadius: BorderRadius.circular(14),
                            ),
                          ),
                            child: TextField(
                              onChanged: (value){
                                if (value.length == 1)
                                {
                                  FocusScope.of(context).nextFocus();
                                }
                              },
                              
                              style: TextStyle(
                              fontFamily: "Poppins2",
                              fontSize: 30,
                              color: Color(0xFF5125D2),
                            ),
                            keyboardType: TextInputType.number,
                            textAlign: TextAlign.center,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(1),
                              FilteringTextInputFormatter.digitsOnly
                            ],
                          ),
                          ),
                        
                      ],
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
                            Navigator.of(context).pushReplacement(
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        UpdatePasswordPage()));
                          },
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 40,
                              vertical: 3,
                            ),
                            child: Text(
                              'Confirm OTP',
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
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Didn't Received OTP? ",
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: "Poppins2",
                            fontSize: 15,
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    ForgotPasswordPage()));
                          },
                          child: Text(
                            "Resend OTP",
                            style: TextStyle(
                              fontFamily: 'Poppins2',
                              color: Colors.white,
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
    );
  }
}
