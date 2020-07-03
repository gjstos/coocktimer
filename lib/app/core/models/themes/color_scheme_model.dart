import 'package:flutter/material.dart';

class ColorSchemeModel {
  final Map<String, List<Color>> _gradient = {
    'dark': [
      const Color(0xFF550436),
      const Color(0xFF1E0F22),
    ],
    'light': [
      const Color(0xFFA9076B),
      const Color(0xFF61045F),
    ],
  };

  final Map<String, ColorScheme> _colorScheme = {
    'dark': ColorScheme.dark(
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
    ),
    'light': ColorScheme.light(
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
    )
  };

  Map<String, ColorScheme> get colorScheme => _colorScheme;

  Map<String, List<Color>> get linearGradient => _gradient;
}
