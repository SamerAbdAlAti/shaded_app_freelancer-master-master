import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shaded_app_freelancer/_core/theme.dart';
import 'package:shaded_app_freelancer/features/authentication/presentation/pages/login_screen.dart';
import 'package:shaded_app_freelancer/features/captain/account_details/presentation/pages/rating_screen.dart';

import '../../../../../_core/functions/function.dart';
import '../../../../../_core/widgets/custom_list_tile_widget.dart';

class CaptainMyProfilePage extends StatelessWidget {
  const CaptainMyProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Container(
          padding: EdgeInsets.only(top: 56),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Stack(
                    alignment: AlignmentDirectional.bottomStart,
                    children: [
                      Container(
                        decoration: ShapeDecoration(
                            shape: CircleBorder(
                                eccentricity: 0.62,
                                side: BorderSide(
                                    color: Color.fromRGBO(178, 238, 238, 1),
                                    width: 6))),
                        child: CircleAvatar(
                          radius: 50.0,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(CupertinoIcons.camera,
                            color: Colors.white, size: 18),
                        style: ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(appColor),
                            shape: MaterialStatePropertyAll(CircleBorder(
                                eccentricity: 0.62,
                                side: BorderSide(
                                    color: Color.fromRGBO(178, 238, 238, 1),
                                    width: 3)))),
                      )
                    ],
                  ),
                  SizedBox(height: 14),
                  Center(
                    child: Text(
                      "جهاد السماك",
                      style:
                          tajawalArabic(size: 20, fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: customListTileWidget(context,
                    icon: Icons.wallet,
                    title: "حسابي",
                    isIconTrail: false,
                    widget: RichText(
                      text: TextSpan(
                        style: tajawalArabic(
                            size: 16,
                            color: Colors.black87,
                            fontWeight: FontWeight.bold),
                        children: [
                          TextSpan(
                            text: '150',
                            style: numberStyle(
                                color: appColor,
                                size: 16,
                                fontWeight: FontWeight.bold),
                          ),
                          TextSpan(text: ' '),
                          TextSpan(text: 'ر.س'),
                        ],
                      ),
                    ),
                    isScreen: false),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: customListTileWidget(context,
                    isIconLead: false,
                    svgIcon: "assets/icons/chart.svg",
                    title: "إجمالي رسوم التوصيل",
                    isIconTrail: false,
                    widget: RichText(
                      text: TextSpan(
                        style: tajawalArabic(
                            size: 16,
                            color: Colors.black87,
                            fontWeight: FontWeight.bold),
                        children: [
                          TextSpan(
                            text: '1515',
                            style: numberStyle(
                                color: appColor,
                                size: 16,
                                fontWeight: FontWeight.bold),
                          ),
                          TextSpan(text: ' '),
                          TextSpan(text: 'ر.س'),
                        ],
                      ),
                    ),
                    isScreen: false),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: customListTileWidget(context,
                    icon: FontAwesomeIcons.car,
                    title: "عدد الطلبات",
                    isIconTrail: false,
                    widget: RichText(
                      text: TextSpan(
                        style: tajawalArabic(
                            size: 16,
                            color: Colors.black87,
                            fontWeight: FontWeight.bold),
                        children: [
                          TextSpan(
                            text: '15',
                            style: numberStyle(
                                color: appColor,
                                size: 16,
                                fontWeight: FontWeight.bold),
                          ),
                          TextSpan(text: ' '),
                          TextSpan(text: 'طلب'),
                        ],
                      ),
                    ),
                    isScreen: false),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: customListTileWidget(context,
                    icon: FontAwesomeIcons.cashRegister,
                    title: "بيانات الدفع",
                    widget: RichText(
                      text: TextSpan(
                        style: tajawalArabic(
                            size: 16,
                            color: Colors.black87,
                            fontWeight: FontWeight.bold),
                        children: [
                          TextSpan(
                            text: 'نقداً',
                            style: tajawalArabic(
                                color: appColor,
                                size: 16,
                                fontWeight: FontWeight.bold),
                          ),
                          TextSpan(text: ' '),
                          TextSpan(text: 'عند الاستلام'),
                        ],
                      ),
                    ),
                    isScreen: false,
                    isIconTrail: false),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: customListTileWidget(context,
                    icon: FontAwesomeIcons.language,
                    title: "إعدادات اللغة",
                    isIconTrail: true,
                    isScreen: false),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: customListTileWidget(context,
                    icon: Icons.star,
                    title: "التقييمات",
                    isIconTrail: true,
                    isScreen: true,
                    screen: CaptainRatingPage()),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: customListTileWidget(context,
                    icon: Icons.support_agent,
                    title: "مركز المساعدة",
                    isIconTrail: true,
                    isScreen: false),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: customListTileWidget(context,
                    isIconLead: false,
                    svgIcon: "assets/icons/privacy.svg",
                    title: "سياسة الخصوصية",
                    isIconTrail: true,
                    isScreen: false),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: customListTileWidget(
                  context,
                  icon: Icons.delete,
                  circleColor: Colors.red,
                  title: "حذف الحساب",
                  isIconTrail: true,
                  isScreen: false,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: customListTileToLogoutWidget(context,
                    icon: Icons.logout_rounded,
                    title: "تسجيل الخروج",
                    isIcon: true,
                    isScreen: true,
                    screen: LoginPage()),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
