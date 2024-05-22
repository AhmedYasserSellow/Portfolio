import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/app_images.dart';
import 'package:portfolio/core/widgets/responsive_designer.dart';
import 'package:portfolio/features/home/presentation/views/widgets/portfolio_details.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveDeisgner(
      desktop: (context) => const SizedBox(),
      mobile: (context) => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            Assets.imagesCv,
            width: 300,
          ),
          const PortfolioDetials()
        ],
      ),
      tablet: (context) => const SizedBox(),
    );
  }
}
