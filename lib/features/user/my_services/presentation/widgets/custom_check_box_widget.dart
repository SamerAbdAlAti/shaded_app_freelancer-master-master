import 'package:flutter/material.dart';

import '../../../../../_core/functions/function.dart';

bool optionA = false;
bool optionB = false;
bool optionC = false;

Widget customMultipleCheckBox(context, cubit) => Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CheckboxListTile(
          title: Text('تغليف المنقولات',
              style: tajawalArabic(color: Colors.black87)),
          value: optionA,
          onChanged: (bool? value) {
            optionA = value = true;
          },
        ),
        CheckboxListTile(
          title: Text('تبريد المنقولات',
              style: tajawalArabic(color: Colors.black87)),
          value: optionB,
          onChanged: (bool? value) {
            optionB = value = true;
          },
        ),
      ],
    );

Widget customSingleCheckBox() => CheckboxListTile(
  title: Text('شامل العمالة',
      style: tajawalArabic(color: Colors.black87)),
  value: optionC,
  onChanged: (bool? value) {
    optionC = value = true;
  },
);
