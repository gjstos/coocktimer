import 'package:flutter/material.dart';

class ScaffoldThemeModel {
  final ThemeData _light = ThemeData(
    // AppBar
    appBarTheme: AppBarTheme(
      actionsIconTheme: IconThemeData(color: Colors.white, size: 24),
      // centerTitle: false,
      iconTheme: IconThemeData(color: Colors.white, size: 24),
      textTheme: TextTheme(
        // old title
        headline6: TextStyle(color: Colors.white, fontFamily: 'Sriracha'),
      ),
    ),

    // Dialog
    dialogTheme: DialogTheme(
      backgroundColor: Colors.white,
      titleTextStyle: TextStyle(color: Colors.white, fontFamily: 'Sriracha'),
      contentTextStyle:
          TextStyle(color: const Color(0xFF404040), fontFamily: 'Sriracha'),
    ),

    // Divider
    dividerColor: const Color(0xFF979797),

    // FAB
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: const Color(0xFFD91DEA),
    ),

    // Geral
    fontFamily: 'Sriracha',
    scaffoldBackgroundColor: Colors.white,

    // TextFormField e TextField
    disabledColor: const Color(0xFF979797),
    backgroundColor: Colors.white,
    focusColor: const Color(0xFF844BD6),
  );

  // -----------------------------------------------------------------------------

  final ThemeData _dark = ThemeData(
    // AppBar
    appBarTheme: AppBarTheme(
      actionsIconTheme: IconThemeData(color: const Color(0xFF888888), size: 24),
      // centerTitle: false,
      iconTheme: IconThemeData(color: const Color(0xFF888888), size: 24),
      textTheme: TextTheme(
        // old title
        headline6:
            TextStyle(color: const Color(0xFF9E9E9E), fontFamily: 'Sriracha'),
      ),
    ),

    // Dialog
    dialogTheme: DialogTheme(
      backgroundColor: const Color(0xFF121212),
      titleTextStyle:
          TextStyle(color: const Color(0xFFD4D4D4), fontFamily: 'Sriracha'),
      contentTextStyle:
          TextStyle(color: const Color(0xFF9F9F9F), fontFamily: 'Sriracha'),
    ),

    // Divider
    dividerColor: const Color(0xFF444444),

    // FAB
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: const Color(0xFF6D0F75),
    ),

    // Geral
    fontFamily: 'Sriracha',
    scaffoldBackgroundColor: const Color(0xFF121212),

    // TextFormField e TextField
    disabledColor: const Color(0xFF979797),
    backgroundColor: const Color(0xFF272727),
    focusColor: const Color(0xFF844BD6),
  );

  ThemeData get light => _light;
  ThemeData get dark => _dark;
}
