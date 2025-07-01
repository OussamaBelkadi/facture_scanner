import 'package:flutter/material.dart';
import 'pages/home_page.dart';
import 'theme/app_theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Facture Scanner',
      theme: AppTheme.lightTheme,
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
