import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shaded_app_freelancer/_core/functions/function.dart';
import 'package:shaded_app_freelancer/_core/theme.dart';

// default list tile for app
Widget customListTileWidget(context,
        {required String title,
        required bool isIconTrail,
        required bool isScreen,
        bool isIconLead = true,
        IconData? icon,
        Color? iconColor,
        String? svgIcon,
        Widget? widget,
        Color? circleColor,
        Widget? screen}) =>
    ListTile(
      leading: CircleAvatar(
        radius: 24,
        backgroundColor: circleColor == null ? appColor : circleColor,
        child: isIconLead
            ? Center(
                child: Icon(
                  icon,
                  color: iconColor ?? Colors.white,
                  size: 25,
                ),
              )
            : SvgPicture.asset(svgIcon!,
                fit: BoxFit.cover,
                height: 14.0,
                width: 14.0,
                color: Colors.white),
      ),
      title: Text(title,
          style: tajawalArabic(
              color: Colors.black, fontWeight: FontWeight.w400, size: 16.0)),
      trailing: isIconTrail
          ? Icon(
              Icons.arrow_forward_ios,
              color: Color.fromRGBO(102, 102, 102, 1),
              size: 16,
            )
          : widget,
      onTap: () => isScreen ? navTo(context, screen) : null,
    );

// list tile to show bottom sheet
Widget customListTileAndShowBottomSheetWidget(context,
        {required IconData icon,
        required String title,
        required String trailing,
        required Widget widget,
        required double height}) =>
    ListTile(
      leading: CircleAvatar(
          radius: 24,
          backgroundColor: appColor,
          child: Icon(
            icon,
            color: Colors.white,
            size: 28,
          )),
      title: Text(title,
          style: tajawalArabic(
              color: Colors.black, fontWeight: FontWeight.w400, size: 16.0)),
      trailing: Text(trailing,
          style: tajawalArabic(
              color: Colors.black, fontWeight: FontWeight.w400, size: 16.0)),
      onTap: () => showModalBottomSheet<void>(
        context: context,
        isScrollControlled: true,
        isDismissible: true,
        enableDrag: true,
        builder: (context) {
          return DraggableScrollableSheet(
            expand: false,
            initialChildSize: 0.4,
            minChildSize: 0.2,
            maxChildSize: 0.6,
            builder: (context, scrollController) => Container(
              height: height,
              child: widget,
            ),
          );
        },
      ),
    );

// list tile without icon circle
Widget customListTileWidgetWithoutCircle(context,
        {required IconData icon,
        required String title,
        required Color color,
        required bool isIcon,
        required bool isScreen,
        Widget? widget,
        Widget? screen}) =>
    ListTile(
      leading: Icon(
        icon,
        color: color,
        size: 28,
      ),
      title: Text(title,
          style: tajawalArabic(
              color: Colors.black, fontWeight: FontWeight.w400, size: 16.0)),
      trailing: isIcon
          ? Icon(
              Icons.arrow_forward_ios,
              color: Color.fromRGBO(102, 102, 102, 1),
              size: 16,
            )
          : widget,
      onTap: () => isScreen ? navTo(context, screen) : null,
    );

// list tile with description
Widget customListTileWidgetWithDescription(context,
        {required String title,
        required String description,
        required bool isIcon,
        required bool isScreen,
        Color? circleColor,
        IconData? icon,
        bool isSvg = true,
        required String svgIcon,
        Color? iconColor,
        Widget? widget,
        Widget? screen}) =>
    ListTile(
      leading: CircleAvatar(
          radius: 24,
          backgroundColor: circleColor == null ? appColor : circleColor,
          child: isSvg
              ? Center(child: SvgPicture.asset(svgIcon))
              : Icon(
                  icon!,
                  color: circleColor == null ? Colors.white : iconColor,
                  size: 28,
                )),
      title: Text(title,
          style: tajawalArabic(
              color: Colors.black, fontWeight: FontWeight.w600, size: 13.0)),
      subtitle: Text(description,
          style: tajawalArabic(
              color: Colors.black, fontWeight: FontWeight.w200, size: 10.0)),
      trailing: isIcon
          ? Icon(
              Icons.arrow_forward_ios,
              color: Color.fromRGBO(102, 102, 102, 1),
              size: 16,
            )
          : widget,
      onTap: () => isScreen ? navTo(context, screen) : null,
    );

// list tile to logout the account
Widget customListTileToLogoutWidget(context,
        {required IconData icon,
        required String title,
        required bool isIcon,
        required bool isScreen,
        Color? circleColor,
        Widget? widget,
        Widget? screen}) =>
    ListTile(
      leading: CircleAvatar(
          radius: 24,
          backgroundColor: circleColor == null ? appColor : circleColor,
          child: Icon(
            icon,
            color: Colors.white,
            size: 28,
          )),
      title: Text(title,
          style: tajawalArabic(
              color: Colors.black, fontWeight: FontWeight.w400, size: 16.0)),
      trailing: isIcon
          ? Icon(
              Icons.arrow_forward_ios,
              color: Color.fromRGBO(102, 102, 102, 1),
              size: 16,
            )
          : widget,
      onTap: () => isScreen ? navAndFinish(context, screen) : null,
    );
