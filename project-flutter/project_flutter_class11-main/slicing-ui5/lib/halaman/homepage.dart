import 'package:flutter/material.dart';
import 'package:ui5/decoration/set.dart';
import 'package:ui5/halaman/food.dart';
import 'package:ui5/halaman/user.dart';
import 'package:ui5/komponen/appbar.dart';
import 'package:ui5/komponen/flash.dart';
import 'package:ui5/komponen/iklan.dart';
import 'package:ui5/komponen/menuapps.dart';
import 'package:ui5/main.dart';
// import 'package:ui5/komponen/cari.dart';

class Homepage2 extends StatefulWidget {
  const Homepage2({super.key});

  @override
  State<Homepage2> createState() => _homepage2State();
}

class _homepage2State extends State<Homepage2> {
  int selectedIndex = 0;

  final List<Widget> pages = [Homepage2(), Food(), User()];

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    pages[selectedIndex];
    return Scaffold(
      
      backgroundColor: ClassName.color5,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // appbar menu //
              Appbar(),
              SizedBox(height: 140),
              Iklan(),
              SizedBox(height: 15),
              Menuapps(),
              SizedBox(height: 10),
              Flash(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: onItemTapped,
        selectedItemColor: Colors.blueAccent,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: false,
        selectedLabelStyle: TextStyle(),
        unselectedLabelStyle: TextStyle(),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Color(0xffCF0B0C)),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.food_bank, color: Color(0xff118E7E)),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_4, color: Color(0xffFFD6C4)),
            label: '',
          ),
        ],
      ),
    );
  }
}



//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: pages[selectedIndex],
//       bottomNavigationBar: BottomNavigationBar(
//         currentIndex: selectedIndex,
//         onTap: onItemTapped,
//         selectedItemColor: Colors.blueAccent,
//         unselectedItemColor: Colors.grey,
//         showUnselectedLabels: false,
//         selectedLabelStyle: TextStyle(),
//         unselectedLabelStyle: TextStyle(),
//         items: [
//           BottomNavigationBarItem(icon: Icon(Icons.home,color: Color(0xffCF0B0C),), label: ''),
//           BottomNavigationBarItem(icon: Icon(Icons.food_bank, color: Color(0xff118E7E)), label: ''),
//           BottomNavigationBarItem(icon: Icon(Icons.person_4, color: Color(0xffFFD6C4),), label: ''),
//         ],
//       ),
//     );
//   }
// }

