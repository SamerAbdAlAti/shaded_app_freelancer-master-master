import 'package:flutter/material.dart';

import '../../../../../_core/functions/function.dart';

Widget customDropDown(
    {required String title, List<String>? list, String? selected}) {
  return Padding(
    padding: EdgeInsets.all(8),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: tajawalArabic(size: 14, fontWeight: FontWeight.w600),
        ),
        SizedBox(height: 10),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          decoration: BoxDecoration(
              color: Color.fromRGBO(242, 242, 242, 0.5),
              border: Border.all(
                  width: 7, color: Color.fromRGBO(242, 242, 242, 0.5)),
              borderRadius: BorderRadius.circular(12.0),
              shape: BoxShape.rectangle),
          child: DropdownButton<String?>(
              value: selected,
              elevation: 0,
              dropdownColor: Colors.grey[200],
              underline: SizedBox(),
              isExpanded: true,
              hint: Text(list![1].toString()),
              style: tajawalArabic(fontWeight: FontWeight.bold, size: 16),
              items: list
                  .map<DropdownMenuItem<String?>>((e) => DropdownMenuItem(
                      value: e,
                      child: Text(
                        e.toString(),
                        style: tajawalArabic(color: Colors.black87),
                      )))
                  .toList(),
              onChanged: (String? value) {}),
        ),
      ],
    ),
  );
}

Widget multipleCustomDropDown(
    {required String title, List<String>? firstList, String? firstSelected, List<String>? secondList, String? secondSelected}) {
  return Padding(
    padding: EdgeInsets.all(8),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: tajawalArabic(size: 14, fontWeight: FontWeight.w600),
        ),
        SizedBox(height: 10),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          decoration: BoxDecoration(
              color: Color.fromRGBO(242, 242, 242, 0.5),
              border: Border.all(
                  width: 7, color: Color.fromRGBO(242, 242, 242, 0.5)),
              borderRadius: BorderRadius.circular(12.0),
              shape: BoxShape.rectangle),
          child: DropdownButton<String?>(
              value: firstSelected,
              elevation: 0,
              dropdownColor: Colors.grey[200],
              underline: SizedBox(),
              isExpanded: true,
              hint: Text(firstList![1].toString()),
              style: tajawalArabic(fontWeight: FontWeight.bold, size: 16),
              items: firstList
                  .map<DropdownMenuItem<String?>>((e) => DropdownMenuItem(
                  value: e,
                  child: Text(
                    e.toString(),
                    style: tajawalArabic(color: Colors.black87),
                  )))
                  .toList(),
              onChanged: (String? value) {}),
        ),
        SizedBox(height: 10),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          decoration: BoxDecoration(
              color: Color.fromRGBO(242, 242, 242, 0.5),
              border: Border.all(
                  width: 7, color: Color.fromRGBO(242, 242, 242, 0.5)),
              borderRadius: BorderRadius.circular(12.0),
              shape: BoxShape.rectangle),
          child: DropdownButton<String?>(
              value: secondSelected,
              elevation: 0,
              dropdownColor: Colors.grey[200],
              underline: SizedBox(),
              isExpanded: true,
              hint: Text(secondList![1].toString()),
              style: tajawalArabic(fontWeight: FontWeight.bold, size: 16),
              items: secondList
                  .map<DropdownMenuItem<String?>>((e) => DropdownMenuItem(
                  value: e,
                  child: Text(
                    e.toString(),
                    style: tajawalArabic(color: Colors.black87),
                  )))
                  .toList(),
              onChanged: (String? value) {}),
        ),
      ],
    ),
  );
}
