import 'package:flutter/material.dart';
import 'package:portfolio/core/widgets/responsive_designer.dart';
import 'package:portfolio/features/home/presentation/views/widgets/animated_dart_window.dart';
import 'package:portfolio/features/home/presentation/views/widgets/cv.dart';
import 'package:portfolio/features/home/presentation/views/widgets/portfolio_details.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: ResponsiveDeisgner(
          desktop: (context) => const Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              PortfolioDetials(),
              SizedBox(
                width: 16,
              ),
              StackedDartWindow(),
            ],
          ),
          mobile: (context) => const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CV(),
              PortfolioDetials(),
            ],
          ),
          tablet: (context) => const FittedBox(
            child: Row(
              children: [
                PortfolioDetials(),
                CV(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
