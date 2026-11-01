import 'package:flutter/material.dart';

import 'register_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // Custom earth-tone colors
  final Color beigeBg = const Color(0xFFF5F2EB);
  final Color darkBrown = const Color(0xFF3E2723);
  final Color oliveGreen = const Color(0xFF556B2F);
  final Color mustardYellow = const Color(0xFFE5A93C);

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: beigeBg,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Book Icon
              Icon(Icons.book, size: 60, color: oliveGreen),
              const SizedBox(height: 10),

              // Title
              Text(
                'Thee Book-Club Society',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: darkBrown,
                ),
              ),
              const SizedBox(height: 30),

              // Email Box
              TextField(
                controller: emailController,
                decoration: InputDecoration(
                  labelText: 'Email',
                  labelStyle: TextStyle(color: darkBrown),
                  border: const OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 15),

              // Password Box
              TextField(
                controller: passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                  labelStyle: TextStyle(color: darkBrown),
                  border: const OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 20),

              // Login Button
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: mustardYellow,
                  minimumSize: const Size.fromHeight(50),
                ),
                onPressed: () {
                  print('Login clicked');
                },
                child: const Text(
                  'Log In',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
              const SizedBox(height: 15),

              // Navigate to Registration Screen
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const RegisterScreen(),
                    ),
                  );
                },
                child: Text(
                  'Dont have an account? Sign up',
                  style: TextStyle(color: oliveGreen),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
