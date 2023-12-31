import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
// import 'package:your_cart/Components/ProductWidget.dart';
import 'package:your_cart/Components/ProductWidgetTest.dart';
import 'package:your_cart/Screen/Profile/Profile_Screen.dart';
import 'package:your_cart/Screen/Read%20Data/get_user_name.dart';
// import 'package:your_cart/Screen/Welcome.dart';

class Home_Screen extends StatefulWidget {
  const Home_Screen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _Home_ScreenState createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  final users = FirebaseAuth.instance.currentUser!;

  List<String> docIDs = [];

  Future getDocId() async {
    await FirebaseFirestore.instance.collection('users').get().then(
          (snapshot) => snapshot.docs.forEach(
            (document) {
              print(document.reference);
              docIDs.add(document.reference.id);
            },
          ),
        );
  }

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
                                          onPressed: () {
                                            Navigator.of(context).push(
                                                MaterialPageRoute(
                                                    builder: (BuildContext
                                                            context) =>
                                                        Profile_User_Screen()));
                                          },
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(width: 2),
                              SizedBox(
                                width: 132,
                                height: 20,
                                child: Row(
                                  children: <Widget>[
                                    Text(
                                      'Namasta, ',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w500,
                                        height: 0,
                                      ),
                                    ),
                                    FutureBuilder(
                                        future: getDocId(),
                                        builder: (context, snapshot) {
                                          return ListView.builder(
                                            itemCount: docIDs.length,
                                            itemBuilder: (context, index) {
                                              return ListTile(
                                                title: GetUserName(DocumentId: docIDs[index]),
                                              );
                                            },
                                          );
                                        }),
                                  ],
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
                            top: 180,
                            child: Container(
                              width: 362,
                              height: 50,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(24),
                              ),
                              child: const TextField(
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.symmetric(
                                      horizontal: 16, vertical: 10),
                                  hintText: 'Search Product',
                                  hintStyle:
                                      TextStyle(color: Color(0xFF673EE5)),
                                  border: InputBorder.none,
                                  suffixIcon: Icon(
                                    Icons.search,
                                    size: 30,
                                    color: Color(0xFF673EE5),
                                  ),
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
            ProductWidgetTest(),
          ],
        ),
      ),
    );
  }
}
