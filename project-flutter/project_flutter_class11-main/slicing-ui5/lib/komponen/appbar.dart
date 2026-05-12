import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui5/decoration/set.dart';
import 'package:ui5/komponen/card1.dart';
import 'package:ui5/komponen/cari.dart';

class Appbar extends StatelessWidget {
  const Appbar({super.key});

  @override
  Widget build(BuildContext context) {
    final double tinggi = MediaQuery.of(context).size.height;
    final double lebar = MediaQuery.of(context).size.height;

    // return Padding(
    //   padding: EdgeInsets.all(15),
    //   child: Row(
    //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //     children: [
    //       CircleAvatar(backgroundColor: Colors.amberAccent),
    //       Container(
    //         padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
    //         // width: 250,
    //         // height: 250,
    //         decoration: BoxDecoration(
    //           color: Colors.grey.withOpacity(0.2),
    //           borderRadius: BorderRadius.circular(15),
    //         ),
    //         child: Row(
    //           mainAxisAlignment: MainAxisAlignment.center,
    //           spacing: 10,
    //           children: [
    //             Icon(Icons.warning_rounded, color: Colors.grey),
    //             Text(
    //               "waspada judi online!",
    //               style: TextStyle(color: Colors.grey),
    //             ),
    //           ],
    //         ),
    //       ),
    //       CircleAvatar(
    //         child: Icon(Icons.help),
    //         backgroundColor: Colors.grey.withOpacity(0.5),
    //       ),
    //     ],
    //   ),
    // );
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          width: lebar,
          height: tinggi * 0.3,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [ClassName.color1, ClassName.color5],
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Alamat Kirim", style: ClassName.style6),
                Row(
                  children: [
                    Text("Pondok", style: ClassName.style1),
                    SizedBox(width: 5),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 3, horizontal: 5),
                      height: 15,
                      width: 40,
                      decoration: BoxDecoration(
                        color: ClassName.color5,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text(
                          "Utama",
                          style: GoogleFonts.openSans(
                            fontSize: 8,
                            color: ClassName.color1,
                          ),
                        ),
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.arrow_drop_down),
                    ),
                    Spacer(),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.chat_bubble, color: ClassName.color5),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.notifications, color: ClassName.color5),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.shopping_bag, color: ClassName.color5),
                    ),
                  ],
                ),
                Text(
                  "Perumahan Eco Village, Serpong Mekar Sa...",
                  style: ClassName.style5,
                ),
                SizedBox(height: 15),
                // menu pencarian
                Cari(),
              ],
            ),
          ),
        ),
        Positioned(
          top: 160,
          left: 20,
          right: 20,
          child: Container(
            width: double.infinity,

            // height: 150,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: AlignmentGeometry.topCenter,
                end: AlignmentGeometry.bottomCenter,
                colors: [ClassName.color2, ClassName.color5],
              ),
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: ClassName.color5),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 3,
                  offset: Offset(1, 2),
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                children: [
                  Padding(padding: EdgeInsets.fromLTRB(13, 10, 13, 5)),
                  Row(
                    // mainAxisAlignment:
                    //     MainAxisAlignment.spaceBetween, // opsional
                    children: [
                      Text("hai, ibrahim", style: ClassName.style2),
                      Spacer(),
                      Text("newbie", style: ClassName.style2),
                    ],
                  ),
                  SizedBox(height: 10),
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.white60,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(padding: EdgeInsets.all(10), child: Card1()),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
