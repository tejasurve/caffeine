/*
 * Created on Fri May 17 2024
 * Created by Tejas Surve
 *
 * Copyright (c) Tejas Surve
 */

import 'package:caffeine_app/common-widget/layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomIcon extends StatelessWidget {
  final CustomIconProps customIconProps;
  const CustomIcon({
    Key? key,
    required this.customIconProps,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      customIconProps.path,
      width: rSize(context, customIconProps.width),
      height: rSize(context, customIconProps.height),
      colorFilter: customIconProps.iconColor != null
          ? ColorFilter.mode(
              customIconProps.iconColor!,
              BlendMode.srcIn,
            )
          : null,
    );
  }
}

class CustomIconProps {
  final String path;
  final Color? iconColor;
  final double width;
  final double height;
  CustomIconProps({
    this.path = '',
    this.iconColor,
    this.width = 20,
    this.height = 20,
  });
}
