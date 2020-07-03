import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'app_controller.dart';

class AppWidget extends StatelessWidget {
  final AppController controller = Modular.get();
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
      builder: (BuildContext context, isDark, Widget child) {
        return MaterialApp(
          navigatorKey: Modular.navigatorKey,
          title: 'Flutter Slidy',
          theme: controller.themeData,
          initialRoute: '/',
          onGenerateRoute: Modular.generateRoute,
        );
      },
      valueListenable: controller.currentTheme,
    );
  }
}
