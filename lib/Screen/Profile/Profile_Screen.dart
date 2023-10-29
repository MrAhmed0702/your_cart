// ignore_for_file: unused_import

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:your_cart/Screen/Cart_Page/Cart_Page.dart';
import 'package:your_cart/Screen/Footer_Menu.dart';
import 'package:your_cart/Screen/Home.dart';
import 'package:your_cart/Screen/Login.dart';
import 'package:your_cart/Screen/Order_Page/Order_Page.dart';
import 'package:your_cart/Screen/Profile/user_profile.dart';
import 'package:your_cart/Screen/Wishlist_Page/Wishlist_Page.dart';

class Profile_User_Screen extends StatefulWidget {
  const Profile_User_Screen({super.key});

  @override
  State<Profile_User_Screen> createState() => _Profile_User_ScreenState();
}

class _Profile_User_ScreenState extends State<Profile_User_Screen> {
  // Color color = Color.fromARGB(255, 255, 255, 255);

  @override
  Widget build(BuildContext context) {

    Future<void> _signOut() async {
  await FirebaseAuth.instance.signOut();
}

    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(22),
                  bottomRight: Radius.circular(22),
                ),
                color: Color.fromRGBO(81, 37, 210, 1),
              ),
              // color: Colors.blue,
              padding: const EdgeInsets.only(bottom: 25.0), // Optional padding
              child: Column(
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  const Center(
                    child: CircleAvatar(
                      radius: 80, // Adjust the radius as needed
                      backgroundImage: AssetImage(
                        'images/user.png',
                      ),
                      backgroundColor: Color.fromARGB(255, 255, 255, 255),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 8.0),
                    child: Text(
                      "SHIVAM MISHRA",
                      style: TextStyle(
                        fontSize: 30,
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontFamily: 'Poppins2',
                      ),
                    ),
                  ),
                  Text(
                    "SMISHRA371@RKU.AC.IN",
                    style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontFamily: 'Poppins2',
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              color: Colors.white, // White background for the ListView part
              height: 300,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView(
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Profile()),
                        );
                      },
                      child: Card(
                        color: Color.fromRGBO(81, 37, 210, 1),
                        elevation: 1, // Add shadow to the card
                        margin: EdgeInsets.all(8),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const ListTile(
                          leading: Icon(Icons.person,
                              color: Colors.white), // Prefix icon
                          trailing: Icon(Icons.arrow_forward_rounded,
                              color: Colors.white),
                          title: Text(
                            'My Profile',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontFamily: 'Poppins2',
                              fontWeight: FontWeight.w500,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Order_Screen()),
                        );
                      },
                      child: Card(
                        color: Color.fromRGBO(81, 37, 210, 1),
                        elevation: 1, // Add shadow to the card
                        margin: EdgeInsets.all(8),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              20), // Set the card radius to 14
                        ), // Add margin around the card
                        child: ListTile(
                          leading: Icon(Icons.shopping_bag_outlined,
                              color: Colors.white),
                          trailing: Icon(Icons.arrow_forward_rounded,
                              color: Colors.white),
                          title: Text(
                            'My Order',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontFamily: 'Poppins2',
                              fontWeight: FontWeight.w500,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => FooterMenu()),
                        );
                      },
                      child: Card(
                        color: Color.fromRGBO(81, 37, 210, 1),
                        elevation: 1, // Add shadow to the card
                        margin: EdgeInsets.all(8),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              20), // Set the card radius to 14
                        ),
                        // Add margin around the card
                        child: const ListTile(
                          leading:
                              Icon(Icons.settings_rounded, color: Colors.white),
                          trailing: Icon(Icons.arrow_forward_rounded,
                              color: Colors.white),
                          title: Text(
                            'Settings',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontFamily: 'Poppins2',
                              fontWeight: FontWeight.w500,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                    ),
                    // GestureDetector(
                    //   onTap: () {
                    //     // Navigator.push(
                    //     //   context,
                    //     //   MaterialPageRoute(builder: (context) => Logout()),
                    //     // );
                    //   },
                    //   child: const Card(
                    //     elevation: 1,
                    //     margin: EdgeInsets.all(8),
                    //     child: ListTile(
                    //       leading: Icon(Icons.logout_outlined),
                    //       trailing: Icon(Icons.arrow_forward_rounded),
                    //       title: Text('Logout'),
                    //     ),
                    //   ),
                    // ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 280,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: 60,
                  width: 400,
                  child: ElevatedButton(
                    onPressed: () {
                      _signOut();
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) => LoginPage()));
                    },
                    style: ElevatedButton.styleFrom(
                      primary: const Color.fromRGBO(81, 37, 210, 1),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(34),
                      ),
                    ),
                    child: const Text(
                      'Logout',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontFamily: 'Poppins2',
                        fontWeight: FontWeight.w600,
                        height: 0,
                      ),
                    ),
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

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:your_cart/Screen/Cart_Page/Cart_Page.dart';
import 'package:your_cart/Screen/Footer_Menu.dart';
import 'package:your_cart/Screen/Home.dart';
import 'package:your_cart/Screen/Login.dart';
import 'package:your_cart/Screen/Order_Page/Order_Page.dart';
import 'package:your_cart/Screen/Profile/user_profile.dart';
import 'package:your_cart/Screen/Wishlist_Page/Wishlist_Page.dart';

