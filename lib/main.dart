import 'package:flutter/material.dart';
import 'package:your_cart/Screen/Welcome.dart';

void main() {
  runApp(const MyApp());
}

//test commit
// ahmed bullshit
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false, home: const Welcome());
  }
}
