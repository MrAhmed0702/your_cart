import 'package:flutter/material.dart';

class SplashScreen0 extends StatefulWidget {
  @override
  _SplashScreen0State createState() => _SplashScreen0State();
}

class _SplashScreen0State extends State<SplashScreen0> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(milliseconds: 1000), () {
      Navigator.pushReplacementNamed(context, '/splash1');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 1,
              height: 1,
              decoration: ShapeDecoration(
                color: Color(0xFF8D85FF),
                shape: CircleBorder(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

