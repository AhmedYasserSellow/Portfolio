import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  const Responsive({
    super.key,
    required this.desktop,
    this.largeMobile,
    required this.mobile,
    required this.tablet,
    this.extraLargeScreen,
    this.mobileBreakPoint = 500,
    this.largeMobileBreakPoint = 700,
    this.tabletBreakPoint = 1000,
    this.desktopBreakPoint = 1024,
    this.largeDekstopBreakPoint = 1400,
  });

  final WidgetBuilder mobile;
  final WidgetBuilder? largeMobile;
  final WidgetBuilder tablet;
  final WidgetBuilder desktop;
  final WidgetBuilder? extraLargeScreen;
  final int largeMobileBreakPoint,
      mobileBreakPoint,
      tabletBreakPoint,
      desktopBreakPoint,
      largeDekstopBreakPoint;
  static bool isMobile(BuildContext context) {
    return MediaQuery.sizeOf(context).width <= 500;
  }

  static bool isLargeMobile(BuildContext context) {
    return MediaQuery.sizeOf(context).width <= 700;
  }

  static bool isTablet(BuildContext context) {
    return MediaQuery.sizeOf(context).width < 1080;
  }

  static bool isDesktop(BuildContext context) {
    return MediaQuery.sizeOf(context).width > 1024;
  }

  static bool isExtraLargeScreen(BuildContext context) {
    return MediaQuery.sizeOf(context).width > 1400;
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    if (size.width > 1400 && extraLargeScreen != null) {
      return extraLargeScreen!(context);
    } else if (size.width >= 1080) {
      return desktop(context);
    } else if (size.width >= 700) {
      return tablet(context);
    } else if (size.width >= 500 && largeMobile != null) {
      return largeMobile!(context);
    } else {
      return mobile(context);
    }
  }
}
