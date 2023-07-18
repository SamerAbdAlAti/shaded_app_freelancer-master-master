import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import '../../../../../_core/functions/function.dart';
import '../../../../../_core/theme.dart';

// single form field with label
Widget customEditFormField({
  String? label,
  double? labelSize,
  String? hint,
  IconData? preIcon,
  IconData? postIcon,
  TextInputType? type,
  VoidCallback? onSubmitted,
  VoidCallback? validate,
  VoidCallback? onChange,
  dynamic lengthTheValue,
  String? whenUnCorrect,
  String? whenEmpty,
  TextEditingController? controller,
  bool isRead = false,
}) =>
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
          child: Text(
            label!,
            style: tajawalArabic(size: labelSize, fontWeight: FontWeight.w600),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: TextFormField(
            readOnly: isRead == false ? false : true,
            decoration: InputDecoration(
                hintText: hint,
                hintStyle: tajawalArabic(color: Colors.black54),
                prefixIcon: Icon(preIcon),
                fillColor: Color.fromRGBO(242, 242, 242, 0.5),
                focusColor: Color.fromRGBO(242, 242, 242, 0.5),
                filled: true,
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(14),
                    borderSide: BorderSide(color: Colors.black54, width: 1)),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(14),
                    borderSide: BorderSide(color: Colors.black54, width: 1)),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(14),
                    borderSide: BorderSide(color: Colors.black54, width: 1))),
            keyboardType: type,
            style: tajawalArabic(color: Colors.black87),
            cursorColor: appColor,
            controller: controller,
            validator: (value) {
              if (value!.isEmpty) {
                return '${whenEmpty}';
              } else if (value.length != lengthTheValue) {
                print("Empty");
                return '${whenUnCorrect}';
              } else {
                print("Non empty");
                return null;
              }
            },
            onChanged: (value) => onChange,
          ),
        ),
        SizedBox(height: 20.0,)
      ],
    );

Widget customEditPhoneNumber(context, {
  TextEditingController? phoneController,
  Function? onChange,
  Function? onTap,
  Function? onSubmit,
})=> Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
      child: Text(
        "رقم الموبايل",
        style: tajawalArabic(size: 14, fontWeight: FontWeight.w600),
      ),
    ),
    Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14.0),
      child: Directionality(
        textDirection: TextDirection.ltr,
        child: IntlPhoneField(
          textAlign: TextAlign.left,
          cursorColor: appColor,
          decoration: InputDecoration(
            filled: true,
            fillColor: Color.fromRGBO(242, 242, 242, 0.5),
            focusColor: Color.fromRGBO(242, 242, 242, 0.5),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(14.0),
              borderSide: BorderSide(),
            ),
          ),
          initialCountryCode: 'SA',
          keyboardType: TextInputType.phone,
          onChanged: (phone) {
            print(phone.completeNumber);
          },
        ),
      ),
    ),
    SizedBox(height: 20.0,)
  ],
);