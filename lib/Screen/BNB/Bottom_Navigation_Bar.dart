// Ahmed's BNB

import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:your_cart/Screen/Cart_Page/Cart_Page.dart';
import 'package:your_cart/Screen/Home_Page/Home.dart';
import 'package:your_cart/Screen/Order_Page/Order_Page.dart';
import 'package:your_cart/Screen/Wishlist_Page/Wishlist_Page.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedIndex = 0;

  void _navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    Home_Screen(),
    Cart_Screen(),
    Order_Screen(),
    Wishlist_Screen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: Container(
        margin: EdgeInsets.fromLTRB(7, 0, 7, 14),
        height: 75,
        child: ClipRRect(
          borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(50), top: Radius.circular(50)),
          child: GNav(
            selectedIndex: _selectedIndex,
            onTabChange: (index) {
              _navigateBottomBar(index);
            },
            gap: 8,
            backgroundColor: Color(0xFF5125D2),
            color: Colors.black26,
            activeColor: Colors.white,
            tabBackgroundColor: Colors.blueAccent.withOpacity(.1),
            tabBorderRadius: 50,
            iconSize: 29,
            duration: Duration(milliseconds: 1),
            haptic: true,
            curve: Curves.fastEaseInToSlowEaseOut,
            textStyle: TextStyle(
                fontSize: 16, color: Colors.white, fontFamily: "Poppins2"),
            tabs: [
              GButton(
                icon: Icons.home,
                text: 'Home',
              ),
              GButton(
                icon: Icons.shopping_cart,
                text: 'Cart',
              ),
              GButton(
                icon: Icons.assignment,
                text: 'Orders',
              ),
              GButton(
                icon: Icons.favorite,
                text: 'Wishlist',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
