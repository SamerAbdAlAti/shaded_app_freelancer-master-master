import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shaded_app_freelancer/_core/functions/function.dart';

Widget buildButton({
  String? name,
  Color? color,
  Color? colorName,
  double? width,
  double? hight,
  VoidCallback? function,
}) =>
    Container(
      width: width != null ? width: 327,
      height: hight != null ? hight: 50,
      child: MaterialButton(
        elevation: 0,
        onPressed: function != null ? function : () {},
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(14.0)),
        child: Text(name!, style: tajawalArabic(color: colorName, size: 16)),
        color: color,
      ),
    );
