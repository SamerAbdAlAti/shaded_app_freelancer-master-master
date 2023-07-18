import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:intl/intl.dart';
import 'package:shaded_app_freelancer/_core/functions/function.dart';

import '../../../../../_core/theme.dart';
import '../../../../../_core/widgets/build_button.dart';
import '../widgets/add_pic_widget.dart';
import '../widgets/custom_service_form_field.dart';

class UserOtherOption extends StatefulWidget {
  const UserOtherOption({super.key});

  @override
  State<UserOtherOption> createState() => _UserOtherOptionState();
}

class _UserOtherOptionState extends State<UserOtherOption> {
  @override
  Widget build(BuildContext context) {
    bool optionA = false;
    bool optionB = false;
    int currStep = 2;

    return SingleChildScrollView(
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            customLongFormField(),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "أضف صورة للمنقولات",
                    style: tajawalArabic(
                        fontWeight: FontWeight.bold,
                        color: Colors.black87),
                  ),
                  // Padding(
                  //   padding: const EdgeInsets.only(top: 18.0),
                  //   child: Row(
                  //     children: [
                  //       addImage(),
                  //       addImage(),
                  //       addImage(),
                  //     ],
                  //   ),
                  // ),
                ],
              ),
            ),
            SizedBox(height: 15.0,),
            Padding(
              padding:
              const EdgeInsets.only(right: 12.0, left: 30.0),
              child: customServiceFormField(
                label: "الموقع",
                hint: "العنوان",
                postIcon: Icons.location_on,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 20.0, right: 12.0, left: 30.0),
              child: customCalenderFormField(
                context,
                label: "تحديد اليوم",
              ),
            ),
            SizedBox(height: 15.0,),
            Center(child: buildButton(color: appColor, name: "تأكيد الطلب", colorName: Colors.white))
          ],
        ),
      ),
    );
  }
}
