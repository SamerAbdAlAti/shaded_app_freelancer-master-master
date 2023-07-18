import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:shaded_app_freelancer/_core/theme.dart';
import 'package:shaded_app_freelancer/features/user/layout/presentation/pages/notification_screen.dart';

import '../../../../../_core/functions/function.dart';
import '../widgets/search_form_field_widget.dart';
import '../../../my_services/presentation/pages/my_services_layout_screen.dart';

class UserHomePage extends StatelessWidget {
  const UserHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 30.0, right: 13.0),
                  child: Text(
                    " مرحباً! 👋",
                    locale: arabicLocale,
                    textAlign: TextAlign.right,
                    style: tajawalArabic(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        size: 22),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 18.0),
                  child: Row(
                    children: [
                      Text(
                        "التوصيل",
                        style: tajawalArabic(
                            size: 20,
                            color: Colors.black87,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        " أصبح سهلا ً ....",
                        style: tajawalArabic(
                            size: 20,
                            color: Colors.black87,
                            fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 18.0, vertical: 10.0),
                  child: Row(
                    children: [
                      Expanded(flex: 5, child: createSearchField(context)),
                      SizedBox(
                        width: 10.0,
                      ),
                      Expanded(
                        flex: 1,
                        child: badges.Badge(
                          position:
                          badges.BadgePosition.topEnd(top: -13, end: 32),
                          showBadge: true,
                          ignorePointer: false,
                          badgeContent: Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: Text('3',
                                style: numberStyle(
                                    color: Colors.white,
                                    size: 12,
                                    fontWeight: FontWeight.bold)),
                          ),
                          badgeStyle: badges.BadgeStyle(
                            shape: badges.BadgeShape.circle,
                            badgeColor: appColor,
                            padding: EdgeInsets.all(5),
                            elevation: 0,
                          ),
                          child: GestureDetector(
                            onTap: ()=> navTo(context, NotificationPage()),
                            child: CircleAvatar(
                                radius: 30,
                                child: Icon(
                                  Icons.notifications_none_rounded,
                                  color: appColor,
                                  size: 30,
                                )),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30.0),
                  child: TextButton(
                    onPressed: ()=> navTo(context, MyOptions()),
                    child: Text("خدماتنا",
                        style: tajawalArabic(
                            isLined: true,
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            size: 22)),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 30.0, right: 18.0),
                      child: Text(
                        " نقل سريع",
                        locale: arabicLocale,
                        textAlign: TextAlign.right,
                        style: tajawalArabic(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            size: 22),
                      ),
                    ),
                    Container(
                      height: 125.0,
                      width: double.infinity,
                      padding: const EdgeInsets.all(14.0),
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image(
                                image: AssetImage(
                                    'assets/images/test_images/car9.png'),
                                height: 65,
                                width: 96),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image(
                                image: AssetImage(
                                    'assets/images/test_images/car8.png'),
                                height: 65,
                                width: 96),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image(
                                image: AssetImage(
                                    'assets/images/test_images/car7.png'),
                                height: 65,
                                width: 96),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:[
                    Padding(
                      padding: const EdgeInsets.only(top: 30.0, right: 18.0),
                      child: Text(
                        " شاحنات ودينات",
                        locale: arabicLocale,
                        textAlign: TextAlign.right,
                        style: tajawalArabic(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            size: 22),
                      ),
                    ),
                    Container(
                      height: 125.0,
                      width: double.infinity,
                      padding: const EdgeInsets.all(14.0),
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image(
                                image: AssetImage(
                                    'assets/images/test_images/car6.png'),
                                height: 65,
                                width: 96),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image(
                                image: AssetImage(
                                    'assets/images/test_images/car5.png'),
                                height: 65,
                                width: 96),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image(
                                image: AssetImage(
                                    'assets/images/test_images/car4.png'),
                                height: 65,
                                width: 96),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 30.0, right: 18.0),
                      child: Text(
                        " آخرى",
                        locale: arabicLocale,
                        textAlign: TextAlign.right,
                        style: tajawalArabic(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            size: 22),
                      ),
                    ),
                    Container(
                      height: 125.0,
                      width: double.infinity,
                      padding: const EdgeInsets.all(14.0),
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image(
                                image: AssetImage(
                                    'assets/images/test_images/car1.png'),
                                height: 65,
                                width: 96),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image(
                                image: AssetImage(
                                    'assets/images/test_images/car2.png'),
                                height: 65,
                                width: 96),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image(
                                image: AssetImage(
                                    'assets/images/test_images/car3.png'),
                                height: 65,
                                width: 96),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


