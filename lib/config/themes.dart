import 'package:flutter/material.dart';

ThemeData mode = ThemeData(
  scaffoldBackgroundColor: Colors.black,
  appBarTheme: const AppBarTheme(
      centerTitle: true, elevation: 0, color: Colors.transparent),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    showSelectedLabels: true,
    showUnselectedLabels: true,
    unselectedLabelStyle: const TextStyle(fontSize: 14),
    selectedIconTheme: const IconThemeData(size: 24),
    unselectedIconTheme: const IconThemeData(size: 24),
    // backgroundColor: navigationBarColor,
    // selectedItemColor: goldColor,
    // unselectedItemColor: greyColor,
    type: BottomNavigationBarType.fixed,
  ),
);
