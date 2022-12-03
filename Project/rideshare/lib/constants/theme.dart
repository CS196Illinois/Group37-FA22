import 'package:flutter/material.dart';

ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  visualDensity: VisualDensity.comfortable,
  appBarTheme: const AppBarTheme(
      foregroundColor: Colors.white70, backgroundColor: Colors.black),
  bottomAppBarColor: Colors.grey,
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.resolveWith<Color?>(
          (Set<MaterialState> states) {
        return Colors.orange;
      }),
    ),
  ),
  disabledColor: const Color(0xffd4d1d1),
  errorColor: const Color(0xffff0f00),
  toggleableActiveColor: Colors.orange,
  textTheme: const TextTheme(
    headline1: TextStyle(
      color: Colors.white,
    ),
    headline2: TextStyle(
      color: Colors.white,
    ),
    headline3: TextStyle(
      color: Colors.white,
    ),
    headline4: TextStyle(
      color: Colors.white,
    ),
  ),
);

ThemeData lightTheme = ThemeData(
  visualDensity: VisualDensity.comfortable,
  backgroundColor: Colors.white,
  brightness: Brightness.light,
  appBarTheme: const AppBarTheme(
      foregroundColor: Colors.black, backgroundColor: Colors.white),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.resolveWith<Color?>(
          (Set<MaterialState> states) {
        return Colors.orange;
      }),
    ),
  ),
  // ignore: deprecated_member_use
  buttonColor: const Color(0x999da0),
  primaryColor: const Color(0xffffffff),
  bottomAppBarColor: const Color(0xffffffff),
  disabledColor: const Color(0xffd4d1d1),
  errorColor: const Color(0xffff0f00),
  toggleableActiveColor: Colors.orange,
  textTheme: const TextTheme(
    headline1: TextStyle(
      color: Color(0xff1f1f1f),
      fontSize: 25,
    ),
    headline2: TextStyle(
      color: Color(0xff1f1f1f),
      fontSize: 18,
    ),
    headline3: TextStyle(
      color: Color(0xff1f1f1f),
    ),
    headline4: TextStyle(
      color: Color(0xff212121),
    ),
    bodyText1: TextStyle(
      color: Color(0xff1f1f1f),
      fontSize: 25,
    ),
  ),
  colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.amber)
      .copyWith(secondary: const Color(0xffff9a19)),
);
