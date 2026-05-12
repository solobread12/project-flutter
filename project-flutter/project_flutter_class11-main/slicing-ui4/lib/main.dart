import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:slicingui4/halaman/home.dart';
import 'package:slicingui4/halaman/profil.dart';
import 'package:slicingui4/halaman/promo.dart';
import 'package:slicingui4/latihan.dart';
// import 'package:slicing_ui3/halaman/homepage.dart';

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
              child: Lottie.asset('assets/shop.json'),
            ),

            Text("",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)
          ],
        ),
        nextScreen: Home(),
        splashIconSize: 200,
        backgroundColor: Colors.white,
        duration: 3000, 
        splashTransition: SplashTransition.fadeTransition,
      ),
    );
  }
}

class navigatorbawah extends StatefulWidget {
  const navigatorbawah({super.key});

  @override
  State<navigatorbawah> createState() => _navigatorbawahState();
}

class _navigatorbawahState extends State<navigatorbawah> {
  int selectedIndex = 0;

  final List<Widget> pages = [Home(), Promo(), Profil()];

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: onItemTapped,
        selectedItemColor: Colors.blueAccent,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: false,
        selectedLabelStyle: TextStyle(),
        unselectedLabelStyle: TextStyle(),
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home,color: Colors.greenAccent,), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.discount, color: Colors.deepOrangeAccent,), label: 'Promo'),
          BottomNavigationBarItem(icon: Icon(Icons.person_4, color: Colors.lime,), label: 'Profile'),
        ],
      ),
    );
  }
}
