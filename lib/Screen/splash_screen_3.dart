import 'package:flutter/material.dart';

class SplashScreen3 extends StatefulWidget {
  @override
  _SplashScreen3State createState() => _SplashScreen3State();
}

class _SplashScreen3State extends State<SplashScreen3> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(milliseconds: 1000), () {
      Navigator.pushReplacementNamed(context, 'welcome');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            Center(
              child: Container(
                width: 400,
                height: 400,
                decoration: ShapeDecoration(
                  color: Color(0xFF5125D2),
                  shape: CircleBorder(),
                ),
              ),
            ),
            Center(
              child: Text(
                'Namaste',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 70,
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
