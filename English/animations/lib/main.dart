import 'package:flutter/material.dart';
import 'package:animaciones/Screens/home.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Here the app's theme is defined
      theme: ThemeData.from(
          colorScheme: ColorScheme.fromSeed(
        seedColor: Colors.blueAccent,
      )), // This creates the complete theme based on a seed color
      home: const HomeScreen(),
    );
  }
}
