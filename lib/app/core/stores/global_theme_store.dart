import 'package:coocktimer/app/core/models/themes/color_scheme_model.dart';
import 'package:coocktimer/app/core/models/themes/scaffold_theme_model.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
part 'global_theme_store.g.dart';

class GlobalThemeStore = GlobalThemeStoreBase with _$GlobalThemeStore;

abstract class GlobalThemeStoreBase with Store {
  // Tema escuro
  @observable
  bool _isDark = false;
  @computed
  bool get isDark => _isDark;
  @action
  void changeTheme({@required bool value}) => _isDark = value;

  // temas gerais
  final ColorSchemeModel _colorSchemeModel = ColorSchemeModel();
  final ScaffoldThemeModel _scaffoldThemeModel = ScaffoldThemeModel();

  ColorScheme get colorScheme {
    if (isDark) return _colorSchemeModel.colorScheme['dark'];
    return _colorSchemeModel.colorScheme['light'];
  }

  LinearGradient get linearGradient => LinearGradient(
        begin: Alignment.centerLeft,
        end: Alignment.centerRight,
        colors: isDark
            ? _colorSchemeModel.linearGradient['dark']
            : _colorSchemeModel.linearGradient['light'],
      );

  ThemeData get scaffoldTheme {
    if (isDark) return _scaffoldThemeModel.theme['dark'];
    return _scaffoldThemeModel.theme['light'];
  }
}
