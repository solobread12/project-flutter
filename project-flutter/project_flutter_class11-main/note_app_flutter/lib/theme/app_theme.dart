import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static final TextTheme baseText = GoogleFonts.poppinsTextTheme();

  static ThemeData light = ThemeData(
    brightness: Brightness.light,
    colorScheme: ColorScheme.light(
      primary: const Color(0xFF6200EE),
      secondary: const Color(0xFF03DAC5),
      surface: const Color(0xFFFFFFFF),
    ),
    scaffoldBackgroundColor: const Color(0xFFF5F5F5),

    appBarTheme: AppBarTheme(
      backgroundColor: const Color(0xFF1565C0),
      foregroundColor: Colors.white,
      elevation: 0,
    ),

    cardTheme: CardThemeData(
      color: Colors.white,
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    ),

    dialogTheme: DialogThemeData(
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      titleTextStyle: AppTheme.baseText.titleLarge?.copyWith(
        fontSize: 18,
        color: Colors.black87,
        fontWeight: FontWeight.bold,
      ),
      contentTextStyle: AppTheme.baseText.bodyMedium?.copyWith(
        fontSize: 14,
        color: Colors.black54,
      ),
    ),

    textTheme: baseText.copyWith(
      titleLarge: baseText.titleLarge?.copyWith(
        fontSize: 18,
        fontWeight: FontWeight.bold,
        color: Colors.black87,
      ),
      bodyMedium: baseText.bodyMedium?.copyWith(
        fontSize: 14,
        color: Colors.black87,
      ),
      bodySmall: baseText.bodySmall?.copyWith(fontSize: 12, color: Colors.grey),
    ),
  );

  static ThemeData dark = ThemeData(
    brightness: Brightness.dark,
    colorScheme: ColorScheme.dark(
      primary: const Color.fromARGB(255, 23, 18, 169),
      secondary: const Color.fromARGB(255, 16, 22, 99),
      surface: const Color(0xFF121212),
    ),
    scaffoldBackgroundColor: const Color(0xFF121212),

    appBarTheme: AppBarTheme(
      backgroundColor: const Color(0xFF1565C0),
      foregroundColor: Colors.white,
      elevation: 0,
    ),

    cardTheme: CardThemeData(
      color: Colors.black,
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    ),

    dialogTheme: DialogThemeData(
      backgroundColor: Colors.black,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      titleTextStyle: AppTheme.baseText.titleLarge?.copyWith(
        fontSize: 18,
        color: Colors.black87,
        fontWeight: FontWeight.bold,
      ),
      contentTextStyle: AppTheme.baseText.bodyMedium?.copyWith(
        fontSize: 14,
        color: Colors.black54,
      ),
    ),

    textTheme: baseText.copyWith(
      titleLarge: baseText.titleLarge?.copyWith(
        fontSize: 18,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
      bodyMedium: baseText.bodyMedium?.copyWith(
        fontSize: 14,
        color: Colors.white,
      ),
      bodySmall: baseText.bodySmall?.copyWith(fontSize: 12, color: Colors.grey),
    ),
  );
}


