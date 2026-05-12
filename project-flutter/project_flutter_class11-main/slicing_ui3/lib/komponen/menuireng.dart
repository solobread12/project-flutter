import 'package:flutter/material.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:slicing_ui3/komponen/mntrain.dart';

class Menuireng extends StatelessWidget {
  const Menuireng({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Mntrain(
            icon: Icon(LucideIcons.hotel,size: 35,color: Colors.blue,),
            text: "hotel",
            warna: Colors.white,
          ),
          Mntrain(
            icon: Icon(LucideIcons.creditCard,size: 35,color: Colors.blue),
            text: "kartu",
            warna: Colors.white,
          ),
          Mntrain(
            icon: Icon(LucideIcons.gift,size: 35,color: Colors.blue),
            text: "logistik",
            warna: Colors.white,
          ),
          Mntrain(
            icon: Icon(LucideIcons.circleEllipsis,size: 35,color: Colors.blue),
            text: "lainnya",
            warna: Colors.white,
          ),
        ],
      ),
    );
  }
}
