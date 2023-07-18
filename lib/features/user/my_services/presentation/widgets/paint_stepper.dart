import 'package:flutter/material.dart';
import 'package:shaded_app_freelancer/_core/theme.dart';

Widget StepperCircles() => Stack(
      children: [
        Transform(
          transform: Matrix4.identity()
            ..translate(35.0, 5.0)
            ..rotateZ(1.57),
          child: Container(
            width: 1075,
            decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  width: 0.50,
                  strokeAlign: BorderSide.strokeAlignCenter,
                  color: Color(0xFF00D27F),
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 22.5),
          child: Column(
            children: [
              Container(
                width: 15,
                height: 15,
                decoration: ShapeDecoration(
                  color: Color(0xFF00D27F),
                  shape: OvalBorder(),
                ),
              ),
              SizedBox(
                height: 120.0,
                child: VerticalDivider(color: appColor),
              ),
              Container(
                width: 15,
                height: 15,
                decoration: ShapeDecoration(
                  color: Color(0xFF00D27F),
                  shape: OvalBorder(),
                ),
              ),
              SizedBox(
                height: 120.0,
                child: VerticalDivider(color: appColor),
              ),
              Container(
                width: 15,
                height: 15,
                decoration: ShapeDecoration(
                  color: Color(0xFF00D27F),
                  shape: OvalBorder(),
                ),
              ),
            ],
          ),
        ),
      ],
    );
