import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppTheme {
  static get light => ThemeData(
        appBarTheme: const AppBarTheme(
          systemOverlayStyle: SystemUiOverlayStyle.dark,
        ),
        primaryColor: const Color(0xff007AFF),
        extensions: const [],
      );
}
