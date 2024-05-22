import 'package:flutter/material.dart';

class ResponsiveDeisgner extends StatelessWidget {
  const ResponsiveDeisgner({
    super.key,
    required this.desktop,
    required this.mobile,
    required this.tablet,
  });

  final WidgetBuilder mobile;
  final WidgetBuilder tablet;
  final WidgetBuilder desktop;

  static bool isMobile(BuildContext context) {
    return MediaQuery.sizeOf(context).width < BreakPoints.tablet;
  }

  static bool isTablet(BuildContext context) {
    return MediaQuery.sizeOf(context).width < BreakPoints.desktop;
  }

  static bool isDesktop(BuildContext context) {
    return MediaQuery.sizeOf(context).width >= BreakPoints.desktop;
  }

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.sizeOf(context).width;
    if (width < BreakPoints.tablet) {
      return mobile(context);
    } else if (width < BreakPoints.desktop) {
      return tablet(context);
    } else {
      return desktop(context);
    }
  }
}

abstract class BreakPoints {
  static int tablet = 768;
  static int desktop = 1024;
}
