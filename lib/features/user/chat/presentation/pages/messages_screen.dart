import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../_core/functions/function.dart';
import '../widgets/create_message_field_widget.dart';

class UserMessagePage extends StatelessWidget {
  const UserMessagePage({super.key});

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
                    createUserMessageField(),
                    createUserMessageField(),
                    createUserMessageField(),
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
                    createUserMessageField(),
                    createUserMessageField(),
                    createUserMessageField(),
                    createUserMessageField(),
                    createUserMessageField(),
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
