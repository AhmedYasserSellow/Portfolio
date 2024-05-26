import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio/core/extensions/seperator.dart';
import 'package:portfolio/core/widgets/gradient_background_scaffold.dart';
import 'package:portfolio/features/drawer/presentation/views/drawer.dart';
import 'package:portfolio/features/main/presentation/view_models/main_cubit/main_cubit.dart';
import 'package:portfolio/features/main/presentation/views/widgets/drawer_opener.dart';
import 'package:portfolio/features/main/presentation/views/widgets/follow_me.dart';
import 'package:portfolio/features/main/presentation/views/widgets/pages_view.dart';
import 'package:portfolio/features/main/presentation/views/widgets/vertical_nav_bar.dart';

class MainView extends StatelessWidget {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MainCubit, MainState>(
      builder: (context, state) {
        return GradientBackgroundScaffold(
          drawer: const CustomDrawer(),
          body: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
            ),
            child: Row(
              children: [
                const DrawerOpener(),
                const FollowMe(),
                const Expanded(
                  child: PagesView(),
                ),
                const VerticalNavigationBar(),
              ]
                  .seperator(
                    const SizedBox(
                      width: 8,
                    ),
                  )
                  .toList(),
            ),
          ),
        );
      },
    );
  }
}
