import 'package:flutter/material.dart';

import 'color_palettes.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    // fontFamily: 'IBMPlexSans',
    backgroundColor: ColorPalettes.lightBG,
    primaryColor: ColorPalettes.lightPrimary,
    dividerColor: ColorPalettes.darkBG,
    scaffoldBackgroundColor: ColorPalettes.lightBG,
    appBarTheme: const AppBarTheme(
      toolbarTextStyle: TextStyle(
        color: ColorPalettes.darkBG,
        fontSize: 18.0,
        fontWeight: FontWeight.bold,
      ),
    ),
    colorScheme:
        ColorScheme.fromSwatch().copyWith(secondary: ColorPalettes.lightAccent),
    textSelectionTheme:
        const TextSelectionThemeData(cursorColor: ColorPalettes.lightAccent),
  );

  static ThemeData darkTheme = ThemeData(
    // fontFamily: 'IBMPlexSans',
    brightness: Brightness.dark,
    backgroundColor: ColorPalettes.darkBG,
    primaryColor: ColorPalettes.darkPrimary,
    dividerColor: ColorPalettes.lightPrimary,
    scaffoldBackgroundColor: ColorPalettes.darkBG,
    appBarTheme: const AppBarTheme(
      color: ColorPalettes.darkPrimary,
      toolbarTextStyle: TextStyle(
        color: ColorPalettes.darkBG,
        fontSize: 18.0,
        fontWeight: FontWeight.bold,
      ),
    ),
    colorScheme:
        ColorScheme.fromSwatch().copyWith(secondary: ColorPalettes.darkAccent),
    textSelectionTheme:
        const TextSelectionThemeData(cursorColor: ColorPalettes.darkAccent),
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