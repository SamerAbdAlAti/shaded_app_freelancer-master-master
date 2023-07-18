import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:shaded_app_freelancer/_core/functions/function.dart';
import 'package:shaded_app_freelancer/_core/theme.dart';

// successfull dialog
AwesomeDialog successDialog(
  context,
  title, {
  VoidCallback? okPress,
  VoidCallback? cancelPress,
}) =>
    AwesomeDialog(
      context: context,
      animType: AnimType.SCALE,
      dialogType: DialogType.SUCCES,
      title: title,
      titleTextStyle: tajawalArabic(),
      btnOkOnPress: okPress,
    )..show();

// error dialog
AwesomeDialog errorDialog(
  context,
  title, {
  VoidCallback? okPress,
  VoidCallback? cancelPress,
}) =>
    AwesomeDialog(
      context: context,
      animType: AnimType.SCALE,
      dialogType: DialogType.ERROR,
      title: title,
      titleTextStyle: tajawalArabic(),
      btnOkOnPress: okPress,
    )..show();

// loading dialog
AwesomeDialog loadingDialog(
  context,
  title, {
  VoidCallback? okPress,
  VoidCallback? cancelPress,
}) =>
    AwesomeDialog(
      context: context,
      animType: AnimType.SCALE,
      dialogType: DialogType.INFO,
      title: title,
      titleTextStyle: tajawalArabic(),
      btnOkOnPress: okPress,
    )..show();

// normal dialog
AwesomeDialog normalDialog(
  context,
  title, {
  Function()? okPress,
  VoidCallback? cancelPress,
}) =>
    AwesomeDialog(
        context: context,
        animType: AnimType.BOTTOMSLIDE,
        dialogType: DialogType.NO_HEADER,
        title: title,
        titleTextStyle: tajawalArabic(),
        btnOkOnPress: okPress,
        btnOk: AnimatedButton(
          isFixedHeight: false,
          pressEvent: () => okPress,
          text: 'موافق',
          buttonTextStyle: tajawalArabic(color: Colors.white),
          width: 60.0,
          color: appColor,
          borderRadius: BorderRadius.circular(15.0),
        ))
      ..show();
