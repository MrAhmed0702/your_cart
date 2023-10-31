// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:your_cart/Screen/Home_Page/Home.dart';

class ProductDetail extends StatefulWidget {
  const ProductDetail({super.key});

  @override
  State<ProductDetail> createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  PageController _pageController = PageController();
  int _currentPage = 0;

  List<String> _images = [
    'images/Product_Page/mask_1.png',
    'images/Product_Page/mask_2.png',
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

  List<Widget> _buildPageIndicator() {
    List<Widget> indicators = [];
    for (int i = 0; i < _images.length; i++) {
      indicators.add(
        GestureDetector(
          onTap: () {
            _pageController.animateToPage(
              i,
              duration: Duration(milliseconds: 1000),
              curve: Curves.easeInOut,
            );
          },
          child: Container(
            width: 10,
            height: 10,
            margin: const EdgeInsets.symmetric(horizontal: 5),
            decoration: ShapeDecoration(
              shape: CircleBorder(
                side: BorderSide(
                  width: 3,
                  color: _currentPage == i
                      ? const Color.fromRGBO(81, 37, 210, 1)
                      : Colors.grey,
                ),
              ),
            ),
          ),
        ),
      );
    }
    return indicators;
  }

  @override
  Widget build(BuildContext context) {
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
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) => Home_Screen()));
                },
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
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
          Column(
            
          ),
        ],
      ),
    );
  }
}
