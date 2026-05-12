import 'package:flutter/material.dart';

class Menu1 extends StatelessWidget {
  const Menu1({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 60,
      width: 60,      
      decoration: BoxDecoration(
        color: Colors.tealAccent,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
