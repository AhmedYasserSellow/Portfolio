import 'package:flutter/material.dart';
import 'package:portfolio/features/drawer/presentation/views/drawer.dart';
import 'package:portfolio/features/home/presentation/views/home_view.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Row(
        children: [
          PortfolioDrawer(),
          Expanded(
            child: HomeView(),
          ),
          // MainBody(),
        ],
      ),
    );
  }
}
