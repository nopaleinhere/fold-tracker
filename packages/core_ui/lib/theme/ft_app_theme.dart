import 'package:core_ui/theme/ft_colors.dart';
import 'package:core_ui/theme/ft_radius.dart';
import 'package:core_ui/theme/ft_typography.dart';
import 'package:flutter/material.dart';

class FtAppTheme {
  FtAppTheme._();

  static ThemeData light = ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: FtColors.background,
    primaryColor: FtColors.primary,
    textTheme: FtTypography.textTheme,
    colorScheme: ColorScheme.fromSeed(
      seedColor: FtColors.primary,
      primary: FtColors.primary,
      secondary: FtColors.secondary,
    ),

    cardTheme: CardThemeData(
      color: FtColors.card,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(FtRadius.lg),
      ),
    ),

    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: Colors.white,
      selectedItemColor: FtColors.primary,
      unselectedItemColor: Colors.grey,
      showUnselectedLabels: true,
      selectedLabelStyle: TextStyle(fontSize: 10),
      unselectedLabelStyle: TextStyle(fontSize: 10),
      elevation: 12,
    ),

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: FtColors.primary,
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(FtRadius.md),
        ),
      ),
    ),
  );
}
