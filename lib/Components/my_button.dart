import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final Function()? onTap;

  const MyButton({
    super.key,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(12),
            ),
          ),
          backgroundColor: Colors.white,
        ),
        onPressed: onTap,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 40,
            vertical: 3,
          ),
          child: Text(
            'Login',
            style: TextStyle(
              fontFamily: 'Poppins2',
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Color(0xFF5125D2),
            ),
          ),
        ),
      ),
    );
  }
}
