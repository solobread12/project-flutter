import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Task extends StatelessWidget {
  const Task({super.key});

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
        children: [
          SizedBox(width: double.infinity, child: Image.asset("")),
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
                "nasi impor 15 KG",
                style: GoogleFonts.openSans(fontSize: 8, color: Colors.white),
              ),
            ),
          ),
          Text("nasi yang sehat dan bergizi",
          style: GoogleFonts.openSans(fontSize: 8,
          color: Colors.white),)
        ],
      ),
    );
  }
}
