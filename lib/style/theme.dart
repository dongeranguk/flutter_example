import 'package:flutter/material.dart';

final customTheme = ThemeData(
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightBlue),
    appBarTheme: const AppBarTheme(backgroundColor: Colors.lightBlue),
    textTheme: const TextTheme(bodyLarge: TextStyle(fontSize: 30)),
    useMaterial3: true);
