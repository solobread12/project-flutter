import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:slicing_ui1/halaman/page_1.dart';
import 'package:lottie/lottie.dart';
import 'package:slicing_ui1/halaman/task.dart';
// import 'package:slicing_ui1/komponen/komponen_ui1.dart';
// import 'package:slicing_ui1/slicing1.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnimatedSplashScreen(
        splash: Column(
          children: [
            SizedBox(
              width: 150, 
              height: 150,
              child: Lottie.asset('assets/loader.json'),
            ),

            Text("MySlicingKu",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)
          ],
        ),
        nextScreen: Task(),
        splashIconSize: 200,
        backgroundColor: Colors.white,
        duration: 3000, 
        splashTransition: SplashTransition.fadeTransition,
      ),
    );
  }
}

  