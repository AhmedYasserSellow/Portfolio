import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio/core/widgets/responsive_designer.dart';
import 'package:portfolio/features/certifications/presentation/views/certifications_view.dart';
import 'package:portfolio/features/drawer/presentation/views/drawer.dart';
import 'package:portfolio/features/home/presentation/views/home_view.dart';
import 'package:portfolio/features/main/presentation/view_models/main_cubit/main_cubit.dart';
import 'package:portfolio/features/main/presentation/views/widgets/custom_navigation_bar.dart';
import 'package:portfolio/features/main/presentation/views/widgets/desktop_view.dart';
import 'package:portfolio/features/main/presentation/views/widgets/drawer_opener.dart';
import 'package:portfolio/features/projects/presentation/views/projects_view.dart';

class MainView extends StatelessWidget {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MainCubit, MainState>(
      builder: (context, state) {
        MainCubit mainCubit = context.read<MainCubit>();
        return ResponsiveDeisgner(
          desktop: (context) {
            return const DesktopView();
          },
          mobile: (context) {
            return Scaffold(
              drawer: const SafeArea(
                child: CustomDrawer(),
              ),
              body: SafeArea(
                child: Center(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          const DrawerOpener(),
                          CustomNavigationBar(
                            controller: mainCubit.controller,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          child: PageView(
                            physics: const NeverScrollableScrollPhysics(),
                            scrollDirection: Axis.vertical,
                            controller: context.read<MainCubit>().controller,
                            children: const [
                              HomeView(),
                              ProjectsView(),
                              CertificationView(),
                              // Achievements(),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
          tablet: (context) {
            return const SizedBox();
          },
        );
      },
    );
  }
}
