import 'package:coocktimer/app/core/models/themes/scaffold_theme_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  ScaffoldThemeModel scaffoldThemeMock;

  setUp(() {
    scaffoldThemeMock = ScaffoldThemeModel();
  });

  test('Teste ScaffoldThemeModel se é a versão light', () {
    expect(scaffoldThemeMock.theme['light'].scaffoldBackgroundColor,
        equals(Colors.white));
  });

  test('Teste ScaffoldThemeModel se é a versão dark', () {
    expect(scaffoldThemeMock.theme['dark'].scaffoldBackgroundColor,
        equals(const Color(0xFF121212)));
  });
}
