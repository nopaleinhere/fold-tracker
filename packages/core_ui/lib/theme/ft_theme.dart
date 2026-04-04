import "package:flutter/material.dart";

class FtTheme {
  final TextTheme textTheme;

  FtTheme(this.textTheme);

  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xFF2C3930),
      onPrimary: Color(0xFFFFFFFF),
      primaryContainer: Color(0xFF556B5D),
      onPrimaryContainer: Color(0xFFDCD7C9),
      secondary: Color(0xFF3F4F44),
      onSecondary: Color(0xFFFFFFFF),
      secondaryContainer: Color(0xFF6B7D72),
      onSecondaryContainer: Color(0xFFDCD7C9),
      tertiary: Color(0xFFA27B5C),
      onTertiary: Color(0xFFFFFFFF),
      tertiaryContainer: Color(0xFFD2A98A),
      onTertiaryContainer: Color(0xFF3E2723),
      error: Color(0xFFBA1A1A),
      onError: Color(0xFFFFFFFF),
      errorContainer: Color(0xFFFFDAD6),
      onErrorContainer: Color(0xFF93000A),
      surface: Color(0xFFDCD7C9),
      onSurface: Color(0xFF1D1C13),
      surfaceContainerLowest: Color(0xFFFFFFFF),
      surfaceContainerLow: Color(0xFFF5F1E6),
      surfaceContainer: Color(0xFFEAE5D8),
      surfaceContainerHigh: Color(0xFFE0DACD),
      surfaceContainerHighest: Color(0xFFD6D0C2),
      onSurfaceVariant: Color(0xFF5C5C50),
      outline: Color(0xFF8A8A7C),
      outlineVariant: Color(0xFFC5C1B6),
      shadow: Color(0xFF000000),
      scrim: Color(0xFF000000),
      inverseSurface: Color(0xFF2C3930),
      onInverseSurface: Color(0xFFDCD7C9),
      inversePrimary: Color(0xFF92D5AB),
      surfaceTint: Color(0xFF2C3930),
    );
  }

  ThemeData light() {
    return theme(lightScheme());
  }

  ThemeData theme(ColorScheme colorScheme) => ThemeData(
    useMaterial3: true,
    brightness: colorScheme.brightness,
    colorScheme: colorScheme,
    textTheme: textTheme.apply(
      bodyColor: colorScheme.onSurface,
      displayColor: colorScheme.onSurface,
    ),
    scaffoldBackgroundColor: colorScheme.surface,
    canvasColor: colorScheme.surface,
  );

  List<ExtendedColor> get extendedColors => [];
}

class ExtendedColor {
  final Color seed, value;
  final ColorFamily light;
  final ColorFamily lightHighContrast;
  final ColorFamily lightMediumContrast;
  final ColorFamily dark;
  final ColorFamily darkHighContrast;
  final ColorFamily darkMediumContrast;

  const ExtendedColor({
    required this.seed,
    required this.value,
    required this.light,
    required this.lightHighContrast,
    required this.lightMediumContrast,
    required this.dark,
    required this.darkHighContrast,
    required this.darkMediumContrast,
  });
}

class ColorFamily {
  const ColorFamily({
    required this.color,
    required this.onColor,
    required this.colorContainer,
    required this.onColorContainer,
  });

  final Color color;
  final Color onColor;
  final Color colorContainer;
  final Color onColorContainer;
}
