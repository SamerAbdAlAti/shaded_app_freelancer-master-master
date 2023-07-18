import 'dart:async';

import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';

import '../../../../../_core/functions/function.dart';
import '../../../../../_core/theme.dart';

class OptionLayoutPage extends StatefulWidget {
  @override
  _OptionLayoutPageState createState() => _OptionLayoutPageState();
}

class _OptionLayoutPageState extends State<OptionLayoutPage> {
  DateTime now = DateTime.now();

  List<String> ordermessageResponse = [
    "سيتم نقلك لخدمة الطلب السريع",
    "سيتم نقلك لخدمة الشاحنات والدينات",
    "سيتم نقلك لخدمة آخرى"
  ];

  List<String> messageRequest = ["طلباتي السابقة", "خدمة جديدة", "دعم فني"];

  List<dynamic> controlResponses = [
    "عذراً, لا يوجد لديك أي طلبات سابقة, يرجى مراجعة الدعم الفني",
    ["طلب سريع", "شاحنات ودينات", "آخرى"],
    "تم تحويل رقمك للدعم الفني, سيتم الاتصال بك بعد قليل",
  ];

  // void handleMessageSelection(int index) {
  //   if (index >= 0 && index < controlResponses.length) {
  //     final response = controlResponses[index];
  //     Future.delayed(Duration(seconds: 3), () {
  //       setState(() {
  //         messageRequest.add(response);
  //       });
  //     });
  //
  //     if (response == "طلباتي السابقة") {
  //       Future.delayed(Duration(seconds: 3), () {
  //         return "عذرا";
  //       });
  //     } else if (response == "خدمة جديدة") {
  //       // Future.delayed(Duration(seconds: 3), () {
  //       //   navTo(context, CallClientPage());
  //       // });
  //     } else if (response == "دعم فني") {
  //       // Future.delayed(Duration(seconds: 3), () {
  //       //   navTo(context, ShareLocationPage());
  //       // });
  //     }
  //   }
  // }

  List<String> controlMessages = [
    "How can I help you?",
    "Call me",
    "Where do you want to go?"
  ];

  List<String> clientMessages = [];

  List<String> controlReplies = [
    "Go to service call",
    "Call this number: xxx-xxx-xxxx",
    "You can visit our office at xxx address"
  ];

  String selectedOption = '';

  void sendMessage(String message) {
    setState(() {
      clientMessages.add(message);
      selectedOption = '';
    });
    if (message == controlMessages[0]) {
      Timer(Duration(seconds: 3), () {
        receiveMessage(controlReplies[0]);
      });
    } else if (message == controlMessages[1]) {
      Timer(Duration(seconds: 3), () {
        receiveMessage(controlReplies[1]);
      });
    } else if (message == controlMessages[2]) {
      Timer(Duration(seconds: 3), () {
        receiveMessage(controlReplies[2]);
      });
    }
  }

  void receiveMessage(String message) {
    setState(() {
      controlMessages.add(message);
    });
  }


  @override
  Widget build(BuildContext context) {
    int hour = now.hour;
    int minute = now.minute;
    return Scaffold(
      backgroundColor: Color(0xFFF2F2F2),
      body: SafeArea(
        child: Column(
          children: [
            // header
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(flex: 2, child: Text("x", style: TextStyle(fontSize: 30),)),
                  Expanded(
                    flex: 5,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        AvatarGlow(
                          endRadius: 60.0,
                          shape: BoxShape.circle,
                          duration: Duration(milliseconds: 2000),
                          animate: true,
                          curve: Curves.easeOutQuad,
                          glowColor: appColor,
                          repeat: true,
                          showTwoGlows: true,
                          repeatPauseDuration: Duration(milliseconds: 100),
                          child: FloatingActionButton.extended(
                            onPressed: () => navTo(context, OptionLayoutPage()),
                            backgroundColor: appColor,
                            shape: CircleBorder(),
                            elevation: 0.0,
                            label: Center(
                                child: Image.asset(
                                    'assets/icons/ex-icon-app.png')),
                          ),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                                '${hour.toString().padLeft(2, '0')}:${minute.toString().padLeft(2, '0')}',
                                style: numberStyle(
                                    color: Colors.black87, size: 16)),
                          ],
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Container(
                      width: 110.45,
                      height: 37.36,
                      clipBehavior: Clip.antiAlias,
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                      ),
                      child: Center(
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.refresh,
                              color: Colors.black87,
                            ),
                            const SizedBox(width: 10.33),
                            Text(
                              'البدء من جديد',
                              style: TextStyle(
                                color: Color(0xFF3D3B3F),
                                fontSize: 12,
                                fontFamily: 'Almarai',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // message body
            Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: EdgeInsetsDirectional.symmetric(horizontal: 12),
                child: Container(
                  width: 220.0,
                  height: 50.0,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30.0)),
                  child: Center(child: Text("مساء الخير خليل مهدي")),
                ),
              ),
            ),
            SizedBox(height: 20),
            // Expanded(
            //   child: ListView.builder(
            //     itemCount: controlMessages.length,
            //     itemBuilder: (context, index) {
            //       final message = controlMessages[index];
            //       return ListTile(
            //         title: Text(
            //           message,
            //           textAlign: TextAlign.start,
            //         ),
            //         tileColor: Colors.grey[200],
            //       );
            //     },
            //   ),
            // ),
            // if (selectedOption.isNotEmpty)
            //   ElevatedButton(
            //     onPressed: () => sendMessage(selectedOption),
            //     child: Text('Send'),
            //   ),
            // Divider(),
            // ListView.builder(
            //   shrinkWrap: true,
            //   physics: NeverScrollableScrollPhysics(),
            //   itemCount: controlReplies.length,
            //   itemBuilder: (context, index) {
            //     final option = controlReplies[index];
            //     return RadioListTile(
            //       title: Text(option),
            //       value: option,
            //       groupValue: selectedOption,
            //       onChanged: (value) {
            //         setState(() {
            //           selectedOption = value.toString();
            //         });
            //       },
            //     );
            //   },
            // ),
          ],
        ),
      ),
    );
  }

  // void _addControlMessage(String message) {
  //   setState(() {
  //     _controlMessages.add(message);
  //   });
  // }
  //
  // void _addClientMessage(String message) {
  //   setState(() {
  //     _clientMessages.add(message);
  //   });
  // }
  //
  // void _startTimer(Duration duration, Function callback) {
  //   Timer(duration, callback);
  // }
}
