import 'package:flutter/material.dart';

const appTextStyle = TextStyle(fontFamily: "AvenirNextLT", color: Colors.black);
const textTheme = TextTheme(
    titleLarge: appTextStyle,
    titleMedium: appTextStyle,
    titleSmall: appTextStyle,
    headlineLarge: appTextStyle,
    displayLarge: appTextStyle,
    displayMedium: appTextStyle,
    displaySmall: appTextStyle,
    headlineMedium: appTextStyle,
    labelMedium: appTextStyle,
    bodyLarge: appTextStyle,
    bodyMedium: appTextStyle,
    bodySmall: appTextStyle);
ThemeData appThemeData = ThemeData.light().copyWith(
    textTheme: textTheme,
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
    useMaterial3: true);
