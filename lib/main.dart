import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const SKosApp());
}

class SKosApp extends StatelessWidget {
  const SKosApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "S'Kos",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF1769FF)),
        scaffoldBackgroundColor: const Color(0xFFF8FAFF),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}
