import 'package:flutter/material.dart';

class Iklan extends StatelessWidget {
  const Iklan({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> banner = [
      "assets/banner-15.png",
      "assets/banner-16.png",
      "assets/banner-17.png",
    ];
    return SizedBox(
      height: 160,
      child: PageView.builder(
        itemCount: banner.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 3),
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withAlpha(180),
                    blurRadius: 3,
                    offset: Offset(1, 2),
                  ),
                ],
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                  image: AssetImage(banner[index]),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          );
        },
      ),
      // child: PageView(
      //   children: [
      //     Container(
      //       margin: EdgeInsets.symmetric(horizontal: 15),
      //       height: double.infinity,
      //       width: double.infinity,
      //       decoration: BoxDecoration(
      //         borderRadius: BorderRadius.circular(15),
      //         image: DecorationImage(
      //           image: AssetImage("assets/banner-15.png"),
      //           fit: BoxFit.cover,
      //         ),
      //       ),
      //     ),
      //     Container(
      //       margin: EdgeInsets.symmetric(horizontal: 15),
      //       height: double.infinity,
      //       width: double.infinity,
      //       decoration: BoxDecoration(
      //         borderRadius: BorderRadius.circular(15),
      //         image: DecorationImage(
      //           image: AssetImage("assets/banner-16.png"),
      //           fit: BoxFit.cover,
      //         ),
      //       ),
      //     ),
      //     Container(
      //       margin: EdgeInsets.symmetric(horizontal: 25),
      //       height: double.infinity,
      //       width: double.infinity,
      //       decoration: BoxDecoration(
      //         borderRadius: BorderRadius.circular(15),
      //         image: DecorationImage(
      //           image: AssetImage("assets/banner-17.png"),
      //           fit: BoxFit.cover,
      //         ),
      //       ),
      //     ),
      //   ],
      // ),
    );
  }
}
