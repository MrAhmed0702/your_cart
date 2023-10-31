import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:your_cart/Components/Cloth_selector.dart';

// ignore: camel_case_types
class Product_Description extends StatefulWidget {
  const Product_Description({super.key});

  @override
  State<Product_Description> createState() => _Product_DescriptionState();
}

// ignore: camel_case_types
class _Product_DescriptionState extends State<Product_Description> {
  PageController _pageController = PageController();
  int _currentPage = 0;

  List<String> _images = [
    'images/Product_Page/mask_1.png',
    'images/Product_Page/mask_2.png',
    // 'https://images.pexels.com/photos/7780128/pexels-photo-7780128.jpeg?auto=compress&cs=tinysrgb&w=1600',
    // 'https://images.pexels.com/photos/7573942/pexels-photo-7573942.jpeg?auto=compress&cs=tinysrgb&w=1600',
    // 'https://images.pexels.com/photos/3390587/pexels-photo-3390587.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load'
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
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
      body: Container(
        child: Column(
          // mainAxisAlignment : MainAxisAlignment.start,
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
                      fontSize: 15,
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
                          fontSize: 23,
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
                      width: 42,
                      height: 18,
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
                          fontSize: 12,
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
                                  // const IconData(0xe15b,
                                  //     fontFamily: 'Poppins2'),
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
              padding: EdgeInsets.fromLTRB(17, 20, 0, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        "Select Size : ",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontFamily: 'Poppins2',
                          fontWeight: FontWeight.w500,
                          height: 0,
                        ),
                      ),
                      SizedBox(width: 15,),
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
                  Row(
                    children: [
                      Text(
                        "Select Color : ",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontFamily: 'Poppins2',
                          fontWeight: FontWeight.w500,
                          height: 0,
                        ),
                      ),
                      SizedBox(width: 15,),
                      // ColorSelector(),
                    ],
                  ),
                ],
              ),
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
          width: 10,
          height: 10,
          margin: const EdgeInsets.symmetric(horizontal: 5),
          decoration: ShapeDecoration(
            shape: OvalBorder(
              side: BorderSide(
                width: 3,
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
}
