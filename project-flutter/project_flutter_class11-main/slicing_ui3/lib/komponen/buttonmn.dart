import 'package:flutter/material.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

class Buttonmn extends StatelessWidget {
  const Buttonmn({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white.withOpacity(0.4),
            ),
            child: IconButton(onPressed: () {}, icon: Icon(LucideIcons.hamburger)),
          );
  }
}