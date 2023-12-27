import 'package:chat_app/core/init/theme/app_theme.dart';
import 'package:flutter/material.dart';

class LightAppTheme implements AppTheme {
  @override
  ThemeData get themeData => ThemeData(
      brightness: Brightness.light,
      fontFamily: "ArialNova",
      primaryColor: const Color.fromARGB(255, 14, 110, 86),
      colorScheme: const ColorScheme(
          brightness: Brightness.light,
          primary: Color.fromARGB(255, 14, 110, 86),
          onPrimary: Colors.white,
          secondary: Color(0xff075e54),
          onSecondary: Colors.white,
          error: Color(0xffba1a1a),
          onError: Colors.white,
          background: Colors.white,
          onBackground: Color(0xff1a1c1e),
          surface: Color.fromARGB(255, 14, 110, 86),
          onSurface: Colors.white),
      tabBarTheme: const TabBarTheme(
          labelColor: Colors.white,
          labelStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          unselectedLabelStyle:
              TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          unselectedLabelColor: Color.fromARGB(144, 255, 255, 255),
          indicatorColor: Colors.white,
          indicatorSize: TabBarIndicatorSize.tab));
}
