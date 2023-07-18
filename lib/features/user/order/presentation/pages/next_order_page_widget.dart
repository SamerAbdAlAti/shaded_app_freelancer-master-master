import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shaded_app_freelancer/_core/widgets/build_button.dart';

import '../../../../../_core/functions/function.dart';
import '../../../../../_core/theme.dart';

Widget userNextOfferPage() => SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            createUserNextOrder(),
          ],
        ),
      ),
    );

Widget createUserNextOrder() => Card(
  elevation: 0,
  shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(14.0),
      side: BorderSide(color: Colors.black12)),
  child: Container(
    height: 245,
    width: 327,
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
                      Text("توصيل عفش",
                          style: tajawalArabic(
                              color: Colors.black87,
                              size: 16,
                              fontWeight: FontWeight.bold)),
                    ],
                  ),
                  Center(child: Icon(Icons.menu))
                ],
              ),
              SizedBox(
                height: 5.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(Icons.calendar_month, color: Colors.red),
                  SizedBox(width: 10.0,),
                  Text("الأحد 3 أبريل 2023",
                      style: tajawalArabic(
                          color: Colors.black87,
                          size: 12,
                          fontWeight: FontWeight.bold)),
                ],
              ),
              SizedBox(height: 5.0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(Icons.location_on, color: Colors.blueAccent),
                  SizedBox(width: 10.0,),
                  Text("النويعمة. وادي الدوسر الرياض",
                      style: tajawalArabic(
                          color: Colors.black87,
                          size: 12,
                          fontWeight: FontWeight.bold)),
                ],
              ),
              SizedBox(height: 5.0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(Icons.call, color: Colors.teal),
                  SizedBox(width: 10.0,),
                  Text("يمكنك الاتصال ورؤية رقمي",
                      style: tajawalArabic(
                          color: Colors.black87,
                          size: 12,
                          fontWeight: FontWeight.bold)),
                ],
              ),
              SizedBox(height: 5.0,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "سيتم إعلامك عندما تبدأ في تلقي أسعار العروض",
                  style: tajawalArabic(
                      fontWeight: FontWeight.bold, size: 12),
                ),
              ),
              SizedBox(height: 15.0,),
              Center(
                child: buildButton(
                    color: appColor,
                    name: "عرض",
                    colorName: Colors.white,
                    width: 118,
                    hight: 34),
              ),
            ],
          ),
        ),
      ],
    ),
  ),
);
