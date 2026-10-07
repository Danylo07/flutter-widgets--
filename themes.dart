import 'package:flutter/material.dart';

class AppThemes {
  AppThemes._();

  static final ThemeData light = ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
  );
}
