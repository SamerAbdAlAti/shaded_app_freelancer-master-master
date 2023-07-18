import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../../../../../_core/functions/function.dart';
import '../../../../../_core/theme.dart';

Widget createCaptainRatingCard()=> Card(
  elevation: 8.0,
  shadowColor: Colors.black12,
  child: Container(
    width: 330.0,
    height: 120,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Row(
            children: [
              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      backgroundColor: appColor,
                      radius: 20,
                      child: Icon(Icons.person,
                          color: Colors.grey[300], size: 32),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      "محمد عبدالله",
                      style: tajawalArabic(
                          size: 16, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              SizedBox(width: 17.0,),
              Expanded(
                child: Row(
                  children: [
                    RatingBar.builder(
                      initialRating: 3,
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemSize: 18,
                      itemPadding: EdgeInsets.symmetric(horizontal: 2.0),
                      itemBuilder: (context, _) => Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      onRatingUpdate: (rating) {
                        print(rating);
                      },
                    ),
                    SizedBox(width: 10.0,),
                    Text("5.0", style: numberStyle(size: 16),)
                  ],
                ),
              )
            ],
          ),
        ),
        Divider(indent: 25, endIndent: 25),
        Padding(
          padding: const EdgeInsets.only(right: 12.0, top: 12.0),
          child: Text(
            "ممتاز جداً",
            style: tajawalArabic(
                size: 16, fontWeight: FontWeight.w600),
          ),
        )
      ],
    ),
  ),
);