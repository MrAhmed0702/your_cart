// ignore: file_names
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
// import 'package:your_cart/Screen/Welcome.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double height_c = MediaQuery.of(context).size.height;
    double width_c = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          width: width_c * 1,
          height: height_c * 1,
          child: Stack(
            children: [
              Positioned(
                left: 8,
                top: 9,
                child: Container(
                  width: width_c * 0.97,
                  height: height_c * .420,
                  decoration: ShapeDecoration(
                    color: const Color(0xFF5125D2),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(44),
                    ),
                  ),
                ),
              ),
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
                                  color: const Color.fromRGBO(107, 69, 217, 1),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                ),
                                child: IconButton(
                                  icon: SvgPicture.asset(
                                    'images/usericon.svg',
                                  ),
                                  iconSize: 96,
                                  color:
                                      const Color.fromARGB(255, 255, 255, 255),
                                  onPressed: () {},
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 2),
                      const SizedBox(
                        width: 132,
                        height: 20,
                        child: Text(
                          'Hello, James',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            height: 0,
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    width: 108,
                    height: 108,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 26,
                          top: 26,
                          child: CircleAvatar(
                            radius: 26,
                            backgroundColor: const Color.fromRGBO(107, 69, 217, 1),
                            child: IconButton(
                              icon: SvgPicture.asset(
                                'images/notification.svg',
                              ),
                              iconSize: 96,
                              color: const Color.fromARGB(255, 255, 255, 255),
                              onPressed: () {},
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const Positioned(
                left: 29.50,
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
              // const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.fromLTRB(26, 258, 0, 0),
                child: Column(
                  children: [
                    Positioned(
                      // left: 30,
                      // top: 258,
                      child: CircleAvatar(
                        radius: 30,
                        backgroundColor: const Color.fromRGBO(107, 69, 217, 1),
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
                padding: const EdgeInsets.fromLTRB(108, 258, 0, 0),
                child: Column(
                  children: [
                    Positioned(
                      child: CircleAvatar(
                        radius: 30,
                        backgroundColor: const Color.fromRGBO(107, 69, 217, 1),
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
                padding: const EdgeInsets.fromLTRB(184, 258, 0, 0),
                child: Column(
                  children: [
                    Positioned(
                      // left: 30,
                      // top: 258,
                      child: CircleAvatar(
                        radius: 30,
                        backgroundColor: const Color.fromRGBO(107, 69, 217, 1),
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
                padding: const EdgeInsets.fromLTRB(259, 258, 0, 0),
                child: Column(
                  children: [
                    Positioned(
                      // left: 30,
                      // top: 258,
                      child: CircleAvatar(
                        radius: 30,
                        backgroundColor: const Color.fromRGBO(107, 69, 217, 1),
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
                padding: const EdgeInsets.fromLTRB(334, 258, 0, 0),
                child: Column(
                  children: [
                    Positioned(
                      // left: 30,
                      // top: 258,
                      child: CircleAvatar(
                        radius: 30,
                        backgroundColor: const Color.fromRGBO(107, 69, 217, 1),
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
    );
  }
}
