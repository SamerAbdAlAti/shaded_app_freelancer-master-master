import 'dart:ui';

import 'package:flutter/material.dart';

import 'functions/function.dart';

Color appColor = Color.fromRGBO(0, 210, 127, 1);

Color secondaryAppColor = Color.fromRGBO(253, 156, 20, 1);

ThemeData themeData = ThemeData(
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    elevation: 0.0,
    selectedItemColor: appColor,
    type: BottomNavigationBarType.shifting,
    selectedIconTheme: IconThemeData(color: appColor),
    unselectedIconTheme: IconThemeData(color: Color.fromRGBO(224, 224, 224, 1)),
    showUnselectedLabels: true,
    showSelectedLabels: true,
    unselectedItemColor: Color.fromRGBO(224, 224, 224, 1),
    unselectedLabelStyle:
        tajawalArabic(color: Color.fromRGBO(224, 224, 224, 1)),
    selectedLabelStyle: tajawalArabic(color: appColor),
  ),
  useMaterial3: true,
);
