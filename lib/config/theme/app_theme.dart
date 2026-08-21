import 'package:flutter/material.dart';
import 'color_schemes.dart';
import 'text_styles.dart';

class AppTheme {
  static ThemeData lightTheme() {
    return ThemeData(
      useMaterial3: true,
      colorScheme: AppColorSchemes.lightColorScheme,
      textTheme: AppTextStyles.lightTextTheme,
      scaffoldBackgroundColor: AppColorSchemes.lightColorScheme.background,
      appBarTheme: AppBarTheme(
        elevation: 0,
        backgroundColor: AppColorSchemes.lightColorScheme.surface,
        foregroundColor: AppColorSchemes.lightColorScheme.onSurface,
        centerTitle: false,
      ),
      cardTheme: CardTheme(
        color: AppColorSchemes.lightColorScheme.surface,
        elevation: 1,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      ),
      iconButtonTheme: IconButtonThemeData(
        style: IconButton.styleFrom(
          backgroundColor: Colors.transparent,
          foregroundColor: AppColorSchemes.lightColorScheme.primary,
        ),
      ),
      filledButtonTheme: FilledButtonThemeData(
        style: FilledButton.styleFrom(
          backgroundColor: AppColorSchemes.lightColorScheme.primary,
          foregroundColor: AppColorSchemes.lightColorScheme.onPrimary,
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: AppColorSchemes.lightColorScheme.primary,
          side: BorderSide(color: AppColorSchemes.lightColorScheme.primary),
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: AppColorSchemes.lightColorScheme.primaryContainer,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none,
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      ),
    );
  }

  static ThemeData darkTheme() {
    return ThemeData(
      useMaterial3: true,
      colorScheme: AppColorSchemes.darkColorScheme,
      textTheme: AppTextStyles.darkTextTheme,
      scaffoldBackgroundColor: AppColorSchemes.darkColorScheme.background,
      appBarTheme: AppBarTheme(
        elevation: 0,
        backgroundColor: AppColorSchemes.darkColorScheme.surface,
        foregroundColor: AppColorSchemes.darkColorScheme.onSurface,
        centerTitle: false,
      ),
      cardTheme: CardTheme(
        color: AppColorSchemes.darkColorScheme.surface,
        elevation: 1,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      ),
      filledButtonTheme: FilledButtonThemeData(
        style: FilledButton.styleFrom(
          backgroundColor: AppColorSchemes.darkColorScheme.primary,
          foregroundColor: AppColorSchemes.darkColorScheme.onPrimary,
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: AppColorSchemes.darkColorScheme.primary,
          side: BorderSide(color: AppColorSchemes.darkColorScheme.primary),
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: AppColorSchemes.darkColorScheme.primaryContainer,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none,
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      ),
    );
  }

  static ThemeData amoledTheme() {
    return ThemeData(
      useMaterial3: true,
      colorScheme: AppColorSchemes.amoledColorScheme,
      textTheme: AppTextStyles.darkTextTheme,
      scaffoldBackgroundColor: AppColorSchemes.amoledColorScheme.background,
      appBarTheme: AppBarTheme(
        elevation: 0,
        backgroundColor: AppColorSchemes.amoledColorScheme.surface,
        foregroundColor: AppColorSchemes.amoledColorScheme.onSurface,
        centerTitle: false,
      ),
      cardTheme: CardTheme(
        color: AppColorSchemes.amoledColorScheme.surface,
        elevation: 1,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      ),
    );
  }
}
