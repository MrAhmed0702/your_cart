import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

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
                onPressed: () {},
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
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
      // extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
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
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Image.asset(
                        "images/Product_Page/Synthetic_Mask.png",
                        width: 100,
                        height: 100,
                      ),
                      Column(
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
                      Column(
                        children: [
                          IconButton(
                            icon: SvgPicture.asset(
                              'images/delete_icon.svg',
                            ),
                            onPressed: () {},
                            color: Colors.white,
                          ),
                          Container(
                            child: Center(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  SizedBox(
                                    width: 28,
                                    height: 28,
                                    child: FittedBox(
                                      child: FloatingActionButton(
                                        onPressed: add,
                                        child: Icon(
                                          Icons.add,
                                          color: Colors.black,
                                          // size: 12,
                                        ),
                                        backgroundColor: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Text('$_n',
                                      style: new TextStyle(fontSize: 14.0)),
                                  SizedBox(
                                    width: 28,
                                    height: 28,
                                    child: FittedBox(
                                      child: FloatingActionButton(
                                        onPressed: minus,
                                        child: Icon(
                                          const IconData(0xe15b,
                                              fontFamily: 'Poppins2'),
                                          color: Colors.black,
                                          size: 12,
                                        ),
                                        backgroundColor: Colors.white,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  height: 120,
                ),
                // const SizedBox(
                //   height: 22,
                // ),
                // Container(
                //   decoration: BoxDecoration(
                //       borderRadius: BorderRadius.circular(20),
                //       color: const Color(0xFF5125D2)),
                //   height: 120,
                // )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
