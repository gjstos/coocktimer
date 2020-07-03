import 'package:coocktimer/app/core/stores/global_theme_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

part 'app_controller.g.dart';

class AppController = _AppControllerBase with _$AppController;

abstract class _AppControllerBase with Store {
  GlobalThemeStore _themeStore = Modular.get<GlobalThemeStore>();

  ThemeData get themeData => _themeStore.scaffoldTheme;

  bool get isDark => _themeStore.isDark;

  ValueNotifier<bool> get currentTheme =>
      ValueNotifier<bool>(_themeStore.isDark);
}
