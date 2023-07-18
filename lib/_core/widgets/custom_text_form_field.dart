import 'package:flutter/material.dart';

import '../functions/function.dart';
import '../theme.dart';

// single form field
Widget customSingleFormField({
  String? hint,
  IconData? preIcon,
  IconData? postIcon,
  TextInputType? type,
  VoidCallback? onSubmitted,
  VoidCallback? onChange,
  TextEditingController? controller,
}) =>
    Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32.0),
      child: TextFormField(
        decoration: InputDecoration(
            hintText: hint,
            hintStyle: tajawalArabic(),
            prefixIcon: Icon(preIcon),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: appColor, width: 2)),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: appColor, width: 2)),
            border: OutlineInputBorder(
                borderSide: BorderSide(color: appColor, width: 2))),
        keyboardType: TextInputType.phone,
        textAlign: TextAlign.right,
        style: tajawalArabic(color: Colors.black54),
        cursorColor: appColor,
        controller: controller,
        validator: (value) {
          if (value!.isEmpty) {
            print("Empty");
            return 'برجاء أدخل رقم الهاتف';
          } else if (value.length != 10) {
            print("Empty");
            return 'الرقم غير صحيحاً';
          } else {
            print("Non empty");
            return null;
          }
        },
        onChanged: (value) => onChange,
      ),
    );

// single form field with black border
Widget customSingleFormFieldWithBlackBorder({
  String? hint,
  IconData? preIcon,
  TextInputType? type,
  VoidCallback? onSubmitted,
  String? whenEmpty,
  dynamic lengthTheValue,
  String? whenUnCorrect,
  VoidCallback? onChange,
  TextEditingController? controller,
}) =>
    Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32.0),
      child: TextFormField(
        decoration: InputDecoration(
            hintText: hint,
            hintStyle: tajawalArabic(),
            prefixIcon: Icon(preIcon),
            fillColor: Color.fromRGBO(255, 255, 255, 1),
            filled: true,
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black87, width: 1)),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black87, width: 1)),
            border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black87, width: 1))),
        keyboardType: type,
        style: tajawalArabic(color: Colors.black54),
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
    );

// single form field with label
Widget customFormField({
  String? label,
  double? labelSize,
  String? hint,
  IconData? preIcon,
  IconData? postIcon,
  TextInputType? type,
  VoidCallback? onSubmitted,
  VoidCallback? onTap,
  TextEditingController? controller,
}) =>
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label!,
          style: tajawalArabic(size: labelSize, fontWeight: FontWeight.w600),
        ),
        SizedBox(height: 10),
        TextFormField(
          decoration: InputDecoration(
              fillColor: Color.fromRGBO(242, 242, 242, 0.5),
              focusColor: Color.fromRGBO(242, 242, 242, 0.5),
              hintText: hint,
              prefixIcon: Icon(preIcon, color: appColor),
              suffixIcon: Icon(postIcon, color: appColor),
              hintStyle: tajawalArabic(color: Colors.black),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(14.0),
                  borderSide: BorderSide(
                      color: Color.fromRGBO(249, 249, 250, 1), width: 5)),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(14.0),
                  borderSide: BorderSide(
                      color: Color.fromRGBO(249, 249, 250, 1), width: 5)),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(14.0),
                  borderSide: BorderSide(
                      color: Color.fromRGBO(249, 249, 250, 1), width: 5))),
          keyboardType: type,
          textAlign: TextAlign.right,
          style: tajawalArabic(color: Colors.black87),
          cursorColor: secondaryAppColor,
          onFieldSubmitted: (value) => onSubmitted,
          controller: controller,
        ),
      ],
    );

// custom column form fields  with label
Widget customMultipleFormField({
  String? label,
  double? labelSize,
  String? firstHint,
  String? secondHint,
  TextInputType? firstType,
  TextInputType? secondType,
  VoidCallback? onSubmittedForFirstField,
  VoidCallback? onSubmittedForSecondField,
  TextEditingController? firstController,
  TextEditingController? secondController,

}) =>
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label!,
          style: tajawalArabic(size: labelSize, fontWeight: FontWeight.w600),
        ),
        SizedBox(height: 10),
        TextFormField(
          decoration: InputDecoration(
              hintText: firstHint,
              hintStyle: tajawalArabic(),
              fillColor: Color.fromRGBO(242, 242, 242, 0.5),
              focusColor: Color.fromRGBO(242, 242, 242, 0.5),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(14.0),
                  borderSide: BorderSide(
                      color: Color.fromRGBO(249, 249, 250, 1), width: 5)),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(14.0),
                  borderSide: BorderSide(
                      color: Color.fromRGBO(249, 249, 250, 1), width: 5)),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(14.0),
                  borderSide: BorderSide(
                      color: Color.fromRGBO(249, 249, 250, 1), width: 5))),
          keyboardType: firstType,
          textAlign: TextAlign.right,
          style: tajawalArabic(color: Colors.black54),
          cursorColor: secondaryAppColor,
          onFieldSubmitted: (value) => onSubmittedForFirstField,
          controller: firstController,
        ),
        SizedBox(height: 5),
        TextFormField(
          decoration: InputDecoration(
              hintText: secondHint,
              hintStyle: tajawalArabic(),
              fillColor: Color.fromRGBO(242, 242, 242, 0.5),
              focusColor: Color.fromRGBO(242, 242, 242, 0.5),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(14.0),
                  borderSide: BorderSide(
                      color: Color.fromRGBO(249, 249, 250, 1), width: 5)),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(14.0),
                  borderSide: BorderSide(
                      color: Color.fromRGBO(249, 249, 250, 1), width: 5)),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(14.0),
                  borderSide: BorderSide(
                      color: Color.fromRGBO(249, 249, 250, 1), width: 5))),
          keyboardType: secondType,
          textAlign: TextAlign.right,
          style: tajawalArabic(color: Colors.black54),
          cursorColor: secondaryAppColor,
          onFieldSubmitted: (value) => onSubmittedForSecondField,
          controller: secondController,
        ),
      ],
    );

