import 'package:flutter/material.dart';
import 'package:slicing_ui1/komponen/komponen_iu2.dart';

class Saldoapp1 extends StatelessWidget {
  const Saldoapp1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 40),
      height: 90,
      width: double.infinity,
      decoration: BoxDecoration(color: Colors.white,
      border: Border.all(color: Colors.grey, width: 1),
      borderRadius: BorderRadius.circular(10),
      boxShadow: [
        BoxShadow(color: Colors.grey, blurRadius: 5, offset: Offset(1, 2)),
      ],
      ),
      child: 
            Padding(
            padding: EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: 50,
                  child: Image.asset('assets/wallet.png'),
                ),
                Column(mainAxisAlignment: MainAxisAlignment.center,
                children: [Text("Rp .550.000"), Text("1000 coin")],),
                SizedBox(width: 50),
                KomponenIu2(logo: 'assets/arrow.png', text: 'bayar'),
                KomponenIu2(logo: 'assets/plus.png', text: 'top up'),
                KomponenIu2(logo: 'assets/more.png', text: 'lainnya'),
                

              ],
            ),
          ),
        
      
    );
  }
}
