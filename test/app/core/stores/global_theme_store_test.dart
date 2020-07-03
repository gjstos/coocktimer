import 'package:coocktimer/app/app_module.dart';
import 'package:coocktimer/app/core/stores/global_theme_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  initModule(AppModule());
  GlobalThemeStore globalThemeMock;

  setUp(() {
    globalThemeMock = AppModule.to.get<GlobalThemeStore>();
  });

  group('GlobalThemeStore Teste', () {
    test('de tipo de objeto (GlobalThemeStore)', () {
      expect(globalThemeMock, isInstanceOf<GlobalThemeStore>());
    });

    test('de alteração do dark theme', () {
      expect(globalThemeMock.isDark, equals(false));
      globalThemeMock.changeTheme(value: true);
      expect(globalThemeMock.isDark, equals(true));
    });

    test('de verificação do ColorScheme', () {
      expect(globalThemeMock.colorScheme.brightness, equals(Brightness.dark));
      globalThemeMock.changeTheme(value: false);
      expect(globalThemeMock.colorScheme.brightness, equals(Brightness.light));
    });

    test('de verificação do ScaffoldTheme', () {
      expect(
          globalThemeMock.scaffoldTheme.scaffoldBackgroundColor, Colors.white);
      globalThemeMock.changeTheme(value: true);
      expect(globalThemeMock.scaffoldTheme.scaffoldBackgroundColor,
          const Color(0xFF121212));
    });

    test('de verificação do LinearGradient', () {
      expect(
          globalThemeMock.linearGradient.colors,
          equals([
            const Color(0xFF550436),
            const Color(0xFF1E0F22),
          ]));
      globalThemeMock.changeTheme(value: false);
      expect(globalThemeMock.linearGradient.colors, [
        const Color(0xFFA9076B),
        const Color(0xFF61045F),
      ]);
    });
  });
}
