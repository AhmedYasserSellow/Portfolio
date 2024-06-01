import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/app_colors.dart';
import 'package:portfolio/features/home/presentation/views/widgets/nav_bar_builder.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key, required this.axis});
  final Axis axis;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        color: AppColors.kcThird,
      ),
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: NavBarBuilder(axis: axis),
      ),
    );
  }
}
