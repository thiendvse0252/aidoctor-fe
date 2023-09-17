import 'package:ai_doctor/config/themes/app_colors.dart';
import 'package:ai_doctor/modules/overview/screens/FirstScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp(

  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        //colorScheme: ColorScheme.fromSeed(seedColor: const Color(0x)),
        scaffoldBackgroundColor: AppColor.darkblue,
        useMaterial3: true,
      ),
      home: const FirstScreen(),
    );
  }
}

