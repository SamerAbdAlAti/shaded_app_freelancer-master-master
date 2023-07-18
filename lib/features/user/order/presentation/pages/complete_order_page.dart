import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../_core/functions/function.dart';
import '../../../../../_core/theme.dart';
import 'next_order_page_widget.dart';

Widget userCompletedOfferPage() => SingleChildScrollView(
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
                padding: EdgeInsetsDirectional.symmetric(horizontal: 12.0),
                child: Text(
                  "أحدث الطلبات",
                  style: tajawalArabic(fontWeight: FontWeight.bold),
                )),
            createUserNewCompleteOrder(),
            SizedBox(height: 14.0,),
            Padding(
                padding: EdgeInsetsDirectional.symmetric(horizontal: 12.0),
                child: Text(
                  "الطلبات السابقة",
                  style: tajawalArabic(fontWeight: FontWeight.bold),
                )),
            createUserCompletedOrderWidget(),
            createUserCompletedOrderWidget(),
            createUserCompletedOrderWidget()
          ],
        ),
      ),
    );


Widget createUserNewCompleteOrder()=> Center(
  child: Card(
    elevation: 0,
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(14.0),
        side: BorderSide(color: Colors.black12)),
    child: Container(
      height: 238,
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
                            color: Colors.black45,
                            size: 12,
                            fontWeight: FontWeight.bold)),
                  ],
                ),
                SizedBox(height: 20.0,),
                Divider(),
                SizedBox(height: 20.0,),
                Text("مكتملة", style: tajawalArabic(size: 20)),
              ],
            ),
          ),
        ],
      ),
    ),
  ),
);

Widget createUserCompletedOrderWidget() => Center(
      child: Card(
        elevation: 0,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14.0),
            side: BorderSide(color: Colors.black12)),
        child: Container(
          height: 115,
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
                            Text("تفاصيل متعلقة بالطلب ونوعه",
                                style: tajawalArabic(
                                    color: Color.fromRGBO(76, 69, 91, 1),
                                    size: 14,
                                    fontWeight: FontWeight.bold)),
                          ],
                        ),
                        Center(
                            child: Text("تم التوصيل",
                                style: tajawalArabic(
                                    color: appColor,
                                    fontWeight: FontWeight.bold)))
                      ],
                    ),
                    SizedBox(
                      height: 12.0,
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
