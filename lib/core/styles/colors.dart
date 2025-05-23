import 'package:flutter/material.dart';

class AppColors {
  static const Color primary = Color(0xFF000000);
  static const Color blue = Color(0xFF377DFF);
  static const Color green = Color(0xFF38CB89);
  static const Color orange = Color(0xFFFFAB00);
  static const Color red = Color(0xFFF0473E);
  static const Color neutral_01 = Color(0xFFFEFEFE);
  static const Color neutral_02 = Color(0xFFF3F5F7);
  static const Color neutral_03 = Color(0xFFE8ECEF);
  static const Color neutral_04 = Color(0xFF6C7275);
  static const Color neutral_05 = Color(0xFF343839);
  static const Color neutral_06 = Color(0xFF232627);
  static const Color neutral_07 = Color(0xFF141718);
}

class HexColor extends Color {
  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll('#', '');
    if (hexColor.length == 6) {
      hexColor = 'FF$hexColor';
    }
    return int.parse(hexColor, radix: 16);
  }
}
