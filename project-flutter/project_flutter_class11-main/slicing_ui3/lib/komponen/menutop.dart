import 'package:flutter/material.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

class Menutop extends StatelessWidget {
  const Menutop({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:  [
              Text(
                "Selamat Pagi",
                style: TextStyle(color: Colors.white, fontSize: 14),
              ),
            
              Text(
                "Abdilllah Arrafif",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ],
          ),

          Row(
            spacing: 8,
            children: [
              _TopButton(icon: LucideIcons.shoppingCart),
              _TopButton(icon: LucideIcons.mail),
              _LanguageButton(),
            ],
          ),
        ],
      ),
    );
  }
}


class _TopButton extends StatelessWidget {
  final IconData icon;
   _TopButton({required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 38,
      width: 38,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.25),
        shape: BoxShape.circle,
        border: Border.all(color: Colors.white.withOpacity(0.5), width: 1),
      ),
      child: Icon(icon, color: Colors.white, size: 20),
    );
  }
}


class _LanguageButton extends StatelessWidget {
   _LanguageButton();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:  EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.25),
        borderRadius: BorderRadius.circular(30),
        border: Border.all(color: Colors.white.withOpacity(0.5), width: 1),
      ),
      child: Row(
        spacing: 6,
        children: [
          Image.asset(
            'assets/bahasa.png', 
            height: 16,
            width: 24,
            fit: BoxFit.cover,
          ),
           Icon(Icons.keyboard_arrow_down_rounded,
              color: Colors.white, size: 18),
        ],
      ),
    );
  }
}
