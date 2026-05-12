import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Exam extends StatelessWidget {
  const Exam({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFD6C4),
      body: SingleChildScrollView(
        child: Container(
          // height: 300,
          width: double.infinity,
          padding: EdgeInsets.fromLTRB(20, 20, 0, 20),
          decoration: BoxDecoration(color: Color(0xffFFD6C4)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Flash Sale",
                style: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Colors.red,
                ),
              ),
              SizedBox(height: 15),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  spacing: 10,
                  children: [
                    beras(),
                    beras(),
                    beras(),
                    beras(),
                    beras(),
                    SizedBox(width: 10),
                  ],
                ),
              ),
              SizedBox(height: 15),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  spacing: 10,
                  children: [
                    beras(),
                    beras(),
                    beras(),
                    beras(),
                    beras(),
                    SizedBox(width: 10),
                  ],
                ),
              ),
              SizedBox(height: 15),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  spacing: 10,
                  children: [
                    beras(),
                    beras(),
                    beras(),
                    beras(),
                    beras(),
                    SizedBox(width: 10),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class beras extends StatelessWidget {
  const beras({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 130,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: double.infinity,
            child: Image.asset("assets/padi.png"),
          ),
          Container(
            height: 15,
            margin: EdgeInsets.symmetric(vertical: 10),
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.only(topRight: Radius.circular(25)),
            ),
            child: Center(
              child: Text(
                "beras depok 10 Kg",
                style: GoogleFonts.openSans(fontSize: 8, color: Colors.white),
              ),
            ),
          ),
          Text(
            "beras depok beda dari yang lain",
            style: GoogleFonts.openSans(
              fontSize: 8,
              fontWeight: FontWeight.w400,
            ),
          ),
          Text(
            "karya anak depok",
            style: GoogleFonts.openSans(
              fontSize: 8,
              fontWeight: FontWeight.w400,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Text(
              "Rp. 17.000,-",
              style: GoogleFonts.openSans(
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Text(
            "produk asli",
            style: GoogleFonts.openSans(
              fontSize: 8,
              fontWeight: FontWeight.bold,
              color: Colors.green,
            ),
          ),
          Text(
            "stok terbatas !!!",
            style: GoogleFonts.openSans(
              fontSize: 8,
              fontWeight: FontWeight.bold,
              color: Colors.red,
            ),
          ),
        ],
      ),
    );
  }
}
