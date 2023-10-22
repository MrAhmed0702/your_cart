// ignore: file_names
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
// import 'package:your_cart/Screen/Welcome.dart';

class Home_Screen extends StatefulWidget {
  const Home_Screen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _Home_ScreenState createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  @override
  Widget build(BuildContext context) {
    double height_c = MediaQuery.of(context).size.height;
    double width_c = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: width_c * 1,
                height: height_c * 0.45,
                child: Container(
                  decoration: ShapeDecoration(
                    color: const Color(0xFF5125D2),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(44),
                    ),
                  ),
                  child: Stack(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                width: 80,
                                height: 98,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      left: 26,
                                      top: 26,
                                      child: Container(
                                        width: 46,
                                        height: 46,
                                        decoration: ShapeDecoration(
                                          color: const Color.fromRGBO(
                                              107, 69, 217, 1),
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(12),
                                          ),
                                        ),
                                        child: IconButton(
                                          icon: SvgPicture.asset(
                                            'images/usericon.svg',
                                          ),
                                          iconSize: 96,
                                          color: const Color.fromARGB(
                                              255, 255, 255, 255),
                                          onPressed: () {},
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(width: 2),
                              Container(
                                width: 132,
                                height: 20,
                                child: Text(
                                  'Namasta, User',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w500,
                                    height: 0,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 108,
                            height: 108,
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 42,
                                  top: 26,
                                  child: CircleAvatar(
                                    radius: 26,
                                    backgroundColor:
                                        const Color.fromRGBO(107, 69, 217, 1),
                                    child: IconButton(
                                      icon: SvgPicture.asset(
                                        'images/notification.svg',
                                      ),
                                      iconSize: 96,
                                      color: const Color.fromARGB(
                                          255, 255, 255, 255),
                                      onPressed: () {},
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const Stack(
                        children: [
                          Positioned(
                            left: 26,
                            top: 89,
                            child: SizedBox(
                              width: 372,
                              child: Text(
                                'Discover Your Perfect Style, One Click at a Time.',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600,
                                  height: 0,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),

                      Positioned(
                        left: 16,
                        top: 180, // Adjust the top position as needed
                        child: Container(
                          width: 362,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(24),
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                              contentPadding:
                                  const EdgeInsets.symmetric(horizontal: 16),
                              hintText: 'Search product',
                              hintStyle: TextStyle(color: Color(0xFF673EE5)),
                              border: InputBorder.none,
                            ),
                            style: TextStyle(
                              color: Color(0xFF673EE5),
                              fontFamily: 'Poppins2',
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                      // Other Positioned widgets and their child widgets follow...
                      Padding(
                        padding: const EdgeInsets.fromLTRB(25, 258, 0, 0),
                        child: Column(
                          children: [
                            Stack(
                              children: [
                                Positioned(
                                  // left: 30,
                                  // top: 258,
                                  child: CircleAvatar(
                                    radius: 30,
                                    backgroundColor:
                                        const Color.fromRGBO(107, 69, 217, 1),
                                    child: IconButton(
                                      icon: SvgPicture.asset(
                                        'images/lens_icon.svg',
                                      ),
                                      iconSize: 48,
                                      color: Colors.white,
                                      onPressed: () {},
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            const Text(
                              "Lens",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.fromLTRB(99, 258, 0, 0),
                        child: Column(
                          children: [
                            Stack(
                              children: [
                                Positioned(
                                  child: CircleAvatar(
                                    radius: 30,
                                    backgroundColor:
                                        const Color.fromRGBO(107, 69, 217, 1),
                                    child: IconButton(
                                      icon: SvgPicture.asset(
                                        'images/mask_icon.svg',
                                      ),
                                      iconSize: 48,
                                      color: Colors.white,
                                      onPressed: () {},
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            const Text(
                              "Mask",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontFamily: 'Poppins2',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.fromLTRB(172, 258, 0, 0),
                        child: Column(
                          children: [
                            Stack(
                              children: [
                                Positioned(
                                  // left: 30,
                                  // top: 258,
                                  child: CircleAvatar(
                                    radius: 30,
                                    backgroundColor:
                                        const Color.fromRGBO(107, 69, 217, 1),
                                    child: IconButton(
                                      icon: SvgPicture.asset(
                                        'images/t-shirt_icon.svg',
                                      ),
                                      iconSize: 48,
                                      color: Colors.white,
                                      onPressed: () {},
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            const Text(
                              "T-Shirts",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontFamily: 'Poppins2',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.fromLTRB(245, 258, 0, 0),
                        child: Column(
                          children: [
                            Stack(
                              children: [
                                Positioned(
                                  // left: 30,
                                  // top: 258,
                                  child: CircleAvatar(
                                    radius: 30,
                                    backgroundColor:
                                        const Color.fromRGBO(107, 69, 217, 1),
                                    child: IconButton(
                                      icon: SvgPicture.asset(
                                        'images/shirt_icon.svg',
                                      ),
                                      iconSize: 48,
                                      color: Colors.white,
                                      onPressed: () {},
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            const Text(
                              "Shirts",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontFamily: 'Poppins2',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.fromLTRB(318, 258, 0, 0),
                        child: Column(
                          children: [
                            Stack(
                              children: [
                                Positioned(
                                  // left: 30,
                                  // top: 258,
                                  child: CircleAvatar(
                                    radius: 30,
                                    backgroundColor:
                                        const Color.fromRGBO(107, 69, 217, 1),
                                    child: IconButton(
                                      icon: SvgPicture.asset(
                                        'images/more_icon.svg',
                                      ),
                                      iconSize: 48,
                                      color: Colors.white,
                                      onPressed: () {},
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            const Text(
                              "More",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontFamily: 'Poppins2',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 23, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Trending Product",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontFamily: 'Poppins2',
                      fontWeight: FontWeight.w500,
                      height: 0,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'More',
                      style: TextStyle(
                        color: Color(0xFF5125D2),
                        fontSize: 20,
                        fontFamily: 'Poppins2',
                        fontWeight: FontWeight.w300,
                        height: 0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 23),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * 0.28,
                        width: MediaQuery.of(context).size.width * 0.41,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(14),
                            border:
                                Border.all(color: Color(0xFF673EE5), width: 2)),
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Column(
                            children: [
                              Image.asset(
                                "images/Product_Page/Synthetic_Mask.png",
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              const Text(
                                "Synthetics Mask",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontFamily: 'Poppins2',
                                  fontWeight: FontWeight.w600,
                                  height: 0.10,
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    "\u{20B9} 250.00",
                                    style: TextStyle(
                                      color: Color(0xFF5125D2),
                                      fontSize: 15,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w600,
                                      height: 0,
                                    ),
                                  ),
                                  CircleAvatar(
                                    radius: 19,
                                    backgroundColor:
                                        const Color.fromRGBO(81, 37, 210, 1),
                                    child: IconButton(
                                      icon: const Icon(
                                          Icons.favorite_border_outlined,
                                          size: 23),
                                      color: const Color.fromARGB(
                                          255, 255, 255, 255),
                                      onPressed: () {},
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
                Padding(
                  padding: const EdgeInsets.only(left: 23, right: 22),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * 0.28,
                        width: MediaQuery.of(context).size.width * 0.41,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(14),
                            border:
                                Border.all(color: Color(0xFF673EE5), width: 2)),
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Column(
                            children: [
                              Image.asset(
                                "images/Product_Page/Printed_tshirt.png",
                                width: 148,
                                height: 148,
                              ),
                              const SizedBox(
                                height: 2,
                              ),
                              const Text(
                                "Loose Fit Graphic Print Crew-Neck T-Shirt",
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontFamily: 'Poppins2',
                                  fontWeight: FontWeight.w600,
                                  height: 0,
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    "\u{20B9} 1500.00",
                                    style: TextStyle(
                                      color: Color(0xFF5125D2),
                                      fontSize: 15,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w600,
                                      height: 0,
                                    ),
                                  ),
                                  CircleAvatar(
                                    radius: 19,
                                    backgroundColor:
                                        const Color.fromRGBO(81, 37, 210, 1),
                                    child: IconButton(
                                      icon: const Icon(
                                          Icons.favorite_border_outlined,
                                          size: 23),
                                      color: const Color.fromARGB(
                                          255, 255, 255, 255),
                                      onPressed: () {},
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
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 23),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * 0.28,
                        width: MediaQuery.of(context).size.width * 0.41,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(14),
                            border:
                                Border.all(color: Color(0xFF673EE5), width: 2)),
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Column(
                            children: [
                              Image.asset(
                                "images/Product_Page/Red_Circular_Frame.png",
                                width: 148,
                                height: 148,
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              const Text(
                                "Red circular Frame",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontFamily: 'Poppins2',
                                  fontWeight: FontWeight.w600,
                                  height: 0.10,
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    "\u{20B9} 1500.00",
                                    style: TextStyle(
                                      color: Color(0xFF5125D2),
                                      fontSize: 15,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w600,
                                      height: 0,
                                    ),
                                  ),
                                  CircleAvatar(
                                    radius: 19,
                                    backgroundColor:
                                        const Color.fromRGBO(81, 37, 210, 1),
                                    child: IconButton(
                                      icon: const Icon(
                                          Icons.favorite_border_outlined,
                                          size: 23),
                                      color: const Color.fromARGB(
                                          255, 255, 255, 255),
                                      onPressed: () {},
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
                Padding(
                  padding: const EdgeInsets.only(left: 23, right: 22),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * 0.28,
                        width: MediaQuery.of(context).size.width * 0.41,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(14),
                            border:
                                Border.all(color: Color(0xFF673EE5), width: 2)),
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Column(
                            children: [
                              Image.asset(
                                "images/Product_Page/Blue_Aviator.png",
                                width: 148,
                                height: 148,
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              const Text(
                                "Blue Aviator",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontFamily: 'Poppins2',
                                  fontWeight: FontWeight.w600,
                                  height: 0.10,
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    "\u{20B9} 250.00",
                                    style: TextStyle(
                                      color: Color(0xFF5125D2),
                                      fontSize: 15,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w600,
                                      height: 0,
                                    ),
                                  ),
                                  CircleAvatar(
                                    radius: 19,
                                    backgroundColor:
                                        const Color.fromRGBO(81, 37, 210, 1),
                                    child: IconButton(
                                      icon: const Icon(
                                          Icons.favorite_border_outlined,
                                          size: 23),
                                      color: const Color.fromARGB(
                                          255, 255, 255, 255),
                                      onPressed: () {},
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
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 23),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * 0.28,
                        width: MediaQuery.of(context).size.width * 0.41,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(14),
                            border:
                                Border.all(color: Color(0xFF673EE5), width: 2)),
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Column(
                            children: [
                              Image.asset(
                                "images/Product_Page/Black_leather_Strip_Mask.png",
                                width: 148,
                                height: 148,
                              ),
                              const SizedBox(
                                height: 2,
                              ),
                              const Text(
                                "Black With Leather Strip Mask ",
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontFamily: 'Poppins2',
                                  fontWeight: FontWeight.w600,
                                  height: 0,
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    "\u{20B9} 250.00",
                                    style: TextStyle(
                                      color: Color(0xFF5125D2),
                                      fontSize: 15,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w600,
                                      height: 0,
                                    ),
                                  ),
                                  CircleAvatar(
                                    radius: 19,
                                    backgroundColor:
                                        const Color.fromRGBO(81, 37, 210, 1),
                                    child: IconButton(
                                      icon: const Icon(
                                          Icons.favorite_border_outlined,
                                          size: 23),
                                      color: const Color.fromARGB(
                                          255, 255, 255, 255),
                                      onPressed: () {},
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
                Padding(
                  padding: const EdgeInsets.only(left: 23, right: 22),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * 0.28,
                        width: MediaQuery.of(context).size.width * 0.41,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(14),
                            border:
                                Border.all(color: Color(0xFF673EE5), width: 2)),
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Column(
                            children: [
                              Image.asset(
                                "images/Product_Page/Rayben_Blue)Aviator.png",
                                width: 148,
                                height: 148,
                              ),
                              const SizedBox(
                                height: 2,
                              ),
                              const Text(
                                "Ray-Ban Unisex Gradient Blue Lens Aviator",
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontFamily: 'Poppins2',
                                  fontWeight: FontWeight.w600,
                                  height: 0,
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    "\u{20B9} 1200.00",
                                    style: TextStyle(
                                      color: Color(0xFF5125D2),
                                      fontSize: 15,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w600,
                                      height: 0,
                                    ),
                                  ),
                                  CircleAvatar(
                                    radius: 19,
                                    backgroundColor:
                                        const Color.fromRGBO(81, 37, 210, 1),
                                    child: IconButton(
                                      icon: const Icon(
                                          Icons.favorite_border_outlined,
                                          size: 23),
                                      color: const Color.fromARGB(
                                          255, 255, 255, 255),
                                      onPressed: () {},
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
              ],
            ),
          ],
        ),
      ),
    );
  }
}
