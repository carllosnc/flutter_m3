import 'package:flutter/material.dart';

ThemeData appTheme({
  required Color color,
  required bool isDark,
}) {
  return ThemeData(
    useMaterial3: true,
    colorSchemeSeed: color,
    brightness: isDark ? Brightness.dark : Brightness.light,
  );
}
