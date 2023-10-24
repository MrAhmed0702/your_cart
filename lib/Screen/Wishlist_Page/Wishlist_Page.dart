import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Wishlist_Screen extends StatefulWidget {
  const Wishlist_Screen({super.key});

  @override
  State<Wishlist_Screen> createState() => _Wishlist_ScreenState();
}

class _Wishlist_ScreenState extends State<Wishlist_Screen> {
  bool isFavorite = false; // Initial state of the icon

  void toggleFavorite() {
    setState(() {
      isFavorite = isFavorite; // Toggle the state
    });
  }

  final List<Map<String, dynamic>> products = [
    {
      'imagePath': 'images/Product_Page/1.png',
      'name': 'Synthetics Mask',
      'price': '\u{20B9} 250.00',
    },
    {
      'imagePath': 'images/Product_Page/2.png',
      'name': 'Loose Fit Graphic',
      'price': '\u{20B9} 1500.00',
    },
    {
      'imagePath': 'images/Product_Page/3.png',
      'name': 'Red Circular Frame',
      'price': '\u{20B9} 1100.00',
    },
    {
      'imagePath': 'images/Product_Page/4.png',
      'name': 'Blue Aviator',
      'price': '\u{20B9} 850.00',
    },
    {
      'imagePath': 'images/Product_Page/5.png',
      'name': 'Leathered Black Masked',
      'price': '\u{20B9} 469.00',
    },
    {
      'imagePath': 'images/Product_Page/6.png',
      'name': 'Ray-Ban Unisex Glasses',
      'price': '\u{20B9} 1200.00',
    },
  ];

  @override
  Widget build(BuildContext context) {
    double height_c = MediaQuery.of(context).size.height;
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
                "Whislist",
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
        body: SizedBox(
          height: height_c * 1,
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
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
                      height: MediaQuery.of(context).size.height * 0.29,
                      width: MediaQuery.of(context).size.width * 0.41,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        border: Border.all(color: Color(0xFF673EE5), width: 2),
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
                              style: const TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontFamily: 'Poppins2',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            const SizedBox(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  products[index]['price'],
                                  style: const TextStyle(
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
                                    icon: Icon(
                                      isFavorite
                                          ? Icons.favorite
                                          : Icons.favorite_border,
                                      size: 23,
                                    ),
                                    color: isFavorite
                                        ? const Color.fromARGB(
                                            255, 255, 255, 255)
                                        : Colors.white,
                                    onPressed: toggleFavorite,
                                  ),
                                ),
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
        ));
  }
}
