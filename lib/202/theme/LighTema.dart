import 'package:flutter/material.dart';

class LighTema {
  final _neededColor = _NeededColor();

  late ThemeData theme = ThemeData(
      appBarTheme: const AppBarTheme(
          shape: RoundedRectangleBorder(
              borderRadius:
                  BorderRadius.vertical(bottom: Radius.circular(20)))),
      scaffoldBackgroundColor: Colors.white.withOpacity(0.9),
      checkboxTheme: const CheckboxThemeData(
          side: BorderSide(color: Colors.green),
          fillColor: MaterialStatePropertyAll(Colors.green)),
      colorScheme: const ColorScheme.light(),
      floatingActionButtonTheme:
          const FloatingActionButtonThemeData(backgroundColor: Colors.green),
      textTheme: ThemeData.light().textTheme.copyWith(
          headlineLarge:
              TextStyle(fontSize: 30, color: _neededColor._fontColor)));
}

class _NeededColor {
  final Color _fontColor = Colors.black;
}
//late yapmamızdaki sebep önceden renkler tanımlansın diye.