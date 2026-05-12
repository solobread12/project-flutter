import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui5/decoration/set.dart';

class Flash extends StatelessWidget {
  const Flash({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 300,
      width: double.infinity,
      padding: EdgeInsets.fromLTRB(20, 20, 0, 20),
      decoration: BoxDecoration(color: ClassName.color3),
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
                sale(),
                marjan(),
                samyang(),
                nugget(),
                sale(),
                sale(),
                SizedBox(width: 10,),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class sale extends StatelessWidget {
  const sale({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 130,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: ClassName.color5,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: double.infinity,
            child: Image.asset("assets/beras.png"),
          ),
          Container(
            height: 15,
            margin: EdgeInsets.symmetric(vertical: 10),
            width: double.infinity,
            decoration: BoxDecoration(
              color: ClassName.color1,
              borderRadius: BorderRadius.only(topRight: Radius.circular(25)),
            ),
            child: Center(
              child: Text(
                "nasi pulen 100 gram",
                style: GoogleFonts.openSans(
                  fontSize: 8,
                  color: ClassName.color5,
                ),
              ),
            ),
          ),
          Text(
            "nasi pulen enak di makan",
            style: GoogleFonts.openSans(
              fontSize: 8,
              fontWeight: FontWeight.w400,
            ),
          ),
          Text(
            "karya anak bangsa",
            style: GoogleFonts.openSans(
              fontSize: 8,
              fontWeight: FontWeight.w400,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Text(
              "Rp. 20.000,-",
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
        ],
      ),
    );
  }
}

class marjan extends StatelessWidget {
  const marjan({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 130,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: ClassName.color5,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: double.infinity,
            child: Image.asset("assets/marjan.png"),
          ),
          Container(
            height: 15,
            margin: EdgeInsets.symmetric(vertical: 10),
            width: double.infinity,
            decoration: BoxDecoration(
              color: ClassName.color1,
              borderRadius: BorderRadius.only(topRight: Radius.circular(25)),
            ),
            child: Center(
              child: Text(
                "marjan cocopandan",
                style: GoogleFonts.openSans(
                  fontSize: 8,
                  color: ClassName.color5,
                ),
              ),
            ),
          ),
          Text(
            "nyaman di minum",
            style: GoogleFonts.openSans(
              fontSize: 8,
              fontWeight: FontWeight.w400,
            ),
          ),
          Text(
            "karya anak marjan",
            style: GoogleFonts.openSans(
              fontSize: 8,
              fontWeight: FontWeight.w400,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Text(
              "Rp. 27.000,-",
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
        ],
      ),
    );
  }
}


class samyang extends StatelessWidget {
  const samyang({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 130,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: ClassName.color5,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: double.infinity,
            child: Image.asset("assets/samyang.png"),
          ),
          Container(
            height: 15,
            margin: EdgeInsets.symmetric(vertical: 10),
            width: double.infinity,
            decoration: BoxDecoration(
              color: ClassName.color1,
              borderRadius: BorderRadius.only(topRight: Radius.circular(25)),
            ),
            child: Center(
              child: Text(
                "samyang hot",
                style: GoogleFonts.openSans(
                  fontSize: 8,
                  color: ClassName.color5,
                ),
              ),
            ),
          ),
          Text(
            "mie samyang mie dengan kepedasan terdahsyat",
            style: GoogleFonts.openSans(
              fontSize: 8,
              fontWeight: FontWeight.w400,
            ),
          ),
          Text(
            "karya anak samyang",
            style: GoogleFonts.openSans(
              fontSize: 8,
              fontWeight: FontWeight.w400,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Text(
              "Rp. 18.000,-",
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
        ],
      ),
    );
  }
}

class nugget extends StatelessWidget {
  const nugget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 130,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: ClassName.color5,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: double.infinity,
            child: Image.asset("assets/nugget.png"),
          ),
          Container(
            height: 15,
            margin: EdgeInsets.symmetric(vertical: 10),
            width: double.infinity,
            decoration: BoxDecoration(
              color: ClassName.color1,
              borderRadius: BorderRadius.only(topRight: Radius.circular(25)),
            ),
            child: Center(
              child: Text(
                "nugget kanzler",
                style: GoogleFonts.openSans(
                  fontSize: 8,
                  color: ClassName.color5,
                ),
              ),
            ),
          ),
          Text(
            "nungget enak brand premium",
            style: GoogleFonts.openSans(
              fontSize: 8,
              fontWeight: FontWeight.w400,
            ),
          ),
          Text(
            "karya anak nugget",
            style: GoogleFonts.openSans(
              fontSize: 8,
              fontWeight: FontWeight.w400,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Text(
              "Rp. 30.000,-",
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
        ],
      ),
    );
  }
}
