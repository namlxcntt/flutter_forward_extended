import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'color.dart';

class ThemeUtils {
  static ThemeData getThemeLight() => themeLight;

  static ThemeData getThemeDark() => themeDark;
}

ThemeData get themeLight {
  return ThemeData(
    primaryColor: colorPrimary,
    colorScheme: ColorScheme.fromSwatch(accentColor: colorPrimary),
    textTheme: getTextTheme,
  );
}

ThemeData get themeDark {
  return ThemeData(
    primaryColor: colorPrimary,
    colorScheme: ColorScheme.fromSwatch(accentColor: colorPrimary),
    textTheme: getTextTheme,
  );
}

//   FontWeight.w100: 'Thin',
//   FontWeight.w200: 'ExtraLight',
//    FontWeight.w300: 'Light',
//    FontWeight.w400: 'Regular',
//   FontWeight.w500: 'Medium',
//   FontWeight.w600: 'SemiBold',
//   FontWeight.w700: 'Bold',
//   FontWeight.w800: 'ExtraBold',
//   FontWeight.w900: 'Black',
// }
TextTheme get getTextTheme {
  return GoogleFonts.nunitoTextTheme().copyWith(
      //Header Home Title
      titleLarge: const TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.w700,
        color: Colors.black,
        height: 1.1,
      ),
      // Header Title App Bar
      titleMedium: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w600,
          height: 1.1,
          wordSpacing: 1.1),
      displaySmall: const TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        color: Colors.black,
        height: 1.1,
      ),
      displayMedium: const TextStyle(
        fontSize: 15,
        fontWeight: FontWeight.w400,
        color: Colors.black,
        height: 1.85,
      ),
      displayLarge: const TextStyle(
          color: Colors.black,
          fontSize: 19.5,
          fontWeight: FontWeight.w400,
          height: 1.23));
}
