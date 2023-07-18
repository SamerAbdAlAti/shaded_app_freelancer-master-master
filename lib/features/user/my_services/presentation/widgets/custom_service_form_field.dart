// single form field with label
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:intl/intl.dart';

import '../../../../../_core/functions/function.dart';
import '../../../../../_core/theme.dart';

Widget customServiceFormField({
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
              prefixIcon:
                  preIcon != null ? Icon(preIcon, color: Colors.black54) : null,
              suffixIcon: postIcon != null
                  ? Icon(postIcon, color: Colors.black54)
                  : null,
              hintStyle: tajawalArabic(color: Colors.black45),
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
          onTap: onTap,
          controller: controller,
        ),
      ],
    );

Widget customCalenderFormField(
  context, {
  TextEditingController? controller,
  String? label,
  double? labelSize,
}) =>
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label!,
          style: tajawalArabic(size: labelSize, fontWeight: FontWeight.w600),
        ),
        SizedBox(height: 10),
        FormBuilderDateTimePicker(
          name: 'date_field',
          initialValue: DateTime.now(),
          decoration: InputDecoration(
              fillColor: Color.fromRGBO(242, 242, 242, 0.5),
              focusColor: Color.fromRGBO(242, 242, 242, 0.5),
              suffixIcon: Icon(Icons.calendar_month, color: Colors.black54),
              hintStyle: tajawalArabic(color: Colors.black45),
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
          inputType: InputType.date,
          cursorColor: appColor,
          controller: controller,
          format: DateFormat('yyyy-MM-dd'),
          // validator: FormBuilderValidators.required(context),
        ),
      ],
    );

Widget customLongFormField({
  TextEditingController? controller,
  VoidCallback? onTab,
  Function? validate,
  VoidCallback? onSubmit,
}) =>
    Padding(
      padding: EdgeInsetsDirectional.symmetric(vertical: 12, horizontal: 18),
      child: TextFormField(
        decoration: InputDecoration(
            fillColor: Color.fromRGBO(242, 242, 242, 0.5),
            focusColor: Color.fromRGBO(242, 242, 242, 0.5),
            hintText:
                "ضع قائمة بجميع الأشياء التي  تريد نقلها  / هل هناك أي تفاصيل أخرى مهمة تود إضافتها؟",
            hintStyle: tajawalArabic(
                color: Colors.grey[600], fontWeight: FontWeight.w600, size: 12),
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
        keyboardType: TextInputType.text,
        textAlign: TextAlign.right,
        maxLines: 4,
        style: tajawalArabic(color: Colors.black87),
        cursorColor: secondaryAppColor,
        onFieldSubmitted: (value) => onSubmit,
        validator: (value) {
          if (value!.isEmpty) {
            return "يرجى ملء هذا الحقل الفارغ";
          }
          return null;
        },
        // controller: controller,
      ),
    );
