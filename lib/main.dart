import 'package:flutter/material.dart';
import 'screens/welcome_screen.dart';

void main() {
  runApp(const SignupAdventureApp());
}

class SignupAdventureApp extends StatelessWidget {
  const SignupAdventureApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fun Signup App',
      theme: ThemeData(primarySwatch: Colors.purple),
      home: const WelcomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}