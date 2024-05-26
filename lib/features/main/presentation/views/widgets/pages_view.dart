import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio/features/achhievements/presentation/views/achievements_view.dart';
import 'package:portfolio/features/certifications/presentation/views/certifications_view.dart';
import 'package:portfolio/features/contact/presentation/views/contact_view.dart';
import 'package:portfolio/features/home/presentation/views/home_view.dart';
import 'package:portfolio/features/main/presentation/view_models/main_cubit/main_cubit.dart';
import 'package:portfolio/features/projects/presentation/views/projects_view.dart';

class PagesView extends StatelessWidget {
  const PagesView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Expanded(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: PageView(
            physics: const NeverScrollableScrollPhysics(),
            scrollDirection: Axis.vertical,
            controller: context.read<MainCubit>().controller,
            children: const [
              HomeView(),
              ProjectsView(),
              CertificationView(),
              AchievementsView(),
              ContactView(),
            ],
          ),
        ),
      ),
    );
  }
}
