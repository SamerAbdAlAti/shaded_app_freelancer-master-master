import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shaded_app_freelancer/_core/widgets/custom_appbar.dart';
import 'package:shaded_app_freelancer/features/User/layout/presentation/pages/home_screen.dart';
import 'package:shaded_app_freelancer/features/User/my_services/presentation/pages/tracking_option_widget.dart';
import 'package:shaded_app_freelancer/features/user/my_services/presentation/pages/quick_option_widget.dart';

import '../../../../../_core/functions/function.dart';
import '../../../../../_core/theme.dart';

import 'other_option_widget.dart';

enum Choices { quickOption, trackingOption, OtherOption }

Map<Choices, Widget> choicesPages = <Choices, Widget>{
  Choices.quickOption: UserQuickOption(),
  Choices.trackingOption: UserQuickOption(),
  Choices.OtherOption: UserOtherOption()
};

List<String> headers = ["بيك آب", "دينات وشاحنات", "آخرى"];

class MyOptions extends StatefulWidget {
  const MyOptions({super.key});

  @override
  State<MyOptions> createState() => _MyOptionsState();
}

class _MyOptionsState extends State<MyOptions> {
  Choices selectedSegment = Choices.quickOption;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${headers[selectedSegment.index]}", style: tajawalArabic()),
        toolbarHeight: 60,
      ),
      body: Center(
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                height: 30,
                child: CupertinoNavigationBar(
                  automaticallyImplyLeading: false,
                  leading: null,
                  trailing: null,
                  padding: EdgeInsetsDirectional.all(2),
                  middle: CupertinoSlidingSegmentedControl<Choices>(
                    padding: EdgeInsets.all(5),
                    thumbColor: appColor,
                    groupValue: selectedSegment,
                    onValueChanged: (Choices? value) {
                      if (value != null) {
                        setState(() {
                          selectedSegment = value;
                        });
                      }
                    },
                    children: <Choices, Widget>{
                      Choices.quickOption: Center(
                        child: Container(
                          padding: EdgeInsets.all(15.0),
                          child: Text(
                            'بيك آب',
                            style: tajawalArabic(
                                color: selectedSegment == Choices.quickOption
                                    ? CupertinoColors.white
                                    : Color.fromRGBO(153, 153, 153, 1)),
                          ),
                        ),
                      ),
                      Choices.trackingOption: Center(
                        child: Container(
                          padding: EdgeInsets.all(12.0),
                          child: Text(
                            'دينات وشاحنات',
                            style: tajawalArabic(
                                color: selectedSegment == Choices.trackingOption
                                    ? CupertinoColors.white
                                    : Color.fromRGBO(153, 153, 153, 1)),
                          ),
                        ),
                      ),
                      Choices.OtherOption: Center(
                        child: Container(
                          padding: EdgeInsets.all(12.0),
                          child: Text(
                            'آخرى',
                            style: tajawalArabic(
                                color: selectedSegment == Choices.OtherOption
                                    ? CupertinoColors.white
                                    : Color.fromRGBO(153, 153, 153, 1)),
                          ),
                        ),
                      ),
                    },
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: SingleChildScrollView(
                child: Center(
                  child: choicesPages[selectedSegment],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
