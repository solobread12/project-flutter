import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:note_app_flutter/pages/home_page.dart';
// import 'package:note_app_flutter/pages/home_page.dart';
import 'package:note_app_flutter/theme/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
} 

class _MyAppState extends State<MyApp> {
  bool isdark = false;

  void toogleTheme() {
    setState(() {
      isdark = !isdark;
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'noteApp',
      debugShowCheckedModeBanner: false,
      theme: isdark ? AppTheme.dark : AppTheme.light,
      home: AnimatedSplashScreen(
        duration: 3000,
        splash: Lottie.asset('assets/download.json'),
        nextScreen: HomePage(onToggleTheme: toogleTheme),
        splashTransition: SplashTransition.fadeTransition,
        backgroundColor: Colors.white,
        splashIconSize: 150,
      )
    );
  }
}

