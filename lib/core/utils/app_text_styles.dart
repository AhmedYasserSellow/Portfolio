import 'package:flutter/material.dart';
import 'package:portfolio/core/extensions/responsive_text.dart';
import 'package:portfolio/core/utils/app_colors.dart';

abstract class AppTextStyles {
  // Text Styles start with [kts]
  static TextStyle ktsNormal(context) => TextStyle(
        color: AppColors.kcThird,
        fontSize: 14.toResponsiveFontSize(context),
      );
  static TextStyle ktsHeader(context) => TextStyle(
        color: AppColors.kcPrimary,
        fontSize: 14.toResponsiveFontSize(context),
        fontWeight: FontWeight.bold,
      );
  static TextStyle ktsMediumHeader(context) => TextStyle(
        color: AppColors.kcThird,
        fontSize: 24.toResponsiveFontSize(context),
        fontWeight: FontWeight.bold,
      );
  static TextStyle ktsBigHeader(context) => TextStyle(
        color: AppColors.kcPrimary,
        fontSize: 42.toResponsiveFontSize(context),
        fontWeight: FontWeight.bold,
      );
}
