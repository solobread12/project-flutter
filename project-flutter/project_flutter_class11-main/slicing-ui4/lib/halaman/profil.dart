import 'package:flutter/material.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';


class Profil extends StatelessWidget {
  const Profil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "My Profile",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),

            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 70,
                  height: 70,
                  
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage('')),
                    color: Colors.grey.shade300,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(LucideIcons.user, size: 40, color: Colors.grey),
                ),
                SizedBox(width: 15),

                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Abdillah bin Arrafif",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      Text(
                        "arrafif0722@student.abudzar.sch.id",
                        style: TextStyle(fontSize: 14, color: Colors.black87),
                      ),

                      Text(
                        "+625738259137",
                        style: TextStyle(fontSize: 14, color: Colors.black87),
                      ),

                      SizedBox(height: 8),

                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 6,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.yellow.shade600,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(LucideIcons.star, size: 16),
                            SizedBox(width: 5),
                            Text(
                              "premium",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                Icon(Icons.edit, size: 22),
              ],
            ),

            SizedBox(height: 30),

            Text(
              "Account",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),

            SizedBox(height: 10),

            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(LucideIcons.listTodo, size: 26),
                        SizedBox(width: 12),
                        Text(
                          "My Orders",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    Icon(LucideIcons.chevronRight, size: 18),
                  ],
                ),
                Divider(height: 20, thickness: 1),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(LucideIcons.scrollText, size: 26),
                        SizedBox(width: 12),
                        Text(
                          "My Subscription",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    Icon(LucideIcons.chevronRight, size: 18),
                  ],
                ),
                Divider(height: 20, thickness: 1),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(LucideIcons.percent, size: 26),
                        SizedBox(width: 12),
                        Text(
                          "Promo",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    Icon(LucideIcons.chevronRight, size: 18),
                  ],
                ),
                Divider(height: 20, thickness: 1),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(LucideIcons.handCoins, size: 26),
                        SizedBox(width: 12),
                        Text(
                          "Payment",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    Icon(LucideIcons.chevronRight, size: 18),
                  ],
                ),
                Divider(height: 20, thickness: 1),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(LucideIcons.badgeQuestionMark, size: 26),
                        SizedBox(width: 12),
                        Text(
                          "Help",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    Icon(LucideIcons.chevronRight, size: 18),
                  ],
                ),
                Divider(height: 20, thickness: 1),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(LucideIcons.languages, size: 26),
                        SizedBox(width: 12),
                        Text(
                          "Language",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    Icon(LucideIcons.chevronRight, size: 18),
                  ],
                ),
                Divider(height: 20, thickness: 1),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(LucideIcons.logOut, size: 26),
                        SizedBox(width: 12),
                        Text(
                          "Log Out",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    Icon(LucideIcons.chevronRight, size: 18),
                  ],
                ),
                Divider(height: 20, thickness: 1),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
