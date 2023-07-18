import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../generated/assets.dart';

Widget createSocialMediaCircleWidget() => Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          radius: 20,
          child: SvgPicture.asset(Assets.iconsApple),
        ),
        SizedBox(
          width: 20.0,
        ),
        CircleAvatar(
          radius: 20,
          child: SvgPicture.asset(Assets.iconsFacbook),
        ),
        SizedBox(
          width: 20.0,
        ),
        CircleAvatar(
          radius: 20,
          child: SvgPicture.asset(Assets.iconsGoogle),
        )
      ],
    );
