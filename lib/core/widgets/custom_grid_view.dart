import 'package:flutter/material.dart';
import 'package:portfolio/core/widgets/responsive_designer.dart';

class CustomGridView extends StatelessWidget {
  const CustomGridView({
    super.key,
    required this.itemCount,
    required this.itemBuilder,
  });

  final int itemCount;
  final Widget Function(BuildContext context, int index) itemBuilder;
  @override
  Widget build(BuildContext context) {
    return ScrollConfiguration(
      behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
      child: GridView.builder(
        itemCount: itemCount,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisSpacing: 16,
          mainAxisSpacing: 8,
          childAspectRatio: ResponsiveDeisgner.isMobile(context)
              ? 1.8 // Mobile Aspect Ratio
              : ResponsiveDeisgner.isLargeMobile(context)
                  ? 1.55 // Large Mobile Aspect Ratio
                  : ResponsiveDeisgner.isTablet(context)
                      ? 1.5 // Tablet Aspect Ratio
                      : ResponsiveDeisgner.isDesktop(context)
                          ? 1.1 // Dekstop Aspect Ratio
                          : 1.2, // Large Desktop Aspect Ratio

          crossAxisCount: ResponsiveDeisgner.isMobile(context)
              ? 1
              : ResponsiveDeisgner.isLargeMobile(context)
                  ? 2
                  : ResponsiveDeisgner.isTablet(context)
                      ? 3
                      : ResponsiveDeisgner.isDesktop(context)
                          ? 4
                          : 5,
        ),
        itemBuilder: itemBuilder,
      ),
    );
  }
}
