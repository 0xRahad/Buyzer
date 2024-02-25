import 'package:buyzer/screens/login_screens/login_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Buyzer',
      debugShowCheckedModeBanner: false,
      home: const LoginScreen(),
    );
  }
}

