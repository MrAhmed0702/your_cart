import 'package:flutter/material.dart';

class SplashScreen2 extends StatefulWidget {
  @override
  _SplashScreen2State createState() => _SplashScreen2State();
}

class _SplashScreen2State extends State<SplashScreen2> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 1000), () {
      Navigator.pushReplacementNamed(context, '/splash3');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            Center(
              // left: 115,
              // top: 435,
              child: Container(
                width: 200,
                height: 200,
                decoration: const ShapeDecoration(
                  color: Color(0xFF673EE5),
                  shape: CircleBorder(),
                ),
              ),
            ),
            const Center(
              // left: 131,
              // top: 435,
              child: Text(
                'Bonjour',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 42,
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


