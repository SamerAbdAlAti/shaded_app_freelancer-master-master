
import 'package:flutter/material.dart';
import 'dart:io';
import 'package:url_launcher_android/url_launcher_android.dart';
import 'package:url_launcher_ios/url_launcher_ios.dart';

class PrivacyPolicyPage extends StatelessWidget {
  const PrivacyPolicyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // child: Platform.isAndroid
        //     ? UrlLauncherAndroid(
        //         "https://sites.google.com/view/shadeed-app/%D8%A7%D9%84%D8%B5%D9%81%D8%AD%D8%A9-%D8%A7%D9%84%D8%B1%D8%A6%D9%8A%D8%B3%D9%8A%D8%A9")
        //     : UrlLauncherIOS(
        //         "https://sites.google.com/view/shadeed-app/%D8%A7%D9%84%D8%B5%D9%81%D8%AD%D8%A9-%D8%A7%D9%84%D8%B1%D8%A6%D9%8A%D8%B3%D9%8A%D8%A9"),
        // child: UrlLauncher(),
      ),
    );
  }
}
