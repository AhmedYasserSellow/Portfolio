import 'package:flutter/material.dart';
import 'package:portfolio/features/drawer/presentation/views/drawer.dart';
import 'package:portfolio/features/main/presentation/views/widgets/full_navigation_bar.dart';
import 'package:portfolio/features/main/presentation/views/widgets/pages_view.dart';

class MobileView extends StatelessWidget {
  const MobileView({
    super.key,
    required this.controller,
  });

  final PageController controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: FullNavigationBar(controller: controller),
      drawer: const SafeArea(
        child: CustomDrawer(),
      ),
      body: const PagesView(),
    );
  }
}
