// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'global_theme_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$GlobalThemeStore on GlobalThemeStoreBase, Store {
  Computed<bool> _$isDarkComputed;

  @override
  bool get isDark => (_$isDarkComputed ??= Computed<bool>(() => super.isDark,
          name: 'GlobalThemeStoreBase.isDark'))
      .value;

  final _$_isDarkAtom = Atom(name: 'GlobalThemeStoreBase._isDark');

  @override
  bool get _isDark {
    _$_isDarkAtom.reportRead();
    return super._isDark;
  }

  @override
  set _isDark(bool value) {
    _$_isDarkAtom.reportWrite(value, super._isDark, () {
      super._isDark = value;
    });
  }

  final _$GlobalThemeStoreBaseActionController =
      ActionController(name: 'GlobalThemeStoreBase');

  @override
  void changeTheme() {
    final _$actionInfo = _$GlobalThemeStoreBaseActionController.startAction(
        name: 'GlobalThemeStoreBase.changeTheme');
    try {
      return super.changeTheme();
    } finally {
      _$GlobalThemeStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isDark: ${isDark}
    ''';
  }
}
