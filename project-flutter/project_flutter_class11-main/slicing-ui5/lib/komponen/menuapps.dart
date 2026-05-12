import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui5/decoration/set.dart';

class Menuapps extends StatelessWidget {
  const Menuapps({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            "Lihat Semua Promo",
            style: GoogleFonts.openSans(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: Colors.blue[900],
            ),
          ),
          SizedBox(height: 20,),
          // menu apps
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              menu(iconapps: "assets/gadgets.png", labels: "produk online"),
              menu(iconapps: "assets/calculator.png", labels: "Kalkulator Zat"),
              menu(iconapps: "assets/bill.png", labels: "Tagihan"),
              menu(iconapps: "assets/gift-card.png", labels: "Gift Card"),
              menu(iconapps: "assets/bonus.png", labels: "Bonus Point")
            ],
          ),
          SizedBox(height: 10,),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              menu(iconapps: "assets/gadgets.png", labels: "produk online"),
              menu(iconapps: "assets/calculator.png", labels: "Kalkulator Zat"),
              menu(iconapps: "assets/bill.png", labels: "Tagihan"),
              menu(iconapps: "assets/gift-card.png", labels: "Gift Card"),
              menu(iconapps: "assets/bonus.png", labels: "Bonus Point")
            ],
          ),
        ],
      ),
    );
  }
}

class menu extends StatelessWidget {
  final String iconapps;
  final String labels;
  const menu({super.key, required this.iconapps, required this.labels});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 46,
          width: 46,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: ClassName.color4,
            image: DecorationImage(image: AssetImage(iconapps))
          ),
          // child: Icon(Icons.home_filled),
        ),
        SizedBox(height: 5),
        Text(labels, style: GoogleFonts.openSans(fontSize: 8)),
      ],
    );
  }
}
