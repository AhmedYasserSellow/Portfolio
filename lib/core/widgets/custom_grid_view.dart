import 'package:flutter/material.dart';
import 'package:portfolio/core/widgets/adaptive_layout.dart';

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
          childAspectRatio: 1.2,
          crossAxisCount: AdaptiveLayout.isMobile(context)
              ? 1
              : AdaptiveLayout.isTablet(context)
                  ? 2
                  : 3,
        ),
        itemBuilder: itemBuilder,
      ),
    );
  }
}
