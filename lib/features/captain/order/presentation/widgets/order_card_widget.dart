import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shaded_app_freelancer/_core/functions/function.dart';
import 'package:shaded_app_freelancer/_core/theme.dart';

Widget createOrderCard() => Center(
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
                            Text("نقل سريع",
                                style: tajawalArabic(
                                    color: Color.fromRGBO(76, 69, 91, 1),
                                    size: 16,
                                    fontWeight: FontWeight.bold)),
                            Text(
                              "Ford Focus 2022",
                              style: tajawalArabic(
                                  color: Color.fromRGBO(136, 132, 158, 1),
                                  size: 14,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        Container(
                          height: 25,
                          width: 80,
                          decoration: BoxDecoration(
                              color: appColor,
                              borderRadius: BorderRadius.circular(6.0)),
                          child: Center(
                              child: Text("تم التوصيل",
                                  style: tajawalArabic(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold))),
                        )
                      ],
                    ),
                    Text("توصيل صندوق مستلزمات سباكة للبيت",
                        style: tajawalArabic(
                            color: Colors.black87,
                            size: 16,
                            fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
