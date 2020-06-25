import 'package:coocktimer/app/core/models/themes/color_scheme_model.dart';
import 'package:coocktimer/app/core/models/themes/scaffold_theme_model.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
part 'global_theme_store.g.dart';

class GlobalThemeStore = GlobalThemeStoreBase with _$GlobalThemeStore;

abstract class GlobalThemeStoreBase with Store {
  // verificação do tema
  @observable
  bool _isDark = false;

  @computed
  bool get isDark => _isDark;
  @action
  void changeTheme() {
    _isDark = !_isDark;
  }

  // temas gerais
  final ColorSchemeModel _colorSchemeModel = ColorSchemeModel();
  final ScaffoldThemeModel _scaffoldThemeModel = ScaffoldThemeModel();

  ColorScheme get colorScheme {
    if (isDark) return _colorSchemeModel.dark;
    return _colorSchemeModel.light;
  }

  LinearGradient get linearGradient {
    if (isDark) return _colorSchemeModel.darkLinearGradient;
    return _colorSchemeModel.lightLinearGradient;
  }

  ThemeData get scaffoldTheme {
    if (isDark) return _scaffoldThemeModel.dark;
    return _scaffoldThemeModel.light;
  }
}
