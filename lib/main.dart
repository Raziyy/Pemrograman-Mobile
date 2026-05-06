import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF2B77C0),
      body: Center(
        child: Container(
          width: 320,
          height: MediaQuery.of(context).size.height * 0.9, 
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 30),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                blurRadius: 15,
                offset: const Offset(0, 8),
              ),
            ],
          ),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, 
            children: [
              const Text(
                "GDSC POLSRI",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 40),

              Image.asset(
                "assets/logo.jpeg",
                height: 100,
              ),

              const SizedBox(height: 40),

              SizedBox(
                width: 160,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFFFA726),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6), 
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 12),
                  ),
                  child: const Text(
                    "Login",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 40),

              const Icon(
                Icons.login,
                size: 28,
                color: Colors.black54,
              ),
            ],
          ),
        ),
      ),
    );
  }
}