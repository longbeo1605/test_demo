import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppIcons {
  static Widget icBriefcase({double size = 24, Color? color}) =>
      SvgPicture.asset(
        'assets/icons/ic_briefcase.svg',
        width: size,
        height: size,
        color: color,
      );

  static Widget icUnactiveBriefcase({double size = 24, Color? color}) =>
      SvgPicture.asset(
        'assets/icons/ic_unactive_briefcase.svg',
        width: size,
        height: size,
        color: color,
      );

  static Widget icProfile({double size = 24, Color? color}) =>
      SvgPicture.asset(
        'assets/icons/ic_profile.svg',
        width: size,
        height: size,
        color: color,
      );

  static Widget icActiveProfile({double size = 24, Color? color}) =>
      SvgPicture.asset(
        'assets/icons/ic_active_profile.svg',
        width: size,
        height: size,
        color: color,
      );

  static Widget icLanguage({double size = 24, Color? color}) =>
      SvgPicture.asset(
        'assets/icons/ic_language.svg',
        width: size,
        height: size,
        color: color,
      );

  static Widget icVietnam({double size = 24, Color? color}) =>
      SvgPicture.asset(
        'assets/icons/ic_vietnam.svg',
        width: size,
        height: size,
        color: color,
      );

  static Widget icUSA({double size = 24, Color? color}) =>
      SvgPicture.asset(
        'assets/icons/ic_eng.svg',
        width: size,
        height: size,
        color: color,
      );
}