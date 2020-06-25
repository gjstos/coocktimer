import 'package:flutter/material.dart';

// Padrão caso queira individualmente uma cor sem precisar ir no scaffold
class ColorSchemeModel {
  final ColorScheme _lightColor = ColorScheme(
    primary: const Color(0xFF9139CA),
    primaryVariant: const Color(0xFF491D65),
    secondary: const Color(0xFFD91DEA),
    secondaryVariant: const Color(0xFF6D0F75),
    surface: const Color(0xFFB800A5),
    background: Colors.white,
    error: Colors.red,
    onPrimary: const Color(0xFF9139CA),
    onSecondary: const Color(0xFFCB00DD),
    onSurface: const Color(0xFFB800A5),
    onBackground: Colors.white,
    onError: const Color(0xFFDF2E27),
    brightness: Brightness.light,
  );

  final ColorScheme _darkColor = ColorScheme(
    primary: const Color(0xFF491D65),
    primaryVariant: const Color(0xFF9139CA),
    secondary: const Color(0xFF6D0F75),
    secondaryVariant: const Color(0xFFD91DEA),
    surface: const Color(0xFF5C0053),
    background: const Color(0xFF121212),
    error: const Color(0xFF800000),
    onPrimary: const Color(0xFF9B69B8),
    onSecondary: const Color(0xFFAD54E6),
    onSurface: const Color(0xFFB65FA8),
    onBackground: const Color(0xFF121212),
    onError: const Color(0xFFD2553F),
    brightness: Brightness.dark,
  );

  // Já que alguns itens do Scaffold não tem o atributo "gradient" estou criando
  // um para o uso geral
  final LinearGradient _lightGradient = LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.bottomRight,
    colors: [
      const Color(0xFFCC2B5F),
      const Color(0xFF753A88),
    ],
  );

  final LinearGradient _darkGradient = LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.bottomRight,
    colors: [
      const Color(0xFF660730),
      const Color(0xFF3B1D44),
    ],
  );

  ColorScheme get light => _lightColor;
  ColorScheme get dark => _darkColor;
  LinearGradient get lightLinearGradient => _lightGradient;
  LinearGradient get darkLinearGradient => _darkGradient;
}
