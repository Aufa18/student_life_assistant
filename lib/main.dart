import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const StudentLifeAssistantApp());
}

class StudentLifeAssistantApp extends StatelessWidget {
  const StudentLifeAssistantApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Student Life Assistant',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}