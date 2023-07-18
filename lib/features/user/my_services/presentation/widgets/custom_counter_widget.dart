import 'package:flutter/material.dart';
import 'package:shaded_app_freelancer/features/user/my_services/presentation/bloc-cubit/quick_cubit/quick_cubit.dart';

import '../../../../../_core/functions/function.dart';

Widget customStaffCounterWidget({dynamic value, VoidCallback? increaseFunction, VoidCallback? decreaseFunction}) =>
    Padding(
      padding: const EdgeInsets.symmetric(horizontal: 28.0, vertical: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("عامل", style: tajawalArabic()),
          Row(
            children: [
              Container(
                width: 40.0,
                height: 40.0,
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(color: Colors.black87)),
                child: IconButton(
                  icon: Icon(Icons.add),
                  onPressed: () => increaseFunction,
                ),
              ),
              SizedBox(width: 12.0),
              Center(
                child: Text(
                  value,
                  style: TextStyle(fontSize: 20),
                ),
              ),
              SizedBox(width: 12.0),
              Container(
                width: 40.0,
                height: 40.0,
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(color: Colors.black87)),
                child: IconButton(
                  icon: Icon(Icons.remove),
                  onPressed: () => decreaseFunction,
                ),
              ),
            ],
          )
        ],
      ),
    );

Widget customConditionCounterWidget({dynamic value, VoidCallback? increaseFunction, VoidCallback? decreaseFunction}) =>
    Padding(
      padding: const EdgeInsets.symmetric(horizontal: 28.0, vertical: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("فني تبريد وتكييف", style: tajawalArabic()),
          Row(
            children: [
              Container(
                width: 40.0,
                height: 40.0,
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(color: Colors.black87)),
                child: IconButton(
                  icon: Icon(Icons.add),
                  onPressed: () => increaseFunction,
                ),
              ),
              SizedBox(width: 12.0),
              Center(
                child: Text(
                  value,
                  style: TextStyle(fontSize: 20),
                ),
              ),
              SizedBox(width: 12.0),
              Container(
                width: 40.0,
                height: 40.0,
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(color: Colors.black87)),
                child: IconButton(
                  icon: Icon(Icons.remove),
                  onPressed: () => decreaseFunction,
                ),
              ),
            ],
          )
        ],
      ),
    );

Widget customCreateCounterWidget({int? value, VoidCallback? increaseFunction, VoidCallback? decreaseFunction}) =>
    Padding(
      padding: const EdgeInsets.symmetric(horizontal: 28.0, vertical: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("فني تبريد وتكييف", style: tajawalArabic()),
          Row(
            children: [
              Container(
                width: 40.0,
                height: 40.0,
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(color: Colors.black87)),
                child: IconButton(
                  icon: Icon(Icons.add),
                  onPressed: increaseFunction,
                ),
              ),
              SizedBox(width: 12.0),
              Center(
                child: Text(
                  "$value",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              SizedBox(width: 12.0),
              Container(
                width: 40.0,
                height: 40.0,
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(color: Colors.black87)),
                child: IconButton(
                  icon: Icon(Icons.remove),
                  onPressed: decreaseFunction,
                ),
              ),
            ],
          )
        ],
      ),
    );