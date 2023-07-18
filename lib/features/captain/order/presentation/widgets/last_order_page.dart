import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../_core/functions/function.dart';
import '../../../../../_core/theme.dart';

Widget captainLastOfferPage() => Container(
      child: Column(
        children: [
          createLastOrderWidget(),
          createLastOrderWidget(),
          createLastOrderWidget()
        ],
      ),
    );

Widget createLastOrderWidget()=> Center(
  child: Card(
    elevation: 0,
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(14.0),
        side: BorderSide(color: Colors.black12)),
    child: Container(
      height: 105,
      width: 335,
      color: Color.fromRGBO(249, 249, 249, 1),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding:
            const EdgeInsets.symmetric(vertical: 22, horizontal: 22),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "#158756",
                          style: tajawalArabic(
                              color: Color.fromRGBO(136, 132, 158, 1),
                              size: 14,
                              fontWeight: FontWeight.bold),
                        ),
                        Text("توصيل أثاث  و أغراض ",
                            style: tajawalArabic(
                                color: Color.fromRGBO(76, 69, 91, 1),
                                size: 16,
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                    Center(
                        child: Text("مكتمل",
                            style: tajawalArabic(
                                color: appColor,
                                fontWeight: FontWeight.bold)))
                  ],
                ),
                Text("22/11/2022",
                    style: tajawalArabic(
                        color: Colors.black87,
                        size: 12,
                        fontWeight: FontWeight.bold)),
              ],
            ),
          ),
        ],
      ),
    ),
  ),
);