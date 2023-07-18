import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../_core/functions/function.dart';
import '../../../../../_core/theme.dart';
import '../../../../user/layout/presentation/pages/search_screen.dart';

Widget createSearchField(context, {
  String searchTitle = "أبحث عن طلباتك",
  VoidCallback? onSubmitted,
  TextEditingController? controller,
}) =>
    TextFormField(
      readOnly: true,
      decoration: InputDecoration(
          hintText: searchTitle,
          suffixIcon: Icon(FontAwesomeIcons.search, color: Color.fromRGBO(118, 127, 157, 1)),
          fillColor: Color.fromRGBO(252, 252, 253, 1),
          hintStyle: tajawalArabic(),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(14.0),
              borderSide: BorderSide(color: Colors.black12, width: 2)),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(14.0),
              borderSide: BorderSide(color: Colors.black12, width: 2)),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(14.0),
              borderSide: BorderSide(color: Colors.black12, width: 2))),
      keyboardType: TextInputType.name,
      textAlign: TextAlign.right,
      style: tajawalArabic(color: Colors.black87),
      cursorColor: secondaryAppColor,
      onFieldSubmitted: (value) => onSubmitted,
      controller: controller,
      onTap: () => navTo(context, SearchPage()),
    );
