import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio/core/extensions/seperator.dart';
import 'package:portfolio/features/drawer/presentation/views/drawer.dart';
import 'package:portfolio/features/home/presentation/view_models/home_cubit/home_cubit.dart';
import 'package:portfolio/features/home/presentation/views/widgets/drawer_opener.dart';
import 'package:portfolio/features/home/presentation/views/widgets/follow_me.dart';
import 'package:portfolio/features/home/presentation/views/widgets/pages_view.dart';
import 'package:portfolio/features/home/presentation/views/widgets/vertical_nav_bar.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        return Scaffold(
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
