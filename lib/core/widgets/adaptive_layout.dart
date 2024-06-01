import 'package:flutter/material.dart';

class AdaptiveLayout extends StatelessWidget {
  const AdaptiveLayout({
    super.key,
    required this.desktop,
    required this.mobile,
    this.tablet,
    // this.largeDesktop,
    // this.largeMobile,
  });

  final WidgetBuilder mobile;
  final WidgetBuilder? tablet;
  final WidgetBuilder desktop;
  // final WidgetBuilder? largeDesktop, largeMobile;

  static bool isMobile(BuildContext context) {
    return MediaQuery.sizeOf(context).width < BreakPoints.tablet;
  }

  // static bool isLargeMobile(BuildContext context) {
  //   return MediaQuery.sizeOf(context).width < BreakPoints.tablet;
  // }

  static bool isTablet(BuildContext context) {
    return MediaQuery.sizeOf(context).width < BreakPoints.desktop;
  }

  static bool isDesktop(BuildContext context) {
    return MediaQuery.sizeOf(context).width >= BreakPoints.desktop;
  }

  // static bool isMediumDesktop(BuildContext context) {
  //   return MediaQuery.sizeOf(context).width < BreakPoints.largeDesktop;
  // }

  // static bool isLargeDesktop(BuildContext context) {
  //   return MediaQuery.sizeOf(context).width >= BreakPoints.largeDesktop;
  // }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final double width = MediaQuery.sizeOf(context).width;
        if (width < BreakPoints.desktop) {
          return mobile(context);
        } else {
          return desktop(context);
        }
      },
    );
  }
}

abstract class BreakPoints {
  static int tablet = 768;
  static int desktop = 1024;
}
