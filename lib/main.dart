import 'package:flutter/material.dart';
import 'sign_in.dart'; // Import the file where SignIn is defined

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SignIn(), // Ensure this matches the class name
    );
  }
}
