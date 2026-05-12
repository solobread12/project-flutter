import 'package:flutter/material.dart';
import 'package:slicing_ui1/komponen/bannerinfo.dart';
import 'package:slicing_ui1/komponen/komponen_ui1.dart';
import 'package:slicing_ui1/komponen/menu.dart';
import 'package:slicing_ui1/komponen/saldoapp.dart';

class Page01 extends StatelessWidget {
  const Page01({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 330,
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: AlignmentDirectional.topCenter,
                  end: AlignmentDirectional.bottomCenter,
                  colors: [Colors.tealAccent, Colors.white],
                ),
              ),
              child: Column(
                children: [
                   SizedBox(height: 25),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      spacing: 15,
                      children: [
                    
                        Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                hintText: 'Mau makan apa hari ini?',
                              ),
                            ),
                          
                        ),
                        const SizedBox(width: 5),
                        const CircleAvatar(),
                      ],
                    ),
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    spacing: 30,
                    children: [
                       Text(
                        "Menu favorit anda",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 150,
                        width: 200,
                        child: Image.asset('assets/fast food.png'),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    spacing: 20,
                    children:  [
                      KomponenUi1(
                        logo: 'assets/burger.png',
                        text: 'Promo trus',
                      ),
                      KomponenUi1(
                        logo: 'assets/store.png',
                        text: 'Restoran',
                      ),
                      KomponenUi1(
                        logo: 'assets/orange-juice.png',
                        text: 'Minuman',
                      ),
                      KomponenUi1(
                        logo: 'assets/vegetables.png',
                        text: 'Buah & Sayur',
                      ),
                    ],
                  ),
                ],
              ),
            ),
             Saldoapp1(),
             SizedBox(height: 20),
            Container(
              padding:  EdgeInsets.symmetric(vertical: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children:  [
                      Menu1(),
                      Menu1(),
                      Menu1(),
                      Menu1(),
                    ],
                  ),
                   SizedBox(height: 20),
                
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children:  [
                      Menu1(),
                      Menu1(),
                      Menu1(),
                      Menu1(),
                    ],
                  ),
                ],
              ),
            ),
             SizedBox(height: 30),
             Padding(
              padding: EdgeInsets.only(left: 50),
              child: Text(
                "promo hari ini",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 170,
              width: double.infinity,
              child: PageView(
                children: [
                  Bannerinfo(banner: "assets/war.png"),
                  Bannerinfo(banner: "assets/keik.png"),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              onPressed: () {},
              icon: SizedBox(
                height: 25,
                child: Image.asset("assets/home.png"),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: SizedBox(
                height: 25,
                child: Image.asset("assets/promo.png"),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: SizedBox(
                height: 25,
                child: Image.asset("assets/chat.png"),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: SizedBox(
                height: 25,
                child: Image.asset("assets/shopping-bag.png"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