// custom row form field with 2 labels
Widget customMultipleRowFormField({
  String? firstLabel,
  String? secondLabel,
  double? labelSize,
  String? firstHint,
  String? secondHint,
  TextInputType? firstType,
  TextInputType? secondType,
  IconData? firstPreIcon,
  IconData? firstPostIcon,
  IconData? secondPreIcon,
  IconData? secondPostIcon,
  VoidCallback? onSubmittedForFirstField,
  VoidCallback? onSubmittedForSecondField,
  TextEditingController? firstController,
  TextEditingController? secondController,
}) =>
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              firstLabel!,
              style:
                  tajawalArabic(size: labelSize, fontWeight: FontWeight.w600),
            ),
            SizedBox(width: 85),
            Text(
              secondLabel!,
              style:
                  tajawalArabic(size: labelSize, fontWeight: FontWeight.w600),
            ),
          ],
        ),
        SizedBox(height: 10),
        Row(
          children: [
            Expanded(
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: firstHint,
                    hintStyle: tajawalArabic(),
                    suffixIcon: Icon(
                      firstPostIcon,
                      color: Colors.grey[300],
                    ),
                    fillColor: Color.fromRGBO(242, 242, 242, 0.5),
                    focusColor: Color.fromRGBO(242, 242, 242, 0.5),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(14.0),
                        borderSide: BorderSide(
                            color: Color.fromRGBO(249, 249, 250, 1), width: 5)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(14.0),
                        borderSide: BorderSide(
                            color: Color.fromRGBO(249, 249, 250, 1), width: 5)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(14.0),
                        borderSide: BorderSide(
                            color: Color.fromRGBO(249, 249, 250, 1),
                            width: 5))),
                keyboardType: firstType,
                textAlign: TextAlign.right,
                style: tajawalArabic(color: Colors.black54),
                cursorColor: secondaryAppColor,
                onFieldSubmitted: (value) => onSubmittedForFirstField,
                controller: firstController,
              ),
            ),
            SizedBox(width: 18),
            Expanded(
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: secondHint,
                    suffixIcon: Icon(secondPostIcon, color: Colors.grey[300]),
                    hintStyle: tajawalArabic(),
                    fillColor: Color.fromRGBO(242, 242, 242, 0.5),
                    focusColor: Color.fromRGBO(242, 242, 242, 0.5),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(14.0),
                        borderSide: BorderSide(
                            color: Color.fromRGBO(249, 249, 250, 1), width: 5)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(14.0),
                        borderSide: BorderSide(
                            color: Color.fromRGBO(249, 249, 250, 1), width: 5)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(14.0),
                        borderSide: BorderSide(
                            color: Color.fromRGBO(249, 249, 250, 1),
                            width: 5))),
                keyboardType: secondType,
                textAlign: TextAlign.right,
                style: tajawalArabic(color: Colors.black54),
                cursorColor: secondaryAppColor,
                onFieldSubmitted: (value) => onSubmittedForSecondField,
                controller: secondController,
              ),
            ),
          ],
        ),
      ],
    );

// single form field with label
Widget customFormFieldWithDescription({
  String? label,
  String? description,
  String? hint,
  IconData? preIcon,
  IconData? postIcon,
  TextInputType? type,
  VoidCallback? onSubmitted,
  TextEditingController? controller,
}) =>
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label!,
          style: tajawalArabic(size: 14, fontWeight: FontWeight.bold),
        ),
        Text(
          description!,
          style: tajawalArabic(size: 12, fontWeight: FontWeight.w600),
        ),
        SizedBox(height: 10),
        TextFormField(
          decoration: InputDecoration(
              fillColor: Color.fromRGBO(242, 242, 242, 0.5),
              focusColor: Color.fromRGBO(242, 242, 242, 0.5),
              hintText: hint,
              prefixIcon: Icon(preIcon, color: appColor),
              suffixIcon: Icon(postIcon, color: appColor),
              hintStyle: tajawalArabic(color: Colors.black),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(14.0),
                  borderSide: BorderSide(
                      color: Color.fromRGBO(249, 249, 250, 1), width: 5)),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(14.0),
                  borderSide: BorderSide(
                      color: Color.fromRGBO(249, 249, 250, 1), width: 5)),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(14.0),
                  borderSide: BorderSide(
                      color: Color.fromRGBO(249, 249, 250, 1), width: 5))),
          keyboardType: type,
          textAlign: TextAlign.right,
          style: tajawalArabic(color: Colors.black87),
          cursorColor: secondaryAppColor,
          onFieldSubmitted: (value) => onSubmitted,
          controller: controller,
        ),
      ],
    );
