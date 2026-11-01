import 'package:flutter/material.dart';
import 'package:thee_bookclub_society/screens/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Thee Book-Club Society',
      home: LoginScreen(),
    );
  }
}
