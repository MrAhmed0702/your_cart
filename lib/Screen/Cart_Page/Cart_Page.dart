// ignore_for_file: sort_child_properties_last, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:your_cart/Screen/Footer_Menu.dart';
import 'package:your_cart/Screen/Home.dart';

class Cart_Screen extends StatefulWidget {
  const Cart_Screen({Key? key});

  @override
  State<Cart_Screen> createState() => _Cart_ScreenState();
}

class _Cart_ScreenState extends State<Cart_Screen> {
  int _n = 0;

  void minus() {
    setState(() {
      if (_n != 0) _n--;
    });
  }

  void add() {
    setState(() {
      _n++;
    });
  }

  @override
  Widget build(BuildContext context) {
    double height_c = MediaQuery.of(context).size.height;
    double width_c = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        // centerTitle: true,
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
                onPressed: () {
                  Navigator.of(context).push(
                                            MaterialPageRoute(
                                                builder:
                                                    (BuildContext context) =>
                                                        FooterMenu()));
                },
              ),
            ),
            const Text(
              "Add To Cart",
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
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color(0xFF5125D2)),
                        child: Container(
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Image.asset(
                                  "images/Product_Page/Synthetic_Mask.png",
                                  width: 108,
                                  height: 108,
                                ),
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
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
                                        "Size : Free Size",
                                        style: TextStyle(
                                          color: Color(0xFFBCC1CD),
                                          fontSize: 14,
                                          fontFamily: 'Poppins2',
                                          fontWeight: FontWeight.w500,
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
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(0, 0, 5, 29),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      IconButton(
                                        icon: SvgPicture.asset(
                                          'images/delete_icon.svg',
                                          width: 40,
                                          height: 40,
                                        ),
                                        onPressed: () {},
                                        color: Colors.white,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          SizedBox(
                                            width: 25,
                                            height: 25,
                                            child: FittedBox(
                                              child: FloatingActionButton(
                                                onPressed: minus,
                                                child: Icon(
                                                  // const IconData(0xe15b,
                                                  //     fontFamily: 'Poppins2'),
                                                  Icons.remove,
                                                  color: Color.fromRGBO(
                                                      81, 37, 210, 1),
                                                  size: 40,
                                                ),
                                                backgroundColor: Colors.white,
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 7.8,
                                          ),
                                          Text('$_n',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 16,
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w600,
                                                height: 0,
                                              )),
                                          SizedBox(
                                            width: 7.8,
                                          ),
                                          SizedBox(
                                            width: 25,
                                            height: 25,
                                            child: FittedBox(
                                              child: FloatingActionButton(
                                                onPressed: add,
                                                child: Icon(
                                                  Icons.add,
                                                  color: Color.fromRGBO(
                                                      81, 37, 210, 1),
                                                  size: 40,
                                                ),
                                                backgroundColor: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        height: 140,
                      ),
                      SizedBox(
                        height: 520,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Sub - Total ",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontFamily: 'Poppins2',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                          Text(
                            "\u{20B9} 250",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontFamily: 'Poppins2',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 11,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Shipping ",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontFamily: 'Poppins2',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                          Text(
                            "\u{20B9} 100",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontFamily: 'Poppins2',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 11,
                      ),
                      Container(
                        width: width_c * 1,
                        decoration: ShapeDecoration(
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                              width: 1,
                              strokeAlign: BorderSide.strokeAlignCenter,
                              color: Color(0xFFBCC1CD),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 11,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Total ",
                            style: TextStyle(
                              color: Color(0xFF5125D2),
                              fontSize: 20,
                              fontFamily: 'Poppins2',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                          Text(
                            "\u{20B9} 350",
                            style: TextStyle(
                              color: Color(0xFF5125D2),
                              fontSize: 20,
                              fontFamily: 'Poppins2',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        width: double.maxFinite,
                        height: 50,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            primary: Color.fromRGBO(81, 37, 210, 1),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(34),
                            ),
                          ),
                          child: Text(
                            'Proceed To Checkout',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontFamily: 'Poppins2',
                              fontWeight: FontWeight.w600,
                              height: 0,
                            ),
                          ),
                        ),
                        margin: EdgeInsets.only(top: 10),
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
