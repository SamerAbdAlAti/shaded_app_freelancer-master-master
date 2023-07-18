import 'package:flutter/widgets.dart';

class MessageFromControlModel{
  int id;
  bool isSentFromMe;
  Widget widget;

  MessageFromControlModel({required this.id ,required this.isSentFromMe, required this.widget});
}

class MessageFromMeModel{
  int id;
  bool isSentFromMe;
  Widget widget;

  MessageFromMeModel(this.id, this.isSentFromMe, this.widget);
}