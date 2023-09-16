import 'package:ai_doctor/modules/authenticate//LoginScreen.dart';
import 'package:ai_doctor/modules/overview/FirstScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        //colorScheme: ColorScheme.fromSeed(seedColor: const Color(0x)),
        scaffoldBackgroundColor: const Color(0xFF07203C),
        useMaterial3: true,
      ),
      home: const FirstScreen(),
    );
  }
}

