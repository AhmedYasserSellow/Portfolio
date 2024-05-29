import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio/features/achhievements/presentation/views/achievements_view.dart';
import 'package:portfolio/features/certifications/presentation/views/certifications_view.dart';
import 'package:portfolio/features/contact/presentation/views/contact_view.dart';
import 'package:portfolio/features/intro/presentation/views/intro_view.dart';
import 'package:portfolio/features/home/presentation/view_models/home_cubit/home_cubit.dart';
import 'package:portfolio/features/projects/presentation/views/projects_view.dart';

class PagesView extends StatelessWidget {
  const PagesView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: PageView(
          physics: const NeverScrollableScrollPhysics(),
          scrollDirection: Axis.vertical,
          controller: context.read<HomeCubit>().controller,
          // onPageChanged: context.read<HomeCubit>().changePageIndex,
          children: const [
            IntroView(),
            ProjectsView(),
            CertificationView(),
            AchievementsView(),
            ContactView(),
          ],
        ),
      ),
    );
  }
}
