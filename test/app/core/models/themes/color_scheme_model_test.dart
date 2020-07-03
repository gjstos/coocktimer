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
      expect(colorSchemeMock.colorScheme['light'].background,
          equals(Colors.white));
    });
    test('LinearGradient', () {
      expect(
          colorSchemeMock.linearGradient['light'],
          equals([
            const Color(0xFFA9076B),
            const Color(0xFF61045F),
          ]));
    });
  });

  group('Teste se é a versão dark:', () {
    test('ColorScheme', () {
      expect(colorSchemeMock.colorScheme['dark'].background,
          equals(const Color(0xFF121212)));
    });
    test('LinearGradient', () {
      expect(
          colorSchemeMock.linearGradient['dark'],
          equals([
            const Color(0xFF550436),
            const Color(0xFF1E0F22),
          ]));
    });
  });
}
