import 'package:flutter/material.dart';
import 'package:portfolio/features/drawer/presentation/views/drawer.dart';
import 'package:portfolio/features/main/presentation/views/widgets/custom_navigation_bar.dart';
import 'package:portfolio/features/main/presentation/views/widgets/pages_view.dart';

class DesktopView extends StatelessWidget {
  const DesktopView({
    super.key,
    required this.controller,
  });
  final PageController controller;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          const Expanded(
            child: CustomDrawer(),
          ),
          Expanded(
            flex: 3,
            child: Scaffold(
              appBar: PreferredSize(
                  preferredSize: Size.copy(AppBar().preferredSize),
                  child: Center(
                    child: CustomNavigationBar(
                      controller: controller,
                    ),
                  )),
              body: const PagesView(),
            ),
          ),
        ],
      ),
    );
  }
}
