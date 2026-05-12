import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui5/decoration/set.dart';

class Card1 extends StatelessWidget {
  const Card1({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            //ini yang pertama
            part2(
              text: "3.869",
              icons: "assets/dollar.png",
              warna: Colors.blueAccent,
              labels: "Tukar Point",
            ),
            // ini yang kedua
            Spacer(),
            SizedBox(height: 20, child: VerticalDivider()),
            part2(
              text: "9",
              icons: "assets/voucher.png",
              warna: Colors.black,
              labels: "Voucher",
            ),
            SizedBox(width: 15),
            //ini yang ketiga
            SizedBox(height: 20, child: VerticalDivider()),
            part2(
              text: "2",
              icons: "assets/stamp.png",
              warna: Colors.black,
              labels: "Stamp",
            ),
            SizedBox(width: 15),
            //ini yang ke empat
            SizedBox(height: 20, child: VerticalDivider()),
            part2(
              text: "0",
              icons: "assets/star.png",
              warna: Colors.black,
              labels: "Star",
            ),
            SizedBox(width: 15),
          ],
        ),
        Divider(),
        Row(
          spacing: 5,
          children: [
            Image.asset("assets/virgo.png", height: 15),
            Text(
              "Hubungkan Virgo",
              style: GoogleFonts.openSans(
                fontSize: 12,
                color: ClassName.color2,
              ),
            ),
            Icon(Icons.arrow_forward_ios_rounded, size: 12),
            Spacer(),
            Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey, width: 0.5),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Row(
                spacing: 5,
                children: [
                  Image.asset("assets/barcode.png", height: 15),
                  Text(
                    "Barcode Member",
                    style: GoogleFonts.openSans(
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                      color: Colors.blue[900],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class part2 extends StatelessWidget {
  final String text;
  final String icons;
  final String labels;
  final Color warna;
  const part2({
    super.key,
    required this.text,
    required this.icons,
    required this.warna,
    required this.labels,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Image.asset(icons, height: 13),
            SizedBox(width: 5),
            Text(
              text,
              style: GoogleFonts.poppins(
                fontSize: 12,
                color: Colors.black,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
        SizedBox(height: 3),
        Text(labels, style: GoogleFonts.openSans(fontSize: 8, color: warna)),
      ],
    );
  }
}
