import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../_core/functions/function.dart';

Widget createOrWidget()=> Column(
  children: [
    SizedBox(
      height: 77,
    ),
    Row(children: [
      SizedBox(
        width: 55.0,
      ),
      Expanded(child: Divider(color: Colors.black87)),
      SizedBox(
        width: 16.0,
      ),
      Text(
        "أو تسجيل الدخول عبر",
        style: tajawalArabic(fontWeight: FontWeight.bold),
      ),
      SizedBox(
        width: 16.0,
      ),
      Expanded(child: Divider(color: Colors.black87)),
      SizedBox(
        width: 55.0,
      ),
    ]),
    SizedBox(
      height: 30,
    ),
  ],
);