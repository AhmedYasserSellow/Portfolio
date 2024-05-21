import 'package:flutter/material.dart';
import 'package:portfolio/core/layouts/widgets/adaptive_layout.dart';
import 'package:portfolio/core/layouts/widgets/desktop_layout.dart';
import 'package:portfolio/core/layouts/widgets/mobile_layout.dart';
import 'package:portfolio/core/layouts/widgets/tablet_layout.dart';
import 'package:portfolio/core/utils/size_config.dart';

class MainView extends StatelessWidget {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    return AdaptiveLayout(
      desktop: SizeConfig.desktop,
      tablet: SizeConfig.tablet,
      desktopLayout: (context) => const DesktopLayout(),
      mobileLayout: (context) => const MobileLayout(),
      tabletLayout: (context) => const TabletLayout(),
    );
  }
}
