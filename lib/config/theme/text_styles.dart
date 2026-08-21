import 'package:flutter/material.dart';

class AppTextStyles {
  static const String _fontFamily = 'Poppins';

  static const TextTheme lightTextTheme = TextTheme(
    displayLarge: TextStyle(
      fontFamily: _fontFamily,
      fontSize: 28,
      fontWeight: FontWeight.bold,
      color: Color(0xFF1F1F1F),
    ),
    displayMedium: TextStyle(
      fontFamily: _fontFamily,
      fontSize: 24,
      fontWeight: FontWeight.bold,
      color: Color(0xFF1F1F1F),
    ),
    displaySmall: TextStyle(
      fontFamily: _fontFamily,
      fontSize: 20,
      fontWeight: FontWeight.bold,
      color: Color(0xFF1F1F1F),
    ),
    headlineMedium: TextStyle(
      fontFamily: _fontFamily,
      fontSize: 18,
      fontWeight: FontWeight.w600,
      color: Color(0xFF1F1F1F),
    ),
    headlineSmall: TextStyle(
      fontFamily: _fontFamily,
      fontSize: 16,
      fontWeight: FontWeight.w600,
      color: Color(0xFF1F1F1F),
    ),
    titleLarge: TextStyle(
      fontFamily: _fontFamily,
      fontSize: 14,
      fontWeight: FontWeight.w600,
      color: Color(0xFF1F1F1F),
    ),
    bodyLarge: TextStyle(
      fontFamily: _fontFamily,
      fontSize: 14,
      fontWeight: FontWeight.normal,
      color: Color(0xFF1F1F1F),
    ),
    bodyMedium: TextStyle(
      fontFamily: _fontFamily,
      fontSize: 12,
      fontWeight: FontWeight.normal,
      color: Color(0xFF64748B),
    ),
    bodySmall: TextStyle(
      fontFamily: _fontFamily,
      fontSize: 10,
      fontWeight: FontWeight.normal,
      color: Color(0xFF94A3B8),
    ),
    labelLarge: TextStyle(
      fontFamily: _fontFamily,
      fontSize: 12,
      fontWeight: FontWeight.w600,
      color: Color(0xFF2563EB),
    ),
  );

  static const TextTheme darkTextTheme = TextTheme(
    displayLarge: TextStyle(
      fontFamily: _fontFamily,
      fontSize: 28,
      fontWeight: FontWeight.bold,
      color: Color(0xFFF8FAFC),
    ),
    displayMedium: TextStyle(
      fontFamily: _fontFamily,
      fontSize: 24,
      fontWeight: FontWeight.bold,
      color: Color(0xFFF8FAFC),
    ),
    displaySmall: TextStyle(
      fontFamily: _fontFamily,
      fontSize: 20,
      fontWeight: FontWeight.bold,
      color: Color(0xFFF8FAFC),
    ),
    headlineMedium: TextStyle(
      fontFamily: _fontFamily,
      fontSize: 18,
      fontWeight: FontWeight.w600,
      color: Color(0xFFF8FAFC),
    ),
    headlineSmall: TextStyle(
      fontFamily: _fontFamily,
      fontSize: 16,
      fontWeight: FontWeight.w600,
      color: Color(0xFFF8FAFC),
    ),
    titleLarge: TextStyle(
      fontFamily: _fontFamily,
      fontSize: 14,
      fontWeight: FontWeight.w600,
      color: Color(0xFFF8FAFC),
    ),
    bodyLarge: TextStyle(
      fontFamily: _fontFamily,
      fontSize: 14,
      fontWeight: FontWeight.normal,
      color: Color(0xFFF8FAFC),
    ),
    bodyMedium: TextStyle(
      fontFamily: _fontFamily,
      fontSize: 12,
      fontWeight: FontWeight.normal,
      color: Color(0xFF94A3B8),
    ),
    bodySmall: TextStyle(
      fontFamily: _fontFamily,
      fontSize: 10,
      fontWeight: FontWeight.normal,
      color: Color(0xFF64748B),
    ),
    labelLarge: TextStyle(
      fontFamily: _fontFamily,
      fontSize: 12,
      fontWeight: FontWeight.w600,
      color: Color(0xFFB3E5FC),
    ),
  );
}
