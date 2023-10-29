// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last, prefer_final_fields

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:your_cart/Components/Cloth_selector.dart';
import 'package:your_cart/Components/cloth_color_selector.dart';
import 'package:your_cart/Screen/Footer_Menu.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';

class Product_Description extends StatefulWidget {
  const Product_Description({super.key});

  @override
  State<Product_Description> createState() => _Product_DescriptionState();
}

class _Product_DescriptionState extends State<Product_Description> {
  PageController _pageController = PageController();
  int _currentPage = 0;
  Color currentColor = Colors.amber;
  List<Color> currentColors = [Colors.yellow, Colors.green];
  int _rate_number = 20;
  String _Review_words = "Awesome";

  List<String> _images = [
    'images/Product_Page/mask_1.png',
    'images/Product_Page/mask_2.png',
  ];

  Color selectedColor = Colors.blue; // Default selected color

  // List of available colors
  final List<Color> colors = [
    Colors.blue,
    Colors.red,
    Colors.green,
    Colors.yellow,
  ];

  @override
  void initState() {
    super.initState();
    _pageController.addListener(() {
      setState(() {
        _currentPage = _pageController.page!.round();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    double height_c = MediaQuery.of(context).size.height;
    double width_c = MediaQuery.of(context).size.width;

    int _n = 0;

    void add() {
      setState(() {
        _n++;
      });
    }

    void minus() {
      setState(() {
        if (_n != 0) _n--;
      });
    }

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
                onPressed: () {},
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
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) => FooterMenu()));
                },
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          // mainAxisAlignment : MainAxisAlignment.st art,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: width_c * 1,
              height: height_c * 0.35,
              // color: Colors.black,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 23, 44, 0),
                child: Container(
                  width: 386,
                  height: 306,
                  // color: Colors.white,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(150),
                          bottomRight: Radius.circular(150)),
                      color: Color.fromRGBO(214, 216, 211, 1)),
                  child: Stack(
                    alignment: Alignment.bottomLeft,
                    children: [
                      PageView.builder(
                        controller: _pageController,
                        itemCount: _images.length,
                        itemBuilder: (context, index) {
                          return Image.asset(
                            _images[index],
                            // fit: BoxFit.cover,
                            height: 75,
                            width: 130,
                          );
                        },
                      ),
                      Positioned(
                        left: 17,
                        bottom: 10,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: _buildPageIndicator(),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.fromLTRB(17, 25, 0, 0),
                  child: Text(
                    'Price',
                    style: TextStyle(
                      color: Color(0xFFBCC1CD),
                      fontSize: 18,
                      fontFamily: 'Poppins2',
                      fontWeight: FontWeight.w500,
                      height: 0,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Padding(
                      padding: EdgeInsets.fromLTRB(17, 0, 0, 0),
                      child: Text(
                        '₹ 250.00',
                        style: TextStyle(
                          color: Color(0xFF5125D2),
                          fontSize: 26,
                          fontFamily: 'Poppins2',
                          fontWeight: FontWeight.w600,
                          height: 0,
                        ),
                      ),
                    ),
                    // const SizedBox(
                    //   width: 11,
                    // ),
                    Container(
                      width: 75,
                      height: 24,
                      decoration: ShapeDecoration(
                        color: const Color(0xFF5125D2),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(14),
                        ),
                      ),
                      child: const Text(
                        '40% Off',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontFamily: 'Poppins2',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 14, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 25,
                            height: 25,
                            child: FittedBox(
                              child: FloatingActionButton(
                                onPressed: minus,
                                child: const Icon(
                                  Icons.remove,
                                  color: Color.fromRGBO(255, 255, 255, 1),
                                  size: 40,
                                ),
                                backgroundColor:
                                    const Color.fromRGBO(103, 62, 229, 1),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 7.8,
                          ),
                          Text('$_n',
                              style: const TextStyle(
                                color: Color.fromRGBO(103, 62, 229, 1),
                                fontSize: 16,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                                height: 0,
                              )),
                          const SizedBox(
                            width: 7.8,
                          ),
                          SizedBox(
                            width: 25,
                            height: 25,
                            child: FittedBox(
                              child: FloatingActionButton(
                                onPressed: add,
                                child: const Icon(
                                  Icons.add,
                                  color: Color.fromRGBO(255, 255, 255, 1),
                                  size: 40,
                                ),
                                backgroundColor:
                                    const Color.fromRGBO(103, 62, 229, 1),
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
            const Padding(
              padding: EdgeInsets.fromLTRB(17, 30, 0, 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Synthetics Mask',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 23,
                      fontFamily: 'Poppins2',
                      fontWeight: FontWeight.w600,
                      height: 0.05,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(children: [
                    Icon(Icons.star,
                        size: 25, color: Color.fromRGBO(255, 215, 0, 1)),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      '4.7',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontFamily: 'Poppins2',
                        fontWeight: FontWeight.w600,
                        height: 0,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    SizedBox(
                      width: 113,
                      height: 22,
                      child: Text(
                        '( 146 Review)',
                        style: TextStyle(
                          color: Color(0xFFBCC1CD),
                          fontSize: 16,
                          fontFamily: 'Poppins2',
                          fontWeight: FontWeight.w500,
                          height: 0,
                        ),
                      ),
                    )
                  ]),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(17, 20, 0, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Select Size :",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontFamily: 'Poppins2',
                          fontWeight: FontWeight.w500,
                          height: 0,
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      ClothSizeSelector(),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(17, 20, 0, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Select Color :",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontFamily: 'Poppins2',
                        fontWeight: FontWeight.w500,
                        height: 0,
                      )),
                  SizedBox(
                    height: 55,
                    child: SizedBox(
                      height: 200,
                      width: 200,
                      child: Expanded(
                        child: BlockPicker(
                            availableColors: [
                              Colors.red,
                              Colors.blue,
                              Colors.purple,
                              Colors.yellow
                            ],
                            pickerColor: currentColor,
                            onColorChanged: changeColor),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(17, 20, 15, 0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Description :",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontFamily: 'Poppins2',
                          fontWeight: FontWeight.w500,
                          height: 0,
                        )),
                    Text(
                        "ipsum malesuada est. ex hendrerit tincidunt urna amet, placerat eget non. sit nec placerat In vitae Sed luctus nec ipsum lacus elit lobortis, ac sollicitudin. \n \n Praesent facilisis quis faucibus Cras ipsum venenatis dolor convallis. scelerisque non convallis. ",
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          color: Color(0xFF88889D),
                          fontSize: 16,
                          fontFamily: 'Poppins2',
                          fontWeight: FontWeight.w500,
                          height: 0,
                        )),
                  ]),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(17, 20, 15, 0),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Review :",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontFamily: 'Poppins2',
                          fontWeight: FontWeight.w500,
                          height: 0,
                        )),
                    SizedBox(
                      height: 9,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.star_rate_rounded,
                          size: 30,
                          color: Color.fromRGBO(255, 215, 0, 1),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          '$_rate_number',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontFamily: 'Poppins2',
                            fontWeight: FontWeight.w600,
                            height: 0,
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          '$_Review_words',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontFamily: 'Poppins2',
                            fontWeight: FontWeight.w600,
                            height: 0,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                        "ipsum malesuada est. ex hendrerit tincidunt urna amet, placerat eget non. ",
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          color: Color(0xFF88889D),
                          fontSize: 15,
                          fontFamily: 'Poppins2',
                          fontWeight: FontWeight.w500,
                          height: 0,
                        )),
                    SizedBox(
                      height: 6,
                    ),
                    Text(
                      'Rahul Jadav',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontFamily: 'Poppins2',
                        fontWeight: FontWeight.w500,
                        height: 0,
                      ),
                    ),
                    SizedBox(height: 15,),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.star_rate_rounded,
                          size: 30,
                          color: Color.fromRGBO(255, 215, 0, 1),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          '$_rate_number',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontFamily: 'Poppins2',
                            fontWeight: FontWeight.w600,
                            height: 0,
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          '$_Review_words',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontFamily: 'Poppins2',
                            fontWeight: FontWeight.w600,
                            height: 0,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                        "ipsum malesuada est. ex hendrerit tincidunt urna amet, placerat eget non. ",
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          color: Color(0xFF88889D),
                          fontSize: 15,
                          fontFamily: 'Poppins2',
                          fontWeight: FontWeight.w500,
                          height: 0,
                        )),
                    SizedBox(
                      height: 6,
                    ),
                    Text(
                      'Rahul Jadav',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontFamily: 'Poppins2',
                        fontWeight: FontWeight.w500,
                        height: 0,
                      ),
                    ),
                  ]),
            ),
          ],
        ),
        
      ),
      floatingActionButton: Container(
        color: Color.fromRGBO(255, 255, 255, 1),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                
                primary: Color.fromRGBO(238, 234, 251, 1),
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),) ,
              onPressed: () {
                // Add your action here
              },
              child: Text("Try Now",
              textAlign: TextAlign.right,
style: TextStyle(
color: Color(0xFF5125D2),
fontSize: 24,
fontFamily: 'Poppins2',
fontWeight: FontWeight.w600,
height: 0,
),),
              // backgroundColor: Colors.blue,
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                // Add your action here
              },
              child: Icon(Icons.remove),
              // backgroundColor: Colors.red,
            ),
          ],
        ),
      ),
    );
  }

  List<Widget> _buildPageIndicator() {
    List<Widget> indicators = [];
    for (int i = 0; i < _images.length; i++) {
      indicators.add(
        Container(
          width: 15,
          height: 15,
          margin: const EdgeInsets.symmetric(horizontal: 5),
          decoration: ShapeDecoration(
            shape: OvalBorder(
              side: BorderSide(
                width: 5,
                color: _currentPage == i
                    ? const Color.fromRGBO(81, 37, 210, 1)
                    : Colors.grey,
              ),
            ),
          ),
        ),
      );
    }
    return indicators;
  }

  void changeColor(Color color) => setState(() => currentColor = color);
}
