import 'package:flutter/material.dart';

const Color _myGreen = Color(0xFF368f4f);
List<Color> _colorTheme = [
  _myGreen,
  Colors.black,
  Colors.lightBlueAccent,
  Colors.blueGrey,
];

class AppTheme {

  final int selectedColorIndex;

  AppTheme({this.selectedColorIndex = 0}) : assert(
    selectedColorIndex >= 0 && selectedColorIndex <= _colorTheme.length - 1,
    'selectedColorIndex must be between 0 and ${_colorTheme.length - 1}',
  );

  ThemeData getTheme() {
    return ThemeData(
      colorSchemeSeed: _colorTheme[selectedColorIndex],
      brightness: Brightness.dark,
    );
  }
}