import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:flutter_svg/svg.dart';
import 'package:shaded_app_freelancer/_core/theme.dart';

import '../../../../../_core/functions/function.dart';
import '../../../order/presentation/widgets/order_card_widget.dart';
import '../widgets/search_form_field_widget.dart';
import 'notification_screen.dart';

class CaptainHomePage extends StatelessWidget {

  const CaptainHomePage({super.key});

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
                        "أصبح سهلا ً ....",
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
                            onTap: () => navTo(context, CaptainNotificationPage()),
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
                  padding: const EdgeInsets.symmetric(
                      horizontal: 22.0, vertical: 40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SvgPicture.asset("assets/images/completed_icon.svg",
                              height: 74, width: 74),
                          Text(
                            "10",
                            style: numberStyle(size: 18),
                          ),
                          Text(
                            "مكتمل",
                            style: tajawalArabic(size: 15),
                          )
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SvgPicture.asset("assets/images/non_icon.svg",
                              height: 74, width: 74),
                          Text(
                            "10",
                            style: numberStyle(size: 18),
                          ),
                          Text(
                            "مستبعد",
                            style: tajawalArabic(size: 15),
                          )
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SvgPicture.asset("assets/images/in-complete_icon.svg",
                              height: 74, width: 74),
                          Text(
                            "10",
                            style: numberStyle(size: 18),
                          ),
                          Text(
                            "قيد التنفيذ",
                            style: tajawalArabic(size: 15),
                          )
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SvgPicture.asset("assets/images/waiting_icon.svg",
                              height: 74, width: 74),
                          Text(
                            "10",
                            style: numberStyle(size: 18),
                          ),
                          Text(
                            "بإنتظار الموافقة",
                            style: tajawalArabic(size: 15),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 18.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "آخر الطلبات المنجزة",
                        style: tajawalArabic(
                            size: 20,
                            color: Colors.black87,
                            fontWeight: FontWeight.bold),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text("الكل",
                            style: tajawalArabic(
                                size: 20,
                                color: appColor,
                                fontWeight: FontWeight.w500)),
                      )
                    ],
                  ),
                ),
                createOrderCard(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
