import 'package:flutter/material.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
// import 'package:lucide_icons_flutter/test_icons.dart';
import 'package:slicing_ui3/komponen/banner.dart';
import 'package:slicing_ui3/komponen/kartukai.dart';
import 'package:slicing_ui3/komponen/menuireng.dart';
import 'package:slicing_ui3/komponen/menutop.dart';
import 'package:slicing_ui3/komponen/mntrain.dart';
import 'package:slicing_ui3/komponen/trip.dart';

class Homepage1 extends StatelessWidget {
  const Homepage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: 200,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    image: DecorationImage(
                      image: AssetImage("assets/new.jpg"),
                      fit: BoxFit.cover,
                      opacity: 0.8,
                    ),
                  ),
                  child: Padding(padding: EdgeInsets.all(10), child: Menutop()),
                ),
                Kartukai(),
              ],
            ),
            SizedBox(height: 100),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  spacing: 10,
                  children: [
                    Mntrain(
                      icon: Icon(LucideIcons.trainFront, size: 35,color: Colors.white,),
                      text: "antar kota",
                      warna: Colors.blue,
                    ),
                    Mntrain(
                      icon: Icon(LucideIcons.trainFrontTunnel, size: 35,color: Colors.white,),
                      text: "lokal",
                      warna: Colors.amberAccent,
                    ),
                    Mntrain(
                      icon: Icon(LucideIcons.zap, size: 35,color: Colors.white,),
                      text: "cepat",
                      warna: Colors.purple,
                    ),
                    Mntrain(
                      icon: Icon(LucideIcons.package, size: 35,color: Colors.white,),
                      text: "MRT",
                      warna: Colors.teal,
                    ),
                    Mntrain(
                      icon: Icon(Icons.train_outlined, size: 35,color: Colors.white,),
                      text: "LRT",
                      warna: Colors.deepOrangeAccent,
                    ),
                    Mntrain(
                      icon: Icon(LucideIcons.plane, size: 35,color: Colors.white,),
                      text: "bandara",
                      warna: Colors.indigo,
                    ),
                    Mntrain(
                      icon: Icon(Icons.train_outlined, size: 35,color: Colors.white,),
                      text: "free",
                      warna: Colors.lime,
                    ),
                    Mntrain(
                      icon: Icon(Icons.train_outlined, size: 35,color: Colors.white,),
                      text: "lokal",
                      warna: Colors.pink,
                    ),
                    Mntrain(
                      icon: Icon(Icons.train_outlined, size: 35,color: Colors.white,),
                      text: "lokal",
                      warna: Colors.cyan,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 30),
            Menuireng(),
            Trip(),
            Padding(
              padding: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Promo Terbaru",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Container(
                    padding: EdgeInsets.all(10    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(width: 1.5, color: Colors.blue),
                    ),
                    child: Text("Lihat semua", style: TextStyle(color: Colors.blue)),
                  ),
                ],
              ),
            ),
            Banner1(),
          ],
        ),
      ),
    bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        selectedFontSize: 12,
        unselectedFontSize: 12,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            activeIcon: Icon(Icons.home),
            label: 'Beranda',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.train_outlined),
            activeIcon: Icon(Icons.train),
            label: 'Kereta',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.confirmation_number_outlined),
            activeIcon: Icon(Icons.confirmation_number),
            label: 'Tiket Saya',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.percent_outlined),
            activeIcon: Icon(Icons.percent),
            label: 'Promo',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            activeIcon: Icon(Icons.person),
            label: 'Akun',
          ),
        ],
      ),
    );
  }
}
