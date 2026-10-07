import 'package:flutter/material.dart';

import 'screens/home_screen.dart';
import 'utils/themes.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mobile Widgets App',
      debugShowCheckedModeBanner: false,
      theme: AppThemes.light,
      home: const HomeScreen(),
    );
  }
}
