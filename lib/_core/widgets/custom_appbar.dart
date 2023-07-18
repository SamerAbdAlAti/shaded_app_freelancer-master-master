import 'package:flutter/material.dart';
import '../functions/function.dart';

// // appbar without center a title
// AppBar defaultAppBar(context, String title, Widget widget, {double? height}) =>
//     AppBar(
//       automaticallyImplyLeading: false,
//       toolbarHeight: height != null ? height : 80,
//       leadingWidth: 20,
//       leading: IconButton(
//           onPressed: () => navAndFinish(context, widget),
//           icon: Icon(
//             Icons.arrow_back_ios,
//             size: 18,
//           )),
//       title: Text(title,
//           style: tajawalArabic(
//               size: 18, fontWeight: FontWeight.bold, color: Colors.black87)),
//     );

// appbar without center a title
AppBar defaultAppBar(context, String title, {double? height, bool isIcon = true, Widget? widget}) =>
    AppBar(
      automaticallyImplyLeading: false,
      toolbarHeight: height != null ? height : 80,
      leadingWidth: 20,
      leading: isIcon == true ? IconButton(
          onPressed: () => navAndFinish(context, widget),
          icon: Icon(
            Icons.arrow_back_ios,
            size: 18,
          )) : null,
      title: Text(title,
          style: tajawalArabic(
              size: 18, fontWeight: FontWeight.bold, color: Colors.black87)),
    );

// appbar with center a title
AppBar appBarWithCenterTitle(context, String title, Widget widget,
        {double? height, bool isIcon = true}) =>
    AppBar(
      automaticallyImplyLeading: false,
      toolbarHeight: height != null ? height : 120,
      centerTitle: true,
      leading: isIcon == true ? IconButton(
          onPressed: () => navAndFinish(context, widget),
          icon: Icon(
            Icons.arrow_back_ios,
            size: 18,
          )) : null,
      title: Text(title,
          style: tajawalArabic(
              size: 18, fontWeight: FontWeight.bold, color: Colors.black87)),
    );
