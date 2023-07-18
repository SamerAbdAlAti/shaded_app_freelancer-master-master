import 'package:flutter/material.dart';
import 'package:shaded_app_freelancer/_core/functions/function.dart';
import 'package:shaded_app_freelancer/features/user/layout/presentation/pages/layout_screen.dart';
import 'package:shaded_app_freelancer/_core/widgets/custom_list_tile_widget.dart';
import 'package:shaded_app_freelancer/generated/assets.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 120,
        centerTitle: true,
        leading: IconButton(
            onPressed: () => navTo(context, UserHomeLayout()),
            icon: Icon(
              Icons.arrow_back_ios,
              size: 18,
            )),
        title: Text("الإشعارات",
            style: tajawalArabic(
                size: 18, fontWeight: FontWeight.bold, color: Colors.black87)),
      ),
      body: Center(
        child: Column(
          children: [
            customListTileWidgetWithDescription(context,
                // icon: Icons.notifications_none_rounded,
                isSvg: true,
                svgIcon: Assets.iconsCheckListDone,
                circleColor: Color.fromRGBO(242, 216, 216, 1),
                title: "طلبك رقم 068031 يتم تنفيذه الآن \nنقل البضائع من مكة المكرمة الى الرياض",
                isIcon: false,
                widget: Icon(Icons.more_horiz),
                isScreen: false,
                description: 'الآن'),
            customListTileWidgetWithDescription(context,
                // icon: Icons.notifications_none_rounded,
                isSvg: true,
                svgIcon: Assets.iconsNotification,
                circleColor: Color.fromRGBO(204, 232, 244, 1),
                title: "لقد تم الانتهاء من طلب رقم 068031 \nيرجى تقييم الخدمة",
                isIcon: false,
                widget: Icon(Icons.more_horiz),
                iconColor: Colors.blue,
                isScreen: false,
                description: 'منذ 20 دقيقة'),
            customListTileWidgetWithDescription(context,
                // icon: Icons.notifications_none_rounded,
                isSvg: true,
                svgIcon: Assets.iconsGroup,
                circleColor: Color.fromRGBO(241, 241, 241, 1),
                title: "جاري تنفيذ طلبك رقم 345466 \nبرجاء مراجعة مزود الخدمة",
                isIcon: false,
                widget: Icon(Icons.more_horiz),
                isScreen: false,
                description: 'منذ ساعة'),
          ],
        ),
      ),
    );
  }
}
