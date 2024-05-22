import 'package:flutter/material.dart';
import 'package:portfolio/features/main/presentation/views/widgets/navigation_text_button.dart';

class CustomNavigationBar extends StatelessWidget {
  const CustomNavigationBar({super.key, required this.controller});
  final PageController controller;
  static const List<String> navigstionList = [
    'Home',
    'Projects',
    'Certifications',
    'Achievements',
  ];
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(
        navigstionList.length,
        (index) => NavigationTextButton(
          text: navigstionList[index],
          controller: controller,
          index: index,
        ),
      ),
    );
  }
}
