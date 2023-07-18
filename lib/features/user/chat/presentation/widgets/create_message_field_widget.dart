import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shaded_app_freelancer/_core/functions/function.dart';
import 'package:shaded_app_freelancer/_core/theme.dart';

Widget createUserMessageField() => Container(
      margin: EdgeInsetsDirectional.symmetric(vertical: 8),
      child: ListTile(
        leading: CircleAvatar(radius: 30.0),
        title: Text("نقل عفش",
            style: tajawalArabic(size: 14, fontWeight: FontWeight.bold)),
        subtitle: Text("تم الانتهاء من الخدمة يا فندم...",
            style:
                tajawalArabic(size: 12, color: Color.fromRGBO(36, 36, 36, 1))),
        trailing: Column(
          children: [
            Text("منذ 5 دقائق",
                style: tajawalArabic(
                    size: 12, fontWeight: FontWeight.bold, color: appColor)),
            CircleAvatar(
                radius: 12.0,
                backgroundColor: appColor,
                child: Center(
                  child: Text("4",
                      style:
                          tajawalArabic(size: 14, color: CupertinoColors.white)),
                ))
          ],
        ),
      ),
    );
