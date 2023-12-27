import 'package:chat_app/core/init/theme/app_theme.dart';
import 'package:flutter/material.dart';

class DarkAppTheme implements AppTheme {
  @override
  ThemeData get themeData => ThemeData(
        brightness: Brightness.dark,
        useMaterial3: true,
        fontFamily: "ArialNova",
        scaffoldBackgroundColor: const Color.fromARGB(255, 15, 21, 26),
        primaryColor: const Color.fromARGB(255, 20, 155, 112),
        colorScheme: const ColorScheme.dark(
            onBackground: Colors.pink,
            background: Color.fromARGB(255, 15, 21, 26),
            surface: Color.fromARGB(255, 24, 33, 39),
            primary: Color.fromARGB(255, 20, 155, 112),
            secondary: Color.fromARGB(255, 20, 155, 112),
            brightness: Brightness.dark,
            onSecondary: Color.fromARGB(255, 15, 21, 27),
            onPrimary: Colors.lightBlue,
            onSurfaceVariant: Colors.yellow,
            tertiary: Colors.lightGreen,
            primaryContainer: Color.fromARGB(255, 20, 155, 112),
            onPrimaryContainer: Color.fromARGB(255, 15, 21, 24),
            secondaryContainer: Colors.red,
            tertiaryContainer: Colors.red,
            outline: Colors.amber),
        tabBarTheme: const TabBarTheme(
            labelStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            unselectedLabelStyle:
                TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            unselectedLabelColor: Color.fromARGB(255, 86, 97, 108),
            indicatorColor: Color.fromARGB(255, 20, 155, 112),
            indicatorSize: TabBarIndicatorSize.tab),
      );
}
