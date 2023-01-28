import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

navLight() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      systemNavigationBarColor: Colors.white,
      systemNavigationBarDividerColor: Colors.white,
      systemNavigationBarIconBrightness: Brightness.dark,
    ),
  );
}

navDark() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      systemNavigationBarColor: Colors.black,
      systemNavigationBarDividerColor: Colors.black,
      systemNavigationBarIconBrightness: Brightness.light,
    ),
  );
}

ThemeData appTheme({
  required Color color,
  required bool isDark,
}) {
  navDark();

  return ThemeData(
    useMaterial3: true,
    colorSchemeSeed: color,
    brightness: isDark ? Brightness.dark : Brightness.light,
  );
}
