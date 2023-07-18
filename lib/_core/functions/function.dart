import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

// App consts
Locale arabicLocale = Locale("ar");
Locale englishLocale = Locale("en");
// route and finish
navRouteAndFinish(context, routeName) => Navigator.pushNamedAndRemoveUntil(
    context, "${routeName}", (route) => false);

// route and finish
navRouteTo(context, routeName) => Navigator.pushNamed(
    context, "${routeName}");

// navigate and finish pervious screen
navAndFinish(context, Widget) => Navigator.pushAndRemoveUntil(
        context, MaterialPageRoute(builder: (context) => Widget), (route) {
      return false;
    });

// just navigate for screen
navTo(context, Widget) =>
    Navigator.push(context, MaterialPageRoute(builder: (context) => Widget));

// Arabic language text style
TextStyle tajawalArabic(
        {double? size,
        FontWeight? fontWeight,
        Color? color,
        bool isLined = false}) =>
    GoogleFonts.tajawal(
      fontSize: size,
      color: color,
      fontWeight: fontWeight,
      locale: arabicLocale,
      decoration: isLined == true ? TextDecoration.underline : null,
      decorationColor: Colors.red,
      decorationStyle: TextDecorationStyle.dotted,
      decorationThickness: 44,
    );

// Arabic language text style
TextStyle numberStyle(
        {double? size, FontWeight? fontWeight, Color? color, bool? isLined}) =>
    GoogleFonts.notoSerifGeorgian(
      fontSize: size,
      color: color,
      fontWeight: fontWeight,
      locale: arabicLocale,
      // decoration: isLined == true ? TextDecoration.underline : null
    );
