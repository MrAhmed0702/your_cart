import 'package:flutter/material.dart';

class SplashScreen1 extends StatefulWidget {
  @override
  _SplashScreen1State createState() => _SplashScreen1State();
}

class _SplashScreen1State extends State<SplashScreen1> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 1000), () {
      Navigator.pushReplacementNamed(context, '/splash2');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            Center(
              // left: 165,
              // top: 448,
              child: Container(
                width: 100,
                height: 100,
                decoration: const ShapeDecoration(
                  color: Color(0xFF8D85FF),
                  shape: CircleBorder(),
                ),
              ),
            ),
            const Center(
              // left: 184,
              // top: 448,
              child: Text(
                'Hello',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w700,
                  height: 0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

