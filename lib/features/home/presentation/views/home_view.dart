import 'package:flutter/material.dart';
import 'package:portfolio/core/widgets/responsive_designer.dart';
import 'package:portfolio/features/home/presentation/views/widgets/code_block.dart';
import 'package:portfolio/features/home/presentation/views/widgets/portfolio_details.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return Center(
      child: SingleChildScrollView(
        child: width < BreakPoints.desktop
            ? Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  addStack(
                    const CodeBlock(),
                    350,
                    200,
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  const PortfolioDetials(),
                ],
              )
            : Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const PortfolioDetials(),
                  const SizedBox(
                    width: 16,
                  ),
                  addStack(
                    const CodeBlock(),
                    350,
                    200,
                  ),
                ],
              ),
      ),
    );
  }
}
