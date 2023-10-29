import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
      ),
      body: Column(
        children: [
          Center(
              child: Text(
            "My Profile",
            style: TextStyle(fontSize: 20),
          )),
          Padding(
            padding: const EdgeInsets.only(top: 15.0),
            child: CircleAvatar(
              radius: 40, // Adjust the radius as needed
              backgroundImage: NetworkImage(
                  'https://cdn-icons-png.flaticon.com/512/1077/1077114.png'), // Use NetworkImage for images from the web
              // OR
              // child: Icon(Icons.person), // Use Icon for icons
            ),
          ),
        ],
      ),
    );
  }
}
