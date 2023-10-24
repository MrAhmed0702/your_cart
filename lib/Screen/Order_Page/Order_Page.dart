// ignore_for_file: sort_child_properties_last, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:your_cart/Screen/Footer_Menu.dart';

class Order_Screen extends StatefulWidget {
  const Order_Screen({Key? key});

  @override
  State<Order_Screen> createState() => _Order_ScreenState();
}

class _Order_ScreenState extends State<Order_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        elevation: 0.0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CircleAvatar(
              radius: 26,
              backgroundColor: const Color.fromRGBO(81, 37, 210, 1),
              child: IconButton(
                icon: SvgPicture.asset(
                  'images/back_arrow.svg',
                ),
                iconSize: 96,
                color: const Color.fromARGB(255, 255, 255, 255),
                onPressed: () {},
              ),
            ),
            const Text(
              "Order History",
              style: TextStyle(
                color: Colors.black,
                fontSize: 23,
                fontFamily: 'Poppins2',
                fontWeight: FontWeight.w600,
              ),
            ),
            CircleAvatar(
              radius: 26,
              backgroundColor: const Color.fromRGBO(81, 37, 210, 1),
              child: IconButton(
                icon: SvgPicture.asset(
                  'images/notification.svg',
                ),
                iconSize: 96,
                color: const Color.fromARGB(255, 255, 255, 255),
                onPressed: () {
                  Navigator.of(context).push(
                                            MaterialPageRoute(
                                                builder:
                                                    (BuildContext context) =>
                                                        FooterMenu()));
                },
              ),
            ),
          ],
        ),
      ),
      // extendBodyBehindAppBar: true,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Container(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(23, 20, 23, 0),
                  child: Column(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "18/09/2023", // New Text Here
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontFamily: 'Poppins2',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(height: 5,),
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Color(0xFF5125D2)),
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                              child: Row(
                                // mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Image.asset(
                                    "images/Product_Page/Printed_tshirt.png",
                                    width: 100,
                                    height: 100,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(30, 10, 0, 0),
                                    child: Column(
                                      // mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Loose Fit T-Shirt",
                                           maxLines: 1,
                                           overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20,
                                            fontFamily: 'Poppins2',
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        Text(
                                          "Quantity : 1",
                                          style: TextStyle(
                                            color: Color.fromARGB(255, 255, 255, 255),
                                            fontSize: 15,
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w600,
                                            height: 0,
                                          ),
                                        ),
                                        Text(
                                          "\u{20B9} 1500.0",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20,
                                            fontFamily: 'Poppins2',
                                            fontWeight: FontWeight.w600,
                                            height: 0,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            height: 120,
                          ),
                        ],
                      ),

                      SizedBox(height: 10,),
                       Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "12/09/2023", // New Text Here
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontFamily: 'Poppins2',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(height: 5,),
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Color(0xFF5125D2)),
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                              child: Row(
                                // mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Image.asset(
                                    "images/Product_Page/mask_1.png",
                                    width: 100,
                                    height: 100,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(30, 10, 0, 0),
                                    child: Column(
                                      // mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "White Leather Mask ",
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20,
                                            fontFamily: 'Poppins2',
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        Text(
                                          "Quantity : 1",
                                          style: TextStyle(
                                            color: Color.fromARGB(255, 255, 255, 255),
                                            fontSize: 15,
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w600,
                                            height: 0,
                                          ),
                                        ),
                                        Text(
                                          "\u{20B9} 250.0",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20,
                                            fontFamily: 'Poppins2',
                                            fontWeight: FontWeight.w600,
                                            height: 0,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            height: 120,
                          ),
                        ],
                      ),

                      SizedBox(height: 10,),
                       Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "12/09/2023", // New Text Here
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontFamily: 'Poppins2',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(height: 5,),
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Color(0xFF5125D2)),
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                              child: Row(
                                // mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Image.asset(
                                    "images/Product_Page/Synthetic_Mask.png",
                                    width: 100,
                                    height: 100,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(30, 10, 0, 0),
                                    child: Column(
                                      // mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Synthetics Mask",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20,
                                            fontFamily: 'Poppins2',
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        Text(
                                          "Quantity : 1",
                                          style: TextStyle(
                                            color: Color.fromARGB(255, 255, 255, 255),
                                            fontSize: 15,
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w600,
                                            height: 0,
                                          ),
                                        ),
                                        Text(
                                          "\u{20B9} 250.0",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20,
                                            fontFamily: 'Poppins2',
                                            fontWeight: FontWeight.w600,
                                            height: 0,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            height: 120,
                          ),
                        ],
                      ),
                      
                      
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
