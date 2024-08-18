import 'package:flutter/material.dart';

const colorList = <Color>[
  Colors.black,
  Colors.teal,
  Colors.red,
  Colors.pink,
  Colors.indigo,
  Colors.cyan
];

class AppTheme {

  final int selectedColor;

  AppTheme({
    this.selectedColor = 0
  }): assert(
    selectedColor >= 0, 'Selected color must be graeter than zero'
  );

  ThemeData getTheme() => ThemeData(
      useMaterial3: true,
      colorSchemeSeed: colorList[selectedColor],
      appBarTheme: const AppBarTheme(
        centerTitle: true
      )
    );

}