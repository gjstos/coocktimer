import 'package:coocktimer/app/core/stores/global_theme_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:coocktimer/app/app_controller.dart';
import 'package:coocktimer/app/app_module.dart';
import 'package:mobx/mobx.dart' hide when;
import 'package:mockito/mockito.dart';

class GlobalThemeStoreMock extends Mock implements GlobalThemeStore {}

void main() {
  initModule(AppModule(), changeBinds: [
    Bind<GlobalThemeStore>((i) => GlobalThemeStoreMock()),
  ]);
  AppController appMock;
  GlobalThemeStoreMock themeStoreMock;

  setUp(() {
    appMock = AppModule.to.get<AppController>();
    themeStoreMock = GlobalThemeStoreMock();
  });

  group('AppController Teste', () {
    test('de tipo de objeto (AppController)', () {
      expect(appMock, isInstanceOf<AppController>());
    });

    group('de verificação dos valores iniciais:', () {
      test('isDark', () {
        when(Modular.get<GlobalThemeStore>().isDark).thenReturn(false);
        expect(appMock.isDark, equals(false));
      });

      test('themeData', () {
        when(Modular.get<GlobalThemeStore>().scaffoldTheme)
            .thenReturn(ThemeData(brightness: Brightness.light));
        expect(appMock.themeData.brightness, equals(Brightness.light));
      });

      test('currentTheme', () {
        when(Modular.get<GlobalThemeStore>().isDark).thenReturn(false);
        expect(appMock.currentTheme.value, false);
      });
    });
  });
}
