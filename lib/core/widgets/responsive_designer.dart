import 'package:flutter/material.dart';

class ResponsiveDeisgner extends StatelessWidget {
  const ResponsiveDeisgner({
    super.key,
    required this.desktop,
    required this.mobile,
    required this.tablet,
    this.largeDesktop,
    this.largeMobile,
  });

  final WidgetBuilder mobile;
  final WidgetBuilder tablet;
  final WidgetBuilder desktop;
  final WidgetBuilder? largeDesktop, largeMobile;

  static bool isMobile(BuildContext context) {
    return MediaQuery.sizeOf(context).width < BreakPoints.largeMobile;
  }

  static bool isLargeMobile(BuildContext context) {
    return MediaQuery.sizeOf(context).width < BreakPoints.tablet;
  }

  static bool isTablet(BuildContext context) {
    return MediaQuery.sizeOf(context).width < BreakPoints.desktop;
  }

  static bool isDesktop(BuildContext context) {
    return MediaQuery.sizeOf(context).width < BreakPoints.mediumDesktop;
  }

  static bool isMediumDesktop(BuildContext context) {
    return MediaQuery.sizeOf(context).width < BreakPoints.largeDesktop;
  }

  static bool isLargeDesktop(BuildContext context) {
    return MediaQuery.sizeOf(context).width >= BreakPoints.largeDesktop;
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final double width = MediaQuery.sizeOf(context).width;
        if (width < BreakPoints.largeMobile) {
          return mobile(context);
        } else if (width < BreakPoints.tablet) {
          if (largeMobile != null) {
            return largeMobile!(context);
          } else {
            return mobile(context);
          }
        } else if (width < BreakPoints.desktop) {
          return tablet(context);
        } else if (width <= BreakPoints.largeDesktop) {
          return desktop(context);
        } else {
          if (largeDesktop != null) {
            return largeDesktop!(context);
          } else {
            return desktop(context);
          }
        }
      },
    );
  }
}

abstract class BreakPoints {
  static int largeMobile = 512;
  static int tablet = 768;
  static int desktop = 1024;
  static int mediumDesktop = 1208;
  static int largeDesktop = 1436;
}
