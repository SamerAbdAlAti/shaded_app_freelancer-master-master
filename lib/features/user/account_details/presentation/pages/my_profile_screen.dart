import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shaded_app_freelancer/_core/theme.dart';
import 'package:shaded_app_freelancer/_core/widgets/build_button.dart';
import 'package:shaded_app_freelancer/features/user/account_details/presentation/pages/privacy_policies_screen.dart';
import 'package:shaded_app_freelancer/features/user/payment/presentation/pages/payment_screen.dart';

import '../../../../../_core/functions/function.dart';
import '../../../../../_core/widgets/custom_list_tile_widget.dart';
import '../../../../authentication/presentation/pages/login_screen.dart';
import 'edit_profile_screen.dart';

class UserMyProfilePage extends StatelessWidget {
  const UserMyProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
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
                          child: Icon(Icons.person, size: 90.0),
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
                      "محمد عبدالله",
                      style:
                          tajawalArabic(size: 20, fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: customListTileWidget(context,
                    icon: Icons.account_circle,
                    title: "المعلومات الشخصية",
                    isIconTrail: true,
                    isScreen: true,
                    screen: EditUserProfile()),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: customListTileWidget(context,
                    icon: Icons.account_circle,
                    title: "الكوبون",
                    isIconTrail: false,
                    widget: buildButton(
                        width: 120,
                        hight: 40,
                        color: Color.fromRGBO(249, 249, 249, 1),
                        name: "إضافة كوبون",
                        function: () => navTo(context, PaymentPage()),
                        colorName: appColor),
                    isScreen: false),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: customListTileWidget(context,
                    icon: Icons.account_circle,
                    title: "بيانات الدفع",
                    isIconTrail: true,
                    isScreen: false),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: customListTileWidget(context,
                    icon: Icons.account_circle,
                    title: "إعدادات اللغة",
                    isIconTrail: true,
                    isScreen: false),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: customListTileWidget(context,
                    icon: Icons.account_circle,
                    title: "مركز المساعدة",
                    isIconTrail: true,
                    isScreen: false),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  // onTap: ()=> luncher,
                  child: customListTileWidget(
                    context,
                    icon: Icons.account_circle,
                    title: "سياسة الخصوصية",
                    isIconTrail: true,
                    isScreen: true,
                    screen: PrivacyPolicyPage(),
                  ),
                ),
              ),
              // Padding(
              //     padding: const EdgeInsets.all(8.0),
              //     child: customListTile(context,
              //         icon: Icons.logout_rounded,
              //         title: "تسجيل الخروج",
              //         isIcon: true,
              //         isScreen: true,
              //         screen: LoginPage())),
              Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: customListTileToLogoutWidget(context,
                      icon: Icons.logout_rounded,
                      title: "تسجيل الخروج",
                      isIcon: true,
                      isScreen: true,
                      screen: LoginPage())),
            ],
          ),
        ),
      ),
    );
  }
}
