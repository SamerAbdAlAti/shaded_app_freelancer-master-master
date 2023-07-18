import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import '../../../../_core/functions/function.dart';
import '../../../../_core/theme.dart';

Widget buildLoginNumberForm(
        {required VoidCallback function,
        required TextEditingController controller,
        required VoidCallback onChanged,
        required VoidCallback onSave}) =>
    Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Directionality(
        textDirection: TextDirection.ltr,
        child: IntlPhoneField(
          textAlign: TextAlign.left,
          cursorColor: appColor,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(14.0),
              borderSide: BorderSide(),
            ),
          ),
          initialCountryCode: 'SA',
          onSaved: (dynamic newValue) => onSave,
          controller: controller,
          keyboardType: TextInputType.phone,
          // onChanged: (dynamic phone) {},
          validator: (value) {
            if (value!.number.isEmpty) {
              print("Empty");
              return 'برجاء أدخل رقم الهاتف';
            } else if (value.number.length != 12) {
              print("مش 12 خانات");
              return 'الرقم غير صحيحاً';
            } else if (value.number.startsWith("966")) {
              print("الرقم غلط يسطا");
              return 'الرقم غير صحيحاً';
            } else {
              print("ملي يا ابن الناس");
              return null;
            }
          },
        ),
      ),
    );
