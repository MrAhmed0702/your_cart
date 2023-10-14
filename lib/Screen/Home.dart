import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: 430,
          height: 926,
          child: Stack(
          children: [
              Positioned(
                  left: 8,
                  top: 9,
                  child: Container(
                      width: 415,
                      height: 364,
                      decoration: ShapeDecoration(
                          color: Color(0xFF5125D2),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(44),
                          ),
                      ),
                  ),
              ),
                        ],
          ),
      ),
      ),
    );
  }
}