class Profile_User_Screen extends StatefulWidget {
  const Profile_User_Screen({super.key});

  @override
  State<Profile_User_Screen> createState() => _Profile_User_ScreenState();
}

class _Profile_User_ScreenState extends State<Profile_User_Screen> {
  // Color color = Color.fromARGB(255, 255, 255, 255);

  @override
  Widget build(BuildContext context) {

    Future<void> _signOut() async {
  await FirebaseAuth.instance.signOut();
}

    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(22),
                  bottomRight: Radius.circular(22),
                ),
                color: Color.fromRGBO(81, 37, 210, 1),
              ),
              // color: Colors.blue,
              padding: const EdgeInsets.only(bottom: 25.0), // Optional padding
              child: Column(
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  const Center(
                    child: CircleAvatar(
                      radius: 80, // Adjust the radius as needed
                      backgroundImage: AssetImage(
                        'images/user.png',
                      ),
                      backgroundColor: Color.fromARGB(255, 255, 255, 255),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 8.0),
                    child: Text(
                      "SHIVAM MISHRA",
                      style: TextStyle(
                        fontSize: 30,
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontFamily: 'Poppins2',
                      ),
                    ),
                  ),
                  Text(
                    "SMISHRA371@RKU.AC.IN",
                    style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontFamily: 'Poppins2',
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              color: Colors.white, // White background for the ListView part
              height: 300,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView(
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Profile()),
                        );
                      },
                      child: Card(
                        color: Color.fromRGBO(81, 37, 210, 1),
                        elevation: 1, // Add shadow to the card
                        margin: EdgeInsets.all(8),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const ListTile(
                          leading: Icon(Icons.person,
                              color: Colors.white), // Prefix icon
                          trailing: Icon(Icons.arrow_forward_rounded,
                              color: Colors.white),
                          title: Text(
                            'My Profile',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontFamily: 'Poppins2',
                              fontWeight: FontWeight.w500,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Order_Screen()),
                        );
                      },
                      child: Card(
                        color: Color.fromRGBO(81, 37, 210, 1),
                        elevation: 1, // Add shadow to the card
                        margin: EdgeInsets.all(8),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              20), // Set the card radius to 14
                        ), // Add margin around the card
                        child: ListTile(
                          leading: Icon(Icons.shopping_bag_outlined,
                              color: Colors.white),
                          trailing: Icon(Icons.arrow_forward_rounded,
                              color: Colors.white),
                          title: Text(
                            'My Order',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontFamily: 'Poppins2',
                              fontWeight: FontWeight.w500,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => FooterMenu()),
                        );
                      },
                      child: Card(
                        color: Color.fromRGBO(81, 37, 210, 1),
                        elevation: 1, // Add shadow to the card
                        margin: EdgeInsets.all(8),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              20), // Set the card radius to 14
                        ),
                        // Add margin around the card
                        child: const ListTile(
                          leading:
                              Icon(Icons.settings_rounded, color: Colors.white),
                          trailing: Icon(Icons.arrow_forward_rounded,
                              color: Colors.white),
                          title: Text(
                            'Settings',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontFamily: 'Poppins2',
                              fontWeight: FontWeight.w500,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                    ),
                    // GestureDetector(
                    //   onTap: () {
                    //     // Navigator.push(
                    //     //   context,
                    //     //   MaterialPageRoute(builder: (context) => Logout()),
                    //     // );
                    //   },
                    //   child: const Card(
                    //     elevation: 1,
                    //     margin: EdgeInsets.all(8),
                    //     child: ListTile(
                    //       leading: Icon(Icons.logout_outlined),
                    //       trailing: Icon(Icons.arrow_forward_rounded),
                    //       title: Text('Logout'),
                    //     ),
                    //   ),
                    // ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 280,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: 60,
                  width: 400,
                  child: ElevatedButton(
                    onPressed: () {
                      _signOut();
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) => LoginPage()));
                    },
                    style: ElevatedButton.styleFrom(
                      primary: const Color.fromRGBO(81, 37, 210, 1),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(34),
                      ),
                    ),
                    child: const Text(
                      'Logout',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontFamily: 'Poppins2',
                        fontWeight: FontWeight.w600,
                        height: 0,
                      ),
                    ),
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
