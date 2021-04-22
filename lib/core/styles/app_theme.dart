import 'package:flutter/material.dart';

import 'color_palettes.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    // fontFamily: 'IBMPlexSans',
    backgroundColor: ColorPalettes.lightBG,
    primaryColor: ColorPalettes.lightPrimary,
    accentColor:  ColorPalettes.lightAccent,
    cursorColor: ColorPalettes.lightAccent,
    dividerColor: ColorPalettes.darkBG,
    scaffoldBackgroundColor: ColorPalettes.lightBG,
    appBarTheme: const AppBarTheme(
      textTheme: TextTheme(
        headline6: TextStyle(
          color: ColorPalettes.darkBG,
          fontSize: 18.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  );

  static ThemeData darkTheme = ThemeData(
    // fontFamily: 'IBMPlexSans',
    brightness: Brightness.dark,
    backgroundColor: ColorPalettes.darkBG,
    primaryColor: ColorPalettes.darkPrimary,
    accentColor: ColorPalettes.darkAccent,
    dividerColor: ColorPalettes.lightPrimary,
    scaffoldBackgroundColor: ColorPalettes.darkBG,
    cursorColor: ColorPalettes.darkAccent,
    appBarTheme: const AppBarTheme(
      color: ColorPalettes.darkPrimary,
      textTheme: TextTheme(
        headline6: TextStyle(
          color: ColorPalettes.lightBG,
          fontSize: 18.0,
          fontWeight: FontWeight.w700,
        ),
      ),
    ),
  );
}


// static ThemeData get light {
//     return ThemeData(
//       appBarTheme: const AppBarTheme(
//         elevation: 0,
//         color: Colors.white,
//       ),
//       scaffoldBackgroundColor: Colors.white,
//       primaryColor: Colors.black,
//       accentColor: Colors.black,
//       splashColor: Colors.transparent,
//       fontFamily: 'IBM',
//     );
//   }