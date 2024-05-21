import 'package:flutter/material.dart';

class AdaptiveLayout extends StatelessWidget {
  const AdaptiveLayout({
    super.key,
    required this.desktopLayout,
    required this.mobileLayout,
    required this.tabletLayout,
    this.tablet = 600,
    this.desktop = 900,
  });

  final WidgetBuilder mobileLayout, tabletLayout, desktopLayout;
  final double tablet, desktop;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < tablet) {
          return mobileLayout(context);
        } else if (constraints.maxWidth < desktop) {
          return tabletLayout(context);
        } else {
          return desktopLayout(context);
        }
      },
    );
  }
}
