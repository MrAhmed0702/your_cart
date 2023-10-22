import 'package:flutter/material.dart';

class ClickableCircleAvatar extends StatelessWidget {
  final onPressed;
  final image;

  const ClickableCircleAvatar({
    super.key,
    required this.onPressed,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: CircleAvatar(
        radius: 40,
        backgroundColor: Colors.white,
        child: image,
      ),
    );
  }
}
