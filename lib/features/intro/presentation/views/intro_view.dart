import 'package:flutter/material.dart';
import 'package:portfolio/core/widgets/responsive_designer.dart';
import 'package:portfolio/features/intro/presentation/views/widgets/code_block.dart';
import 'package:portfolio/features/intro/presentation/views/widgets/portfolio_details.dart';

class IntroView extends StatelessWidget {
  const IntroView({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return Center(
      child: SingleChildScrollView(
        child: width < BreakPoints.desktop
            ? const Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CodeBlock(),
                  SizedBox(
                    height: 16,
                  ),
                  PortfolioDetials(),
                ],
              )
            : const Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  PortfolioDetials(),
                  SizedBox(
                    width: 16,
                  ),
                  CodeBlock(),
                ],
              ),
      ),
    );
  }
}
