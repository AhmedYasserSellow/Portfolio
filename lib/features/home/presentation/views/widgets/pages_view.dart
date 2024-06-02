import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio/features/certifications/presentation/views/certifications_view.dart';
import 'package:portfolio/features/contact/presentation/views/contact_view.dart';
import 'package:portfolio/features/intro/presentation/views/intro_view.dart';
import 'package:portfolio/features/home/presentation/view_models/home_cubit/home_cubit.dart';
import 'package:portfolio/features/projects/presentation/views/projects_view.dart';

class PagesView extends StatelessWidget {
  const PagesView({
    super.key,
    required this.scrollDirection,
  });
  final Axis scrollDirection;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: scrollDirection == Axis.horizontal
          ? EdgeInsets.zero
          : const EdgeInsets.symmetric(
              horizontal: 8,
            ),
      child: Center(
        child: PageView(
          physics: const NeverScrollableScrollPhysics(),
          scrollDirection: scrollDirection,
          controller: context.read<HomeCubit>().pageController,
          children: const [
            IntroView(),
            ProjectsView(),
            CertificationView(),
            ContactView(),
          ],
        ),
      ),
    );
  }
}
