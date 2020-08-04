import 'package:flutter/material.dart';

//  * Creating custom color palettes is part of creating a custom app. The idea is to create
//  * your class of custom colors, in this case `mainQuizTheme` and then create a `ThemeData`
//  * object with those colors you just defined.
//  *
//  * Resource:
//  * A good resource would be this website: http://mcg.mbitson.com/
//  * You simply need to put in the colour you wish to use, and it will generate all shades
//  * for you. Your primary colour will be the `500` value.
//  *
//  * Colour Creation:
//  * In order to create the custom colours you need to create a `Map<int, Color>` object
//  * which will have all the shade values. `const Color(0xFF...)` will be how you create
//  * the colours. The six character hex code is what follows. If you wanted the colour
//  * #114488 or #D39090 as primary colours in your theme, then you would have
//  * `const Color(0x114488)` and `const Color(0xD39090)`, respectively.
//  *
//  * Usage:
//  * In order to use this newly created theme or even the colours in it, you would just
//  * `import` this file in your project, anywhere you needed it.
//  * `import 'path/to/theme.dart';`

int hexColor(String colorHexCode) {
  String colorNew = '0xff' + colorHexCode;
  colorNew = colorNew.replaceAll('#', '');
  int colorInt = int.parse(colorNew);
  return colorInt;
}

final ThemeData CompanyThemeData = new ThemeData(
    brightness: Brightness.light,
    primarySwatch: MainQuizTheme.palesilver[50],
    primaryColor: MainQuizTheme.palesilver[500],
    primaryColorBrightness: Brightness.light,
    accentColor: MainQuizTheme.empireBlue[500],
    accentColorBrightness: Brightness.light);

class MainQuizTheme {
  MainQuizTheme._(); // this basically makes it so you can instantiate this class
  static const MaterialColor palesilver =
      MaterialColor(_palesilverPrimaryValue, <int, Color>{
    50: Color(0xFFFEFEFE),
    100: Color(0xFFFCFCFD),
    200: Color(0xFFFAFAFC),
    300: Color(0xFFF7F8FB),
    400: Color(0xFFF6F7FA),
    500: Color(_palesilverPrimaryValue),
    600: Color(0xFFF3F4F8),
    700: Color(0xFFF1F2F7),
    800: Color(0xFFEFF0F6),
    900: Color(0xFFECEEF5),
  });
  static const int _palesilverPrimaryValue = 0xFFF4F5F9;

  static const MaterialColor palesilverAccent =
      MaterialColor(_palesilverAccentValue, <int, Color>{
    100: Color(0xFFFFFFFF),
    200: Color(_palesilverAccentValue),
    400: Color(0xFFFFFFFF),
    700: Color(0xFFFFFFFF),
  });
  static const int _palesilverAccentValue = 0xFFFFFFFF;

  static const MaterialColor empireBlue =
      MaterialColor(_empireBluePrimaryValue, <int, Color>{
    50: Color(0xFFEAEDFF),
    100: Color(0xFFCCD1FF),
    200: Color(0xFFAAB3FF),
    300: Color(0xFF8795FF),
    400: Color(0xFF6E7EFF),
    500: Color(_empireBluePrimaryValue),
    600: Color(0xFF4D5FFF),
    700: Color(0xFF4354FF),
    800: Color(0xFF3A4AFF),
    900: Color(0xFF2939FF),
  });
  static const int _empireBluePrimaryValue = 0xFF5467FF;

  static const MaterialColor empireBlueAccent =
      MaterialColor(_empireBlueAccentValue, <int, Color>{
    100: Color(0xFFFFFFFF),
    200: Color(_empireBlueAccentValue),
    400: Color(0xFFD6D9FF),
    700: Color(0xFFBDC1FF),
  });
  static const int _empireBlueAccentValue = 0xFFFFFFFF;

  static const MaterialColor oxfordblue =
      MaterialColor(_oxfordbluePrimaryValue, <int, Color>{
    50: Color(0xFFE7E9EB),
    100: Color(0xFFC3C8CC),
    200: Color(0xFF9BA3AB),
    300: Color(0xFF727E89),
    400: Color(0xFF54626F),
    500: Color(_oxfordbluePrimaryValue),
    600: Color(0xFF303F4F),
    700: Color(0xFF293745),
    800: Color(0xFF222F3C),
    900: Color(0xFF16202B),
  });
  static const int _oxfordbluePrimaryValue = 0xFF364656;

  static const MaterialColor oxfordblueAccent =
      MaterialColor(_oxfordblueAccentValue, <int, Color>{
    100: Color(0xFF6EAFFF),
    200: Color(_oxfordblueAccentValue),
    400: Color(0xFF0876FF),
    700: Color(0xFF006AEE),
  });
  static const int _oxfordblueAccentValue = 0xFF3B92FF;
}
