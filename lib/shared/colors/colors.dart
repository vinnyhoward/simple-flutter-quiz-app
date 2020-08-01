import 'package:flutter/material.dart';

//  * Creating custom color palettes is part of creating a custom app. The idea is to create
//  * your class of custom colors, in this case `CompanyColors` and then create a `ThemeData`
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
    primarySwatch: CompanyColors.blue[50],
    primaryColor: CompanyColors.blue[500],
    primaryColorBrightness: Brightness.light,
    accentColor: CompanyColors.green[500],
    accentColorBrightness: Brightness.light);

class CompanyColors {
  CompanyColors._(); // this basically makes it so you can instantiate this class
  static const Map<int, Color> blue = const <int, Color>{
    50: const Color(0xFFe0e0e0),
    100: const Color(0xFFb3b3b3),
    200: const Color(0xFF808080),
    300: const Color(0xFF4d4d4d),
    400: const Color(0xFF262626),
    500: const Color(0xFF262626),
    600: const Color(0xFF000000),
    700: const Color(0xFF000000),
    800: const Color(0xFF000000),
    900: const Color(0xFF000000),
  };

  static const Map<int, Color> green = const <int, Color>{
    50: const Color(0xFFe0e0e0),
    100: const Color(0xFFb3b3b3),
    200: const Color(0xFF808080),
    300: const Color(0xFF4d4d4d),
    400: const Color(0xFF262626),
    500: const Color(0xFF262626),
    600: const Color(0xFF000000),
    700: const Color(0xFF000000),
    800: const Color(0xFF000000),
    900: const Color(0xFF000000),
  };
}
