import 'package:flutter/material.dart';
import 'package:your_cart/Screen/Login.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF5125D2),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              const SizedBox(
                height: 40,
              ),
              const Text(
                'Welcome!',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 52,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 45),
              SizedBox(
                height: 300,
                child: Image.asset(
                  "images/welcome.png",
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'You want \nAuthentic, Here \nyou go!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Poppins',
                  color: Colors.white,
                  fontSize: 37,
                ),
              ),
              const SizedBox(
                height: 40
              ),
              ElevatedButton(
                onPressed: () {
                  // Add functionality for the Get Started button here
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (BuildContext context) => LoginPage()));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: const Color(0xFF5125D2),
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12))),
                ),
                child: const Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 70,
                    vertical: 7,
                  ),
                  child: Text(
                    'Get Started',
                    style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
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
