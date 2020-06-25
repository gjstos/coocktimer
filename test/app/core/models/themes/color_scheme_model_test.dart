import 'package:coocktimer/app/core/models/themes/color_scheme_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  ColorSchemeModel colorSchemeMock;

  setUp(() {
    colorSchemeMock = ColorSchemeModel();
  });

  group('Teste se é a versão light:', () {
    test('ColorScheme', () {
      expect(colorSchemeMock.light.background, equals(Colors.white));
    });
    test('LinearGradient', () {
      expect(colorSchemeMock.lightLinearGradient.colors,
          equals([const Color(0xFFCC2B5F), const Color(0xFF753A88)]));
    });
  });

  group('Teste se é a versão dark:', () {
    test('ColorScheme', () {
      expect(colorSchemeMock.dark.background, equals(const Color(0xFF121212)));
    });
    test('LinearGradient', () {
      expect(colorSchemeMock.darkLinearGradient.colors,
          equals([const Color(0xFF660730), const Color(0xFF3B1D44)]));
    });
  });
}
