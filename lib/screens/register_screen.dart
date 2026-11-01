import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  // Custom earth-tone colors
  final Color beigeBg = const Color(0xFFF5F2EB);
  final Color darkBrown = const Color(0xFF3E2723);
  final Color oliveGreen = const Color(0xFF556B2F);
  final Color mustardYellow = const Color(0xFFE5A93C);

  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: beigeBg,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(color: darkBrown),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Icon
              Icon(Icons.menu_book_rounded, size: 60, color: oliveGreen),
              const SizedBox(height: 10),

              // Title
              Text(
                'Join the Club',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: darkBrown,
                ),
              ),
              const SizedBox(height: 25),

              // Name Box
              TextField(
                controller: nameController,
                decoration: InputDecoration(
                  labelText: 'Full Name',
                  labelStyle: TextStyle(color: darkBrown),
                  border: const OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 15),

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

              // Register Button
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: mustardYellow,
                  minimumSize: const Size.fromHeight(50),
                ),
                onPressed: () {
                  print('Sign up clicked');
                },
                child: const Text(
                  'Create Account',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
              const SizedBox(height: 15),

              // Back to Login
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  'Already have an account? Log in',
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
