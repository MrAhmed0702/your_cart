import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: 425,
          height: 926,
          child: Stack(
          children: [
              Positioned(
                  left: 8,
                  top: 9,
                  child: Container(
                      width: 395,
                      height: 364,
                      decoration: ShapeDecoration(
                          color: Color(0xFF5125D2),
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
                    Container(
                      width: 80,
                      height: 98,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 26,
                            top: 26,
                            child: Opacity(
                              opacity: 0.10,
                              child: Container(
                                width: 48,
                                height: 48,
                                decoration: ShapeDecoration(
                                  color: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 38,
                            top: 36,
                            child: Container(
                              width: 24,
                              height: 24,
                              clipBehavior: Clip.antiAlias,
                              decoration: BoxDecoration(),
                              child: Stack(children: [
                                new SvgPicture.asset(
                                  'images/usericon.svg',
                                  height: 24.0,
                                  width: 24.0,
                                  allowDrawingOutsideViewBox: true,
                                    colorFilter: ColorFilter.mode(Colors.white, BlendMode.srcIn)
                                ),
                                  ]),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                        width:2),
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

                Container(
                  width: 108,
                  height: 108,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 26,
                        top: 26,
                        child: Opacity(
                          opacity: 0.10,
                          child: Container(
                            width: 48,
                            height: 48,
                            decoration: ShapeDecoration(
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 38,
                        top: 36,
                        child: Container(
                          width: 24,
                          height: 24,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(children: [
                            new SvgPicture.asset(
                                'images/notification.svg',
                                height: 24.0,
                                width: 24.0,
                                allowDrawingOutsideViewBox: true,
                                colorFilter: ColorFilter.mode(Colors.white, BlendMode.srcIn)
                            ),
                          ]),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Positioned(
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
          ],
          ),
      ),
      ),
    );
  }
}

