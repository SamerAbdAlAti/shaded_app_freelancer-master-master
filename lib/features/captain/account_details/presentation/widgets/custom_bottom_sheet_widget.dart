import 'package:flutter/material.dart';

Widget customBottomSheetsCard(
    {required double top, required double height, required Widget child}) =>
    Padding(
      padding: EdgeInsets.only(right: 14.0, left: 14.0, top: top),
      child: Card(
        color: Color(0xFFF8F8F8),
        child: Container(
          width: 368,
          height: height,
          decoration: BoxDecoration(
              border: Border.all(color: Color(0xFF707070), width: 0.2),
              borderRadius: BorderRadius.circular(14.0)),
          child: child,
        ),
      ),
    );