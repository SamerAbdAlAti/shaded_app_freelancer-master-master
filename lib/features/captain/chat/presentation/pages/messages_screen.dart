import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shaded_app_freelancer/features/captain/chat/presentation/widgets/create_message_field_widget.dart';

import '../../../../../_core/functions/function.dart';

class CaptainMessagePage extends StatelessWidget {
  const CaptainMessagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Center(
          child: Container(
            margin: EdgeInsetsDirectional.symmetric(horizontal: 8.0),
            child: Column(
              children: [
                SizedBox(height: 40.0),
                Text("الرسائل",
                    style: tajawalArabic(size: 22, color: Colors.black54)),
                SizedBox(height: 40.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("أحدث الرسائل",
                        style: tajawalArabic(
                            size: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87)),
                    createCaptainMessageField(),
                    createCaptainMessageField(),
                    createCaptainMessageField(),
                  ],
                ),
                SizedBox(height: 20.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("الرسائل السابقة",
                        style: tajawalArabic(
                            size: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87)),
                    createCaptainMessageField(),
                    createCaptainMessageField(),
                    createCaptainMessageField(),
                    createCaptainMessageField(),
                    createCaptainMessageField(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
