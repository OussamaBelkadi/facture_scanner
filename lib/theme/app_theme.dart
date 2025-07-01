import 'package:flutter/material.dart';

class AppTheme {
  static final lightTheme = ThemeData(
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
    useMaterial3: true,
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.teal,
      foregroundColor: Colors.white,
    ),
    textTheme: TextTheme(
      bodyLarge: TextStyle(fontSize: 18),
      titleLarge: TextStyle(fontWeight: FontWeight.bold),
    ),
  );
}
