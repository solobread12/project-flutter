import 'package:flutter/material.dart';
import 'package:ui5/halaman/food.dart';
import 'package:ui5/halaman/homepage.dart';
import 'package:lottie/lottie.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:ui5/halaman/user.dart';


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
              child: Lottie.asset('assets/shopping.json'),
            ),

            Text("",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)
          ],
        ),
        nextScreen: Homepage2(),
        splashIconSize: 200,
        backgroundColor: Colors.white,
        duration: 3000, 
        splashTransition: SplashTransition.fadeTransition,
      ),
    );
  }
}

// class Latihan extends StatelessWidget {
//   const Latihan({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Center(child: Text("latihan")),
//         backgroundColor: Colors.amberAccent,
//       ),
//       body: Container(
//         padding: EdgeInsets.all(10),
//         margin: EdgeInsets.all(10),
//         height: 300,
//         width: double.infinity,
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(10),
//           color: Colors.blueAccent,
//         ),
//         child: Image.asset("assets/style.jpg",fit: BoxFit.cover,)
        
        
//       ),
//     );
//   }
// }


