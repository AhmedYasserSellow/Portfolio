import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio/features/certifications/presentation/views/certifications_view.dart';
// import 'package:portfolio/features/drawer/presentation/views/drawer.dart';
import 'package:portfolio/features/main/presentation/view_models/main_cubit/main_cubit.dart';
import 'package:portfolio/features/main/presentation/views/widgets/app_bar.dart';
import 'package:portfolio/features/home/presentation/views/home_view.dart';
import 'package:portfolio/features/projects/presentation/views/projects_view.dart';

class MainView extends StatelessWidget {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MainCubit, MainState>(
      builder: (context, state) {
        return Scaffold(
          appBar: CustomAppBar(
            controller: context.read<MainCubit>().controller,
          ),
          body: PageView(
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
        );
      },
    );
    // return const Scaffold(
    //   body: Row(
    //     children: [
    //       PortfolioDrawer(),
    //       Expanded(
    //         child: MainView(),
    //       ),
    //       // MainBody(),
    //     ],
    //   ),
    // );
  }
}
