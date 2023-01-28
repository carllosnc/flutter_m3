import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_m3/app.dart';

void main(List<String> args) {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      systemNavigationBarColor: Colors.transparent,
    ),
  );

  runApp(const App());
}
