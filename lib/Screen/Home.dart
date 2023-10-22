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
  final List<Map<String, dynamic>> products = [
    {
      'imagePath': 'images/Product_Page/Synthetic_Mask.png',
      'name': 'Synthetics Mask',
      'price': '\u{20B9} 250.00',
    },
    {
      'imagePath': 'images/Product_Page/Printed_tshirt.png',
      'name': 'Loose Fit Graphic',
      'price': '\u{20B9} 1500.00',
    },
    {
      'imagePath': 'images/Product_Page/Red_Circular_Frame.png',
      'name': 'Red Circular Frame',
      'price': '\u{20B9} 1100.00',
    },
    {
      'imagePath': 'images/Product_Page/blue_lens_aviator.png',
      'name': 'Blue Aviator',
      'price': '\u{20B9} 850.00',
    },
    {
      'imagePath': 'images/Product_Page/Black_leather_Strip_Mask.png',
      'name': 'Leathered Black Masked',
      'price': '\u{20B9} 469.00',
    },
    {
      'imagePath': 'images/Product_Page/Rayben_Blue)Aviator.png',
      'name': 'Ray-Ban Unisex Glasses',
      'price': '\u{20B9} 1200.00',
    },
  ];

  @override
  Widget build(BuildContext context) {
    double height_c = MediaQuery.of(context).size.height;
    double width_c = MediaQuery.of(context).size.width;

    // for (var product in products) {
    //   product['price'] ??=
    //       '\u{20B9} 0.00'; // Set a default price if 'price' is null
    // }

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

                      Stack(
                        children: [
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
                                  contentPadding: const EdgeInsets.symmetric(
                                      horizontal: 16),
                                  hintText: 'Search product',
                                  hintStyle:
                                      TextStyle(color: Color(0xFF673EE5)),
                                  border: InputBorder.none,
                                  // suffixIcon: Icon(
                                  //   Icons.search,
                                  //   color: Color(0xFF673EE5),
                                  // ),
                                ),
                                style: TextStyle(
                                  color: Color(0xFF673EE5),
                                  fontFamily: 'Poppins2',
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ),
                        ],
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
                                color: Color.fromARGB(255, 255, 255, 255),
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
            SizedBox(
              height: height_c * 1,
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // Two items in each row
                  childAspectRatio:
                      0.75, // You can adjust this ratio for the item's height
                ),
                itemCount: products.length,
                itemBuilder: (context, index) {
                  return Padding(
                    // padding: const EdgeInsets.all(8.0),
                    padding: const EdgeInsets.only(left: 8, right: 8),
                    child: Column(
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height * 0.28,
                          width: MediaQuery.of(context).size.width * 0.41,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(14),
                            border:
                                Border.all(color: Color(0xFF673EE5), width: 2),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Image.asset(
                                  products[index]['imagePath'],
                                  width: 148,
                                  height: 148,
                                ),
                                const SizedBox(height: 2),
                                Text(
                                  products[index]["name"],
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontFamily: 'Poppins2',
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                const SizedBox(height: 10),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      products[index]['price'],
                                      style: TextStyle(
                                        color: Color(0xFF5125D2),
                                        fontSize: 15,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    CircleAvatar(
                                      radius: 19,
                                      backgroundColor:
                                          const Color.fromRGBO(81, 37, 210, 1),
                                      child: IconButton(
                                        icon: const Icon(
                                          Icons.favorite_border_outlined,
                                          size: 23,
                                        ),
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
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
