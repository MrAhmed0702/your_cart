import 'package:flutter/material.dart';
import 'package:your_cart/Screen/Login.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    double height_c = MediaQuery.of(context).size.height;
    double width_c = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color(0xFF5125D2),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: height_c * 0.06,
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
              SizedBox(height: height_c * 0.05),
              SizedBox(
                height: height_c * 0.4,
                child: Image.asset(
                  "images/welcome.png",
                ),
              ),
              SizedBox(height: height_c * 0.05),
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
              SizedBox(height: height_c * 0.02),
              const Text(
                'Find it now, Buy at here',
                textAlign: TextAlign.center,
                style: TextStyle(
                  decorationColor: Color.fromARGB(255, 140, 143, 151),
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Poppins3',
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 40),
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
